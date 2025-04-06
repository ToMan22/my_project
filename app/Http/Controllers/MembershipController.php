<?php

namespace App\Http\Controllers;

use App\Membership;
use App\MembershipCreator;
use App\Model\Subscription;
use App\Model\Transaction;
use App\Providers\NotificationServiceProvider;
use App\User;
use DateTime;
use DateTimeZone;
use Illuminate\Http\RedirectResponse;
use App\Providers\PaymentsServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MembershipController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return view('pages.membership');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request): RedirectResponse
    {
        // checking if this is creator
        if (auth()->user()->isVerified(auth()->user())) {

            // checking if already a member
            if (MembershipCreator::where('creator_id', auth()->user()->id)->where('status', 'active')->exists()) {
                return redirect()->back()->with('error', 'You are already a member');
            }
            // add this creator in the list
            $membership = MembershipCreator::firstOrCreate([
                'creator_id' => auth()->user()->id,
                'status' => 'active'
            ]);

            if ($membership->wasRecentlyCreated) {
                // return response
                return redirect()->back()->with('success', 'You Successfully Joined the membership');
            } else {
                // return response
                return redirect()->back()->with('success', 'You Successfully Rejoined the membership');
            }
        } else {
            // user membership

            $membership_fees = getSetting('site.membership_price');
            // checking if user has enough balance
            if (auth()->user()->wallet->total < $membership_fees) {
                return redirect()->route('my.settings', ['type' => 'wallet'])->with('error', 'You do not have enough balance to join the membership, please add balance first');
            }
            // checking if this user is already a member
            if (Membership::where('user_id', auth()->id())->where('status', 'active')->exists()) {
                return redirect()->back()->with('error', 'You are already a member');
            }

            DB::transaction(function () use ($membership_fees) {
                $membership = Membership::firstOrCreate([
                    'user_id' => auth()->id(),
                    'amount' => $membership_fees,
                    'status' => 'active',
                    'start_date' => now()->today(),
                    'end_date' => now()->addMonth()
                ]);

                // adding transaction history
                $transaction = new Transaction();
                $transaction->sender_user_id = auth()->id();
                $transaction->recipient_user_id = null;
                $transaction->type = Transaction::MONTHLY_MEMBERSHIP;
                $transaction->status = Transaction::APPROVED_STATUS;
                $transaction->amount = $membership_fees;
                $transaction->currency = config('app.site.currency_code');
                $transaction->payment_provider = Transaction::CREDIT_PROVIDER;
                $transaction->subscription_id = null;
                $transaction->save();

                $user = User::find(auth()->id());

                // adjust user balance
                $user->wallet->update(['total' => $user->wallet->total - $membership_fees]);

                // activating all subscription membership
                $allActiveMembershipCreators = MembershipCreator::where('status', 'active')->get();
                $totalAttachments = $allActiveMembershipCreators->sum(function ($creator) {
                    return $creator->creator->attachments()->count(); // Assuming attachments() is the relationship to get creator's attachments
                });
                $totalAmount = $membership_fees;
                $totalCommissionToShareCreators = getSetting('site.membership_creator_share');
                $netAmountToDestributeToCreators = $totalAmount * $totalCommissionToShareCreators / 100;
                if ($netAmountToDestributeToCreators > 0) {
                    foreach ($allActiveMembershipCreators as $creator) {

                        // Calculate the creator's share based on their attachments
                        $creatorAttachments = $creator->creator->attachments()->count();
                        $creatorWeight = $creatorAttachments / $totalAttachments;
                        $creatorEarnings = $netAmountToDestributeToCreators * $creatorWeight;

                        $subscription = new Subscription();
                        $subscription->recipient_user_id = $creator->creator_id;
                        $subscription->sender_user_id = $transaction->sender_user_id;
                        $subscription->provider = $transaction->payment_provider;
                        $subscription->type = Transaction::ONE_MONTH_SUBSCRIPTION;
                        $subscription->status = Subscription::ACTIVE_STATUS;
                        $subscription->expires_at = new DateTime('+' . PaymentsServiceProvider::getSubscriptionMonthlyIntervalByTransactionType($transaction->type) . ' ' . 'month', new DateTimeZone('UTC'));;
                        $subscription->save();

                        NotificationServiceProvider::createNewSubscriptionNotification($subscription);

                        // adding balance share to this creator account
                        $transaction = new Transaction();
                        $transaction->sender_user_id = auth()->id();
                        $transaction->recipient_user_id = $creator->creator_id;
                        $transaction->type = Transaction::MONTHLY_MEMBERSHIP;
                        $transaction->status = Transaction::APPROVED_STATUS;
                        $transaction->amount = $creatorEarnings;
                        $transaction->currency = config('app.site.currency_code');
                        $transaction->payment_provider = Transaction::CREDIT_PROVIDER;
                        $transaction->subscription_id = null;
                        $transaction->save();

                        $creator->creator->wallet->update(['total' => $creator->creator->wallet->total + $creatorEarnings]);
                    }
                }
            });

            return redirect()->back()->with('success', 'You Successfully Joined the membership');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // deactivate this user membership
        MembershipCreator::where('creator_id', $id)->update([
            'status' => 'inactive'
        ]);

        // return response
        return redirect()->back()->with('success', 'You Successfully Left the membership');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
