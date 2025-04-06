-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2025 at 03:44 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u797693499_tgirlonly`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` char(36) NOT NULL,
  `filename` text NOT NULL,
  `driver` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coconut_id` varchar(191) DEFAULT NULL,
  `has_thumbnail` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_request_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `filename`, `driver`, `type`, `user_id`, `post_id`, `message_id`, `coconut_id`, `has_thumbnail`, `created_at`, `updated_at`, `payment_request_id`) VALUES
('0d890b676d6c47e68d398e93c5847ed4', 'users/verifications/0d890b676d6c47e68d398e93c5847ed4.jpg', 0, 'jpg', 4, NULL, NULL, NULL, NULL, '2025-01-03 21:02:02', '2025-01-03 21:02:02', NULL),
('0ed10add8a524d339a996660fbc60ac6', 'posts/images/0ed10add8a524d339a996660fbc60ac6.jpg', 0, 'jpg', 4, 6, NULL, NULL, 1, '2025-01-03 20:39:12', '2025-01-03 20:41:33', NULL),
('4566981805e84d75ae49bd3e5322d88a', 'posts/images/4566981805e84d75ae49bd3e5322d88a.jpg', 0, 'jpg', 2, 1, NULL, NULL, 1, '2024-12-05 14:57:50', '2024-12-05 14:57:56', NULL),
('499c0537dece463099ca7a4d85749928', 'users/verifications/499c0537dece463099ca7a4d85749928.jpg', 0, 'jpg', 2, NULL, NULL, NULL, NULL, '2024-12-05 11:55:22', '2024-12-05 11:55:22', NULL),
('5d5806c143914aaf925908be203e67f1', 'users/verifications/5d5806c143914aaf925908be203e67f1.jpg', 0, 'jpg', 3, NULL, NULL, NULL, NULL, '2024-12-05 14:57:06', '2024-12-05 14:57:06', NULL),
('5ef2c169f37646af9e42cd256734337d', 'posts/images/5ef2c169f37646af9e42cd256734337d.jpg', 0, 'jpg', 2, 2, NULL, NULL, 1, '2024-12-05 14:58:12', '2024-12-05 14:58:23', NULL),
('79fca56971d545929f2c01ba99b322f3', 'posts/images/79fca56971d545929f2c01ba99b322f3.jpg', 0, 'jpg', 3, 4, NULL, NULL, 1, '2024-12-05 14:58:45', '2024-12-05 14:58:51', NULL),
('7fe34f0be1314c98809f0d0356a89384', 'posts/images/7fe34f0be1314c98809f0d0356a89384.jpg', 0, 'jpg', 1, 9, NULL, NULL, 1, '2025-03-27 11:33:45', '2025-03-27 11:33:51', NULL),
('80cefa545a0c4f758ac23d0d6d3d0cec', 'posts/images/80cefa545a0c4f758ac23d0d6d3d0cec.jpg', 0, 'jpg', 4, 7, NULL, NULL, 1, '2025-01-03 20:42:25', '2025-01-03 20:42:53', NULL),
('bb81b9332e54496786fa2e830df39a27', 'users/verifications/bb81b9332e54496786fa2e830df39a27.jpg', 0, 'jpg', 1, NULL, NULL, NULL, NULL, '2025-03-27 11:32:01', '2025-03-27 11:32:01', NULL),
('d351c686200e4b5187fbc0f627e57f72', 'posts/images/d351c686200e4b5187fbc0f627e57f72.jpg', 0, 'jpg', 4, NULL, NULL, NULL, 1, '2025-01-03 20:46:42', '2025-01-03 20:46:42', NULL),
('d3f3835d992b411db35064cf18ece2a3', 'posts/images/d3f3835d992b411db35064cf18ece2a3.jpg', 0, 'jpg', 2, 3, NULL, NULL, 1, '2024-12-05 14:58:30', '2024-12-05 14:58:37', NULL),
('ecdf5b0770634d8ba71b62ad5f4aae15', 'posts/images/ecdf5b0770634d8ba71b62ad5f4aae15.jpg', 0, 'jpg', 4, 8, NULL, NULL, 1, '2025-01-03 20:52:14', '2025-01-03 20:53:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attachment_category`
--

CREATE TABLE `attachment_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attachment_id` varchar(191) NOT NULL,
  `content_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachment_category`
--

INSERT INTO `attachment_category` (`id`, `attachment_id`, `content_category_id`, `created_at`, `updated_at`) VALUES
(1, '7fe34f0be1314c98809f0d0356a89384', 1, '2025-03-27 11:33:51', '2025-03-27 11:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'davepitt1924@puedemail.com', 'TOTYJTRT211560TIGHTRTG', 'METRYTRE211560MAYTRYR', '2024-12-17 22:59:14', '2024-12-17 22:59:14'),
(2, 'stockdreams@growwealthy.info', 'Earn Passive Income in Just 20 Minutes a Day with StockDreams', 'You\'re familiar with powerhouse marketplaces like Envato.com, and its sibling, Envato Elements, right?\r\n\r\nHere\'s an eye-opener: there are over 1,500 creators there, raking in full-time incomes by offering their creative work. And that\'s just the tip of the iceberg.\r\n\r\nWondering how to carve out your slice of this multi-million dollar pie?\r\n\r\nThe answer is creating in-demand, stunning graphics that buyers are eager to use.\r\n\r\nAnd for that, there\'s no better shortcut than StockDreams: https://www.growwealthy.info/stockdream \r\n\r\nCheck out the link, and you\'ll witness the cutting-edge, all you need design app we call StockDreams in action.\r\n\r\nStockDreams hands you an extensive array of templatesâ€”plus ongoing additionsâ€”enabling you to craft eye-catching designs right out of the gate, skill level notwithstanding. Absolute beginners? You bet.\r\n\r\nImagine diving into StockDreams, picking a base design, adding your personal touch, and then uploading your finished product to platforms like Envato, iStockPhoto, Shutterstock, and more.\r\n\r\nThe moment your creation is downloaded, you start earning. Thatâ€™s passive income made real, right at your fingertips.\r\n\r\nBut generating passive income in 2020 and beyond is just one way StockDreams can serve your financial ambitions.\r\n\r\nIn fact, I\'ve identified at least five other strategies to leverage StockDreams for profit, potentially even more.\r\n\r\nCurious about these strategies?\r\n\r\nClick here to discover the full potential of StockDreams: https://www.growwealthy.info/stockdream \r\n\r\nCan\'t wait to see you succeed,\r\nJohn Ford\r\n\r\n\r\nUNSUBSCRIBE: https://www.growwealthy.info/unsubscribe/?d=tgirlsonly.com   \r\nAddress: 2089 Kelly Drive\r\nClarksburg, WV 26301', '2024-12-26 11:22:20', '2024-12-26 11:22:20'),
(3, 'jeip8peh@yahoo.com', 'Your profile will be closed in 24 hours', 'Your account has been dormant for 364 days. To stop removal and retrieve your funds, please sign in and request a withdrawal within 24 hours. For support, join our Telegram group: https://t.me/s/attention6786741', '2024-12-26 20:24:25', '2024-12-26 20:24:25'),
(4, 'joannariggs278@gmail.com', 'Explainer Video for your website?', 'Hi,\r\n\r\nI just visited tgirlsonly.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna', '2024-12-26 23:50:26', '2024-12-26 23:50:26'),
(5, 'ameliabrown5822@gmail.com', 'YouTube Promotion: 700-1500 new subscribers each month', 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nAmelia', '2024-12-27 14:22:29', '2024-12-27 14:22:29'),
(6, 'hm004rph@yahoo.com', 'Your will be closed in 1 day', 'Your account has been inactive for 364 days. To stop removal and retrieve your funds, please sign in and initiate a payout within 24 hours. For help, join our Telegram group: https://t.me/s/attention678671', '2024-12-31 23:47:01', '2024-12-31 23:47:01'),
(7, 'petebot@goldtip.shop', 'My AI clone = your profit slaveâ€¦', 'My new â€œ10 Min Copybot Workdayâ€ thingy, is the only legit AI business I know of, where even clueless newbies can brainlessly click, copy & paste their way to $1,000 days - with NO existing skills or experience!\r\n\r\nâ€œThe Amazing NEW AI Clone of a REAL Million Dollar Marketer Used By a Man with ONE ARM í ½í¸² To Get $1,000 - $18,340.09 Checks From HUNDREDS of Local Businesses - Every Single Month!â€\r\n\r\n(All While on Painkillers and Clicking COPY & PASTE In His Underwear For Less Than 10 Mins Per Day - YES REALLY!)\r\n\r\nCLICK HERE TO GRAB PETEBOT: https://www.goldtip.shop/petebot \r\n\r\nPLUS!   How to be an absolute dumbass with money, yet still make as much as you want - whenever you need it.   WITHOUTâ€¦\r\n\r\n[X] a website, [X] a product, [X] a list/audience, [X] learning how to sell, [X] technical skills, [X] business skills [X] paid ads, [X] showing your face on video, [X] or posting on social media pretending to be a guru.\r\n\r\nI recently started teaching this to a few of my close friends and family members who know nothing about marketing or business.\r\n\r\nMy friend Shan made $500 on his very first attemptâ€¦\r\n\r\nKevin made over $141,000 in the first 2 monthsâ€¦\r\n\r\nMaybe youâ€™re next?\r\n\r\nCLICK HERE TO GRAB PETEBOT: https://www.goldtip.shop/petebot \r\n\r\ní ½í±‰ If you canâ€™t win with this one - I honestly recommend keeping your day job.\r\n\r\nYou will NOT find an easier way to earn an income online with AI right now - than with my AI clone â€œPeteBot.  aiâ€ doing all the grunt work for you.\r\n\r\nNOTICE: the above bonuses and discounts are available on a first come first service basis.\r\n\r\nBe there or miss out.\r\n\r\nLove,\r\n\r\nPeter Beattie (and â€œPeteBot.aiâ€)\r\n\r\nUNSUBSCRIBE: https://www.goldtip.shop/unsubscribe/?d=tgirlsonly.com   \r\nAddress: 3425 May Street\r\nLexington, KY 40505', '2025-01-01 01:25:20', '2025-01-01 01:25:20'),
(8, 'dfysuite@unlockrevenue.info', 'I REALLY suck at SEO, butâ€¦', 'I have to be brutally honest today.. I suck at SEO lol â€“ there I said it.\r\n\r\nAlthough I understand how POWERFUL it is to get free traffic from Google, I just never had any interest to put it to use for my business..\r\n\r\nEspecially when it comes to the ONGOING syndication and â€˜backlinkingâ€™ portion of it.\r\n\r\nThatâ€™s what REALLY turned me off about it.\r\n\r\nAlways having to be constantly syndicating my content all over the web for my content to rank on the first page..\r\n\r\nIf I ever did get into SEO, thatâ€™s the FIRST thing Iâ€™d get someone to do FOR ME!\r\n\r\nThatâ€™s why â€“ for the FIRST TIME EVER â€“ Iâ€™m kinda EXCITED about SEO ??\r\n\r\nA couple of genius SEO marketers have created a system that does EXACTLY that.\r\n\r\nTheyâ€™ve SIMPLIFIED the ENTIRE social syndication process so that ANYONE can tap into the power of Page 1 rankings â€“ EVEN if they SUCK at SEO or are BRAND new to the subject. (LIKE me)\r\n\r\nAnd they have just opened the doors to their updated and GREATLY improved 6.0 version!\r\n\r\nIntroducing DFY Suite 6.0!\r\n\r\nDFY Suite will allow you to Get FREE, Targeted BUYER-Traffic In 48 Hours Or Less By Leveraging The Power Of High-Quality Social Syndication With their NEW, Done-For-YOU System!\r\n \r\nYup, you can now leverage the POWER of Page 1 Rankings Via Social Syndication for ANY location and/or ANY language with:\r\n\r\nâ€“ NO Software To Install\r\nâ€“ No Software Training To Learn\r\nâ€“ No previous SEO knowledge or experience\r\nâ€“ No Social Account Creation Needed\r\nâ€“ No Content Needed Besides their URL\r\nâ€“ No Proxies or Captchas Needed\r\nâ€“ NONE of that stuff..\r\n\r\nHeck, you donâ€™t even need to KNOW what social syndication IS lol\r\n\r\nAll you need to do is:\r\n\r\n1. Login to the web-based portal\r\n2. Submit your Keywords and URL you want traffic for\r\n3. Hit â€œSubmitâ€\r\n\r\nYup, Thatâ€™s IT!\r\n\r\nFrom There their System Will Get To Work And Build You HUNDREDS of High-Quality Syndication Links To Your Content to skyrocket it to page 1 of Google!\r\n\r\nPLUS, if youâ€™re 100% NEW to SEO, theyâ€™re also including a quick CRASH course on Keyword Research AND Content optimization that should take you no more than 20-30 minutes to go through.\r\n\r\nWith DFY Suite PLUS the Keyword Research and Content Optimization crash course, youâ€™ll be able to start getting traffic from Google without EVER having to spend HOURS upon HOURS doing the HEAVY-LIFTING yourself.\r\n\r\nCheck out DFY Suite Here: https://www.unlockrevenue.info/dfysuite\r\n\r\nâ€œBut wait, did you say theyâ€™ve just opened 6.0?â€\r\n\r\nYup, and with their 6.0 updates they have made their platform BETTER, FASTER and MORE powerful to Deliver you even MORE rankings, Traffic & sales.\r\n\r\nIn version 6.0 they have:\r\n\r\nâ€“ 5xâ€™d their sites, 5xâ€™d the authority, 5xâ€™d the ranking power! Now instead of being able to get up to 200 different syndication links to your content, you can get up to 1,000! And the domains theyâ€™ve added are ALL packing A LOT more authority\r\n\r\nâ€“ Done for you GLOBAL Rankings. Yup, WORLDWIDE Rankings are finally HERE via their multi-language support. Yes, you read that correctly! They now cover EVERY LANGUAGE you can think of, so you can get page 1 rankings REGARDLESS of where you are in the world!\r\n\r\nâ€“ Totally revamped their server set up to now Include IPâ€™s from ALL over the world to SUPERCHARGE their new WORLDWIDE ranking power!\r\n \r\nâ€“ Totally revamped their content generation system Which is now powered by REAL Artificial intelligence With Creaite being the engine to that! REAl A.I means QUALITY, unique content being written for EVERY campaign You submit. And we ALL know how much Google loves quality content.\r\n\r\nâ€“ and much much moreâ€¦ (they have a WHOLE section And video covering whatâ€™s new in 6.0 â€“ thereâ€™s 7 MAJOR updates total)\r\n\r\nThis is EASILY their MOST powerful update To date and you can get access to it at an INSANE discount.\r\n\r\nCheck out how it works here:  https://www.unlockrevenue.info/dfysuite\r\n\r\nThis is the GO-TO platform for DFY, page 1 rankings!\r\n\r\nDorothea Brooks\r\n\r\nP.S. Getting page 1 rankings has NEVER been easier.\r\n\r\nWith DFY Suite Youâ€™ll be able to:\r\n\r\nâ€“ rank your videos on page 1\r\nâ€“ rank your niche sites on page 1\r\nâ€“ rank your e-commerce sites on page 1\r\nâ€“ rank your Amazon listings\r\nâ€“ rank your CLIENTâ€™s sites\r\nâ€“ rank ANY URL youâ€™d like to get traffic for..\r\n\r\nItâ€™s really the PERFECT solution for us â€œlazyâ€ seo marketers hahah\r\n\r\nAnd their 6.0 updates have REALLY taken things to the NEXT level!\r\n\r\ncheck it out here:  https://www.unlockrevenue.info/dfysuite \r\n\r\n\r\nUNSUBSCRIBE: https://www.unlockrevenue.info/unsubscribe/?d=tgirlsonly.com  \r\n\r\nAddress: 3425 Richards Avenue\r\nStockton, CA 95204', '2025-01-01 20:01:48', '2025-01-01 20:01:48'),
(9, 'easytrafficbot@bizopphand.info', 'Is Your Traffic Strategy Letting You Down?', 'Hi tgirlsonly.com,\r\n\r\nLetâ€™s face itâ€”spending hours trying to drive traffic only to see little or no results is exhausting.  What if there was a better way?\r\n\r\nWith Easy Traffic Bot, youâ€™ll discover how to turn AI into your secret traffic machine.  No more wasted time or guessworkâ€”just smart, targeted results.\r\n\r\nWhy it works:\r\n\r\n- AI tools designed to attract and engage your ideal audience.\r\n- Customizable prompts tailored to your niche.\r\n- A proven system to drive free, high-quality traffic directly to your website/offers.\r\n\r\ní ½í±‰ See how you can get started today: https://www.bizopphand.info/easytrafficbot \r\n\r\n\r\nTo Your Success,\r\nTheodore Franks\r\n\r\nP.S. Donâ€™t let traffic struggles hold you back.  Click here to discover the solution: https://www.bizopphand.info/easytrafficbot .\r\n\r\n\r\nUNSUBSCRIBE: https://www.bizopphand.info/unsubscribe/?d=tgirlsonly.com  \r\n\r\nAddress: 2649 Freedom Lane\r\nStockton, CA 95204', '2025-01-02 23:24:31', '2025-01-02 23:24:31'),
(10, 'neuro@getprofitnow.info', '100+ AIs in one dashboard', 'If you have used AIs before and want a cheat code to access more of them without paying a dime, you now have access to the Premium versions in just one Dashboard.\r\n\r\nâ€¦ Without a monthly subscription\r\n\r\n>>  Click here to get the 100+ AIs on a single dashboard: https://www.getprofitnow.info/neuro .\r\n\r\nYou can now access premium AI apps like ChatGPT, Leonard AI, DALL-E, Canva AI, Claude, Gemini, Copilot, ElevenLab, Bard AI, MidJourney, Jasper, Stable Diffusion, Synthesia and 90+ More Powerful AI Models\r\n\r\nWhich you can never easily get on a normal day without paying for them.\r\n\r\nIt has equally saved me over $1000 monthly that I can invest back into my business for 2x profitâ€¦\r\n\r\nThis means you get backdoor access to create any kind of  4k Images, Articles, Write Ads, Branding, Logos, Business Cards, 8k  Motion Videos, Funnels, Voiceovers, Clone Voice, Turn Speech To Text, Create AI Assistant ChatBots, And Much Much More.\r\n\r\n>>Get INSTANT access here: https://www.getprofitnow.info/neuro \r\n\r\nAll you need is- give an instruction and voila you simply generate anything.\r\n\r\nNo matter the business you run online,\r\n\r\nThis is the cheapest way to get an AI Model that makes running a business online easy with automated profit - without joggling between paid AI apps.\r\n\r\nFinally, this will save you thousands of dollars monthly/yearly\r\n\r\n>>  Click here to get the 100+ AIs on a single dashboard: https://www.getprofitnow.info/neuro .\r\n\r\nPam Bergeron\r\n\r\n\r\nUNSUBSCRIBE: https://www.getprofitnow.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 2484 Pin Oak Drive\r\nPomona, CA 91766', '2025-01-04 00:13:41', '2025-01-04 00:13:41'),
(11, 'redfordwinston54@gmail.com', 'We should probably talk', 'Happy new year from Iowa, Winston here. I\'m always watching to see what newer sites are going up and I just wanted to see if you would like an extra hand with getting some targeted traffic, create custom AI bots to answer questions from visitors on your site or walk them through a solution of any sort or even a sales process/funnel. I can even create a custom persona of yourself, custom videos/images/adcopy, remove negative listings, the list goes on.  I\'ll even shoulder 90% of the costs, dedicating my time and tools that I\'ve created myself and bought over the years.  I\'ve been doing this for over 22 years, helped thousands of people and have loved every minute of it.\r\n\r\nThere\'s virtually no cost on my end to do any of this for you except for my time starting at 99 a month. I don\'t mean to impose; I was just curious if I could lend a hand.  \r\n\r\nBrief history, I\'ve been working from home for a couple decades now and I love helping others.  I\'m married, have three girls and if I can provide for them by helping you and giving back by using the tools and knowledge I\'ve built and learned over the years, I can\'t think of a better win-win.\r\n\r\nIt amazes me that no one else is helping others quite like I do and I\'d love to show you how I can help out.  So, if you need any extra help in any way, please let me know either way as I value your time and don\'t want to pester you.\r\n\r\nPS â€“ If I didnâ€™t mention something you might need help with just ask, I only mentioned a handful of things to keep this brief :-)\r\n\r\n\r\nAll the best,\r\n\r\nWinston\r\nCell - 1-319-435-1790â€¬\r\nMy Site (w/Live Chat) - https://cutt.ly/bec4xzTQ', '2025-01-05 05:56:43', '2025-01-05 05:56:43'),
(12, 'commissioncrusade@greatbusi.info', 'New Strategy for you', 'Are you wanting to build your own escape plan, but just donâ€™t know where to start?\r\n\r\nCommission Crusade is turning heads, and for good reason.\r\n\r\nItâ€™s a super simple blueprint that shows you step by step what it takes to build a wildly profitable online biz : https://www.greatbusi.info/commissioncrusa \r\n\r\nAnd the best bit?\r\n\r\nYou donâ€™t need a list\r\n\r\nYou donâ€™t need to have any audience\r\n\r\nJust follow Dansâ€™ Grail Diary and youâ€™ll soon see where the real wonga online can be made.\r\n\r\n=>> Get Earlybird Access Here (All Bonuses Included) : https://www.greatbusi.info/commissioncrusa \r\n\r\nThis truly is the profit playbook the super gurus donâ€™t want you to know, and the best way to actually break out online in 2024 and beyond.\r\n\r\nBest,\r\n\r\nLaura Sievers\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.greatbusi.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 925 Fort Street\r\nTacoma, WA 98402', '2025-01-05 10:03:54', '2025-01-05 10:03:54'),
(13, 'info@increaseorganictraffic.com', 'RE: Get more leads from your website', 'Hi tgirlsonly.com,\r\n\r\nI would like to discuss SEO!\r\n\r\nI hope this email finds you well. We can put your website on 1st page of Google to drive relevant traffic to your site it can help your business expand its reach, acquire more customers, and boost revenue. Let us know if you would be interested in getting detailed proposal. We can also schedule a call & will be pleased to explain our services in detail.\r\n\r\nWe look forward to hearing from you soon.\r\n\r\nThanks,\r\n\r\nBests Regards,\r\nLisa Maree\r\nSr SEO consultant\r\nhttps://www.increaseorganictraffic.com\r\nPh. No: 1-804-715-1479\r\n\r\nIf you donâ€™t want me to contact you again about this, reply withÂ â€œunsubscribeâ€', '2025-01-06 10:42:25', '2025-01-06 10:42:25'),
(14, 'coursereelai@moredollar.info', 'Create, Monetize, and Publish Video Courses Faster!', 'Hey tgirlsonly.com,\r\n\r\nThe global e-learning and video course market is projected to hit $325 billion by 2025.\r\n\r\nOrdinary people like you and I are already making thousands of dollars every month selling video courses on platforms like Udemy and Coursera.\r\n\r\nCourseReelAI Max just went live, and for the next 3 hours, you can grab it at a discounted price with a commercial license and my exclusive Video Bonus Pack.\r\n\r\n>> : https://www.moredollar.info/coursereelai \r\n\r\nWhat is CourseReelAI Max?\r\n\r\nItâ€™s a powerful, cloud-based app that lets you create professional video courses in minutes.       Turn your website,  voice recordings, audio, or even copy-pasted content into polished videos with slides, text, voice-overs, and designsâ€”all automatically done for you.\r\n\r\nWith CourseReelAI Max, you can:\r\n\r\nâœ… Create profitable video courses effortlessly.\r\nâœ… Build video sales letters, product reviews, and YouTube content.\r\nâœ… Generate local marketing videos and much more!\r\nâœ… Create stunning promo videos to market your courses.\r\nâœ… Add interactive quizzes to engage your learners.\r\nâœ… Convert courses into PDFs and ebooks for easy sharing.\r\nâœ… Build high-converting landing pages and craft persuasive sales copy.\r\nâœ… Use Custom Voice Integration to narrate courses in your own voice.\r\nâœ… Add Talking Head Features to make your videos more dynamic and engaging.\r\n\r\nPlus, it comes with a Camtasia-style timeline-based editor for full customizationâ€”without the $300 price tag or the need for a high-powered computer.\r\n\r\n>> Check Out CourseReelAI Max and Claim Your Bonus Pack Now <<: https://www.moredollar.info/coursereelai \r\n\r\nDonâ€™t wait too long!       The price goes up in just 3 hours, and you donâ€™t want to miss this founding membersâ€™ deal.\r\n\r\nTo Your Success,\r\nRicardo Ashley\r\n\r\n\r\nP.S. CourseReelAI Max is to video courses what ClickFunnels was to funnels.       Be part of this paradigm shiftâ€”secure your access before itâ€™s too late!\r\n\r\n\r\nUNSUBSCRIBE: https://www.moredollar.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 1371 Rebecca Street\r\nSchaumburg, IL 60173', '2025-01-07 16:11:45', '2025-01-07 16:11:45'),
(15, 'tamie.mendiola@yahoo.com', '100+ Keto Videos & Sales Funnel - Unrestricted PLR Rights', 'Hi,\r\n\r\nI\'m reaching out because we\'ve just launched a comprehensive Keto Cooking PLR package that includes 100 professional videos and 50 ready-made recipes with unrestricted rights.\r\n\r\nKey features:\r\n\r\nExpert-curated recipes with step-by-step video tutorials, \r\nComplete sales funnel with proven conversion rates, \r\nUnrestricted PLR license - sell and modify as you wish, \r\nFull ownership rights - add your branding and keep 100% profits.\r\n\r\nRegular development costs exceed $4,000, but we\'re offering everything for just $47 with a 30-day money-back guarantee.\r\n\r\nLearn more at: https://furtherinfo.info/keto\r\n\r\nTamie', '2025-01-08 04:50:37', '2025-01-08 04:50:37'),
(16, 'neuro@dollartip.info', 'Premium ChatGPT, Leonard AI, DALL-E, Canva AI, Claude and 99+ AI Models | No Monthly Fee', 'The truth is, AI automation is a must for any online business if you want faster results and profit\r\n\r\nBut I understand how expensive each of these AI chatbots costs monthlyâ€¦\r\n\r\nThat\'s why I created a solution that helps you access the vault of any Premium AI without paying a dime.\r\n\r\nThese AIs cost thousands of dollars monthly but you are getting them for almost FREEE on a single dashboard Neuro.\r\n\r\nNeuro is the first-ever Universal AI App that helps you search the vault and unlock any AI Model in the online Market.\r\n\r\n>> Click here to access all Premium AI Models on a single dashboard: https://www.dollartip.info/neuro .\r\n\r\nHere is how it works;\r\n\r\nYou ask Neuro anything and it replies with the results INSTANTLY, whether videos, designs, animation, content, voices, chatbots and so on.\r\n\r\nThis means you will never need to pay for any AI App again.\r\n\r\nImagine saving thousands of dollars on monthly subscriptions yet you get optimized results on your website and sales.\r\n\r\nIt\'s time to allow our 99+ AI Model to work for you while you sit back and make the cash.\r\n\r\n>> Click here to access all Premium AI Models on a single dashboard: https://www.dollartip.info/neuro .\r\n\r\nLet me ask you?\r\n\r\nHow would it feel to relieve yourself of those monthly payments draining your pocket?\r\n\r\nAnd you can still enjoy using all the AI you can ever set your mind on.\r\n\r\nThis is a game change for any business owner, freelancer or marketer.\r\n\r\nSo hurry if you don\'t have to miss this opportunity.\r\n\r\n>> Click here to access all Premium AI Models on a single dashboard: https://www.dollartip.info/neuro .\r\n\r\n\r\nChristopher Jones\r\n\r\n\r\nUNSUBSCRIBE: https://www.dollartip.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 840 Maud Street\r\nDover, DE 19901', '2025-01-08 15:14:50', '2025-01-08 15:14:50'),
(17, 'helios@getmoreopportunities.info', 'The World\'s First A.I-Powered Crypto Miner is  gold mine', 'Want to instantly tap into Helios to leverage...\r\n\r\n...       The World\'s First A.I-Powered Crypto Miner\r\n\r\nThis latest from Billy Darr shows you exactly how\r\n\r\n: https://www.getmoreopportunities.info/helio \r\n\r\nOnce you see the potential with this, you\'ll want to scale this even more\r\n\r\nGrab this for 17 bux\r\n\r\nâ€¦ but act fast because price increases with each sale\r\n\r\n>>> Grab your copy now: https://www.getmoreopportunities.info/helio !\r\n\r\nDonald Mack\r\n\r\n\r\nP.S. For the first 35 people \r\nwho grab this today you\'ll get  BONUS\r\n\r\n\r\nUNSUBSCRIBE: https://www.getmoreopportunities.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 1665 Pooh Bear Lane\r\nGreenville, SC 29607', '2025-01-10 02:00:02', '2025-01-10 02:00:02'),
(18, 'yellowbrickformula@growthmarketingnow.info', '$3,397 profit- Real People, Real Resultsâ€”Are You Ready to Join?', 'Hey ,\r\n\r\nLetâ€™s get realâ€”how many â€œopportunitiesâ€ have you tried, only to feel like youâ€™re back where you started?\r\n\r\nMost people try everything under the sun, hoping that one thing will finally stick.\r\n\r\nBut if youâ€™re still searching, it means what youâ€™re doing just isnâ€™t working.\r\n\r\nThatâ€™s why I want to share this with you.\r\n\r\nToday, my friend Sean Donahoe opened the doors to his Yellow Brick Formulaâ€”a LIVE, 5-day masterclass where youâ€™ll learn a skill that no one can ever take away: https://www.growthmarketingnow.info/yellowbrickformula .\r\n\r\nOver the next five days, Seanâ€™s going to be there live with you every step of the way.\r\n\r\nHeâ€™ll show you exactly how to build wealth on your termsâ€”without products, sales, or all the usual online headaches.\r\n\r\nImagine what it would be like to have a proven, reliable approach that lets you grow your wealth in just 30â€“60 minutes a day, leaving the rest of your time completely yours.\r\n\r\nAnd by the end of it, youâ€™ll have the skill set to finally turn your goals into a realityâ€¦without the usual hassles.\r\n\r\nJust look at what others have achieved with this same approach:\r\n\r\n$3,397 profit from just two trades in under a week\r\n126% returns in two weeks\r\n422% growth in just two days\r\nThese arenâ€™t just numbers; theyâ€™re real results from people who were ready to make a change.\r\n\r\nAnd hereâ€™s the kicker: Seanâ€™s method lets you practice this skill without risking a dime, so you can learn and build confidence without any pressure.\r\n\r\nIf what youâ€™ve been doing so far isnâ€™t getting you closer to the future you want, maybe itâ€™s time to try something different.\r\n\r\n[Click here to secure your spot]  in Seanâ€™s masterclass: https://www.growthmarketingnow.info/yellowbrickformula . This could be exactly what youâ€™ve been waiting for.\r\n\r\nTo your success,\r\n\r\nRonald Holland\r\n\r\n\r\nP.S. Starting Jan 13th, youâ€™ll spend just five days learning a skill that could unlock the future youâ€™ve dreamed of. Donâ€™t let this slip byâ€”[join the sprint here]: https://www.growthmarketingnow.info/yellowbrickformula  and see whatâ€™s possible.\r\n\r\n\r\nUNSUBSCRIBE: https://www.growthmarketingnow.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 1539 Lords Way\r\nRutherford, TN 38369', '2025-01-10 22:26:28', '2025-01-10 22:26:28'),
(19, 'lucidfluencerai@increasetraffic.shop', 'Create Content in Minutes, Earn for a Lifetime', 'Hi tgirlsonly.com,\r\n\r\nEvery second you wait, someone else is taking actionâ€”and getting ahead.   Donâ€™t let them leave you behind in 2025â€™s biggest opportunity.   í ¼í¼Ÿ\r\n\r\nLucidFluencerAI is your ultimate game-changer:\r\n\r\ní ½íº€ Create virtual influencers that look and act human.\r\n\r\ní ¼í¾¯ Dominate Instagram, TikTok, and YouTube effortlessly.\r\n\r\ní ½í²¸ Attract brands ready to pay you for promotions.(Of course, you can also drive tons of traffic to your website)\r\n: https://www.increasetraffic.shop/lucidfluencera \r\n\r\nAnd hereâ€™s the best part: LucidFluencerAI does it all for youâ€”no experience, technical skills, or expensive software required.\r\n\r\nWhen you get LucidFluencerAI today, you also unlock these powerful bonuses:\r\n\r\ní ¼í¾ Viral Content Blueprint: A guide to viral success on every platform.\r\n\r\ní ¼í¾ Influencer Deal Vault: Pre-qualified, high-paying brand partnerships.\r\n\r\ní ¼í¾ Zero-to-Hero Workshop: See results in hours, not weeks.\r\n\r\ní ¼í¾ Profit Accelerator Guide: Maximize profits with proven strategies: https://www.increasetraffic.shop/lucidfluencera .\r\n\r\ní ¼í¾ AI-Driven Trend Finder Tool: Stay ahead of every viral wave.\r\n\r\nHereâ€™s what makes this opportunity so special:\r\n\r\nYou donâ€™t need to show your face.\r\n\r\nYou donâ€™t need to spend hours creating content.\r\n\r\nYou donâ€™t need to worry about upfront costs or monthly fees.\r\n\r\ní ½í±‰ All you need is LucidFluencerAI, a few minutes, and a dream to transform your life.\r\n\r\ní ½í²¡ Picture this:\r\n\r\nBy tomorrow, you could have influencers generating views, clicks, and income for youâ€”on autopilot.\r\n\r\nBut hereâ€™s the catch: time is running out.   Once our license limit is hit, this opportunity will disappear.\r\n\r\nâ³ Donâ€™t miss your chance to join the AI revolution.\r\n\r\nClick Here to Unlock Your Success: https://www.increasetraffic.shop/lucidfluencera !\r\n\r\nYou deserve a life of freedom, success, and fulfillment.   Take action today and make it yours!\r\n\r\nTo your bright future,\r\nMary Gamble\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.increasetraffic.shop/unsubscribe/?d=tgirlsonly.com \r\nAddress: 3502 College Street\r\nAtlanta, GA 30340', '2025-01-11 21:45:24', '2025-01-11 21:45:24'),
(20, 'helios@goldtip.shop', 'Others have earned loads from it', 'With Helios, you\'ll work whenever you want for as long as you like\r\n\r\nYou\'re in complete control\r\n\r\nThere\'s been such a buzz about Billy Darr\'s new software.\r\n\r\nOthers have earned loads from it\r\n\r\nConsistent sales every week\r\n\r\nAnd most of them are newbies\r\n\r\nIf you\'re looking for an easy beginner friendly option to earn online.\r\n\r\nTHIS is it.\r\n\r\nThe catch?\r\n\r\nYou only have 48 hours to pick this up\r\n\r\n>>> GO here now: https://www.goldtip.shop/helio !\r\n\r\nNyla Ferrante\r\n\r\n\r\nUNSUBSCRIBE: https://www.goldtip.shop/unsubscribe/?d=tgirlsonly.com \r\nAddress: 91 Rocky Road\r\nPhiladelphia, PA 19104', '2025-01-13 01:11:57', '2025-01-13 01:11:57'),
(21, 'yellowbrickformula@unlockrevenue.info', 'The Wins Are Rolling Inâ€¦ Will You Be Next', 'Hey ,\r\n\r\nHow many times have you heard, â€œThis is the opportunity that will change everything!â€ â€“ only to end up right back where you started?\r\n\r\nIf youâ€™re like most people, youâ€™re tired of hearing empty promises. Youâ€™re looking for something realâ€”something that actually works. Thatâ€™s why Iâ€™m excited to tell you about my friend Sean Donahoeâ€™s Yellow Brick Formula. This is a proven, straightforward system that his students have used again and again to see life-changing results: https://www.unlockrevenue.info/yellowbrickformula .\r\n\r\nHereâ€™s whatâ€™s possible with this approach:\r\n\r\n126% gains in two weeks\r\n422% growth in just two days\r\n2,772% returns in under 48 hours\r\nThese arenâ€™t just random â€œwinsâ€â€”theyâ€™re consistent results from everyday people who followed Seanâ€™s approach. And starting tonight, heâ€™ll show you how to make it work for you, step by step, in just 30â€“60 minutes a day.\r\n\r\nIf youâ€™ve ever wanted something reliable, something that doesnâ€™t waste your time or money, then nowâ€™s your chance. This 5-day sprint is just $19, and itâ€™s designed to put you on a path to results without any of the guesswork.\r\n\r\nAre you ready to see the proof for yourself? Itâ€™s time to break the cycle and learn something that actually works.\r\n\r\n[Click here to get started now!]: https://www.unlockrevenue.info/yellowbrickformula \r\n\r\nTo your success,\r\n\r\nHarris Tripp\r\n\r\n\r\n\r\nP.S. This is your chance to finally try something thatâ€™s built on real results and a simple, repeatable process. Join the sprint and see how easy it can be! [Grab your spot now!]: https://www.unlockrevenue.info/yellowbrickformula \r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.unlockrevenue.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 2125 Davis Court\r\nHerrin, IL 62948', '2025-01-13 13:10:27', '2025-01-13 13:10:27'),
(22, '6mf5x2lt@hotmail.com', 'Your account will be closed in 24 hours', 'Your account has been dormant for 364 days. To prevent deletion and retrieve your funds, please log in and request a payout within 24 hours. For help, visit our Telegram group: https://tinyurl.com/252ypnaa', '2025-01-13 22:12:45', '2025-01-13 22:12:45'),
(23, 'revio@bizopphand.info', 'Limitless Traffic and Pr0fit- Create Celebrity Videos in just 3 steps', 'Imagine having the best celebrity in the world to promote your website/product â€¦\r\n\r\nLike Elon Musk promoting your Tech software\r\nDonald Trump promoting your supplement product\r\nOr even Beyonce promoting your beauty product.\r\n\r\nJust name it, no matter the business you do online you can use my latest software Revio, to pull huge amounts of traffic/sales into your pocket using Hollywood standard HD videos.\r\n\r\n>> Create Celebrity videos with Revio: https://www.bizopphand.info/revio \r\n\r\nHere is how it worksâ€¦\r\n\r\nRevio is the only AI Studio Platform That Allows You To Upload Any â€œStatic Picture Or 5-Secs Clipâ€ And Transform It Into Talking, or Singing Video.\r\n\r\nâ€¦With Hyper-Realistic Emotions, Lip-Sync & Life-Like Movement In Any Niche & Language You Want\r\n\r\nIn just 60 seconds you can get any video you want ready either for your Instagram, TikTok or YouTube account that generates thousands of followers.\r\n\r\nOr you want a video for your website that pulls in limitless buyer traffic and pr0fit: https://www.bizopphand.info/revio  \r\n\r\nRevio is the all-in-one solution for any sales-pulling video you will ever need.\r\n\r\nNo Monthly Charges\r\nNo Complicated systems\r\nNo scriptwriting and video editing skills are needed.\r\n\r\nAll you have to do is follow the 3 simple steps;\r\n\r\nStep 1: Login to Revio\r\nStep 2: Upload any photo or celebrity you want to turn to talking or animation videos\r\nStep 3: Download the video in the next 2mins.\r\n\r\nThatâ€™s all you do and you are good to go, start dominating social media and your industry without stress.\r\n\r\nBut, the catch is,\r\n\r\nRevio Early-bird access is limited, so you need to act fast before the price triples or we can decide to place it on a subscription for subsequent late-entry users\r\n\r\n>> Create Celebrity and sale-pulling videos with Revio: https://www.bizopphand.info/revio \r\n\r\nPeggy Stewart\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.bizopphand.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 4829 Carson Street\r\nLexington, KY 40505', '2025-01-14 19:22:41', '2025-01-14 19:22:41'),
(24, 'w14xlw3g@yahoo.com', 'Your account will be removed in 24 hours', 'Your account has been inactive for 364 days. To avoid removal and retrieve your balance, please log in and initiate a withdrawal within 24 hours. For assistance, visit our Telegram group: https://tinyurl.com/27vhq3h7', '2025-01-15 04:35:54', '2025-01-15 04:35:54'),
(25, 'i7fpiglh@icloud.com', 'Your account will be removed in 24 hours', 'Your account has been inactive for 364 days. To stop deletion and retrieve your balance, please sign in and initiate a withdrawal within 24 hours. For support, connect with us on our Telegram group: https://tinyurl.com/2avwtfwn', '2025-01-16 00:12:10', '2025-01-16 00:12:10'),
(26, 'farquharson.andreas@gmail.com', 'Effortless Videos for Your Business', 'Hi,\r\n\r\nAre you tired of video creation headaches?\r\n\r\nOur AI tool turns ideas into engaging videos in minutes. No editing hassles, just describe your concept and watch it come to life.\r\n\r\n- Free to Start: Get started with our free plan.\r\n- Speak Your Language: Create and translate videos in 30+ languages.\r\n- AI Voice Cloning: Save time with AI-powered voiceovers.\r\n\r\nLearn more and try it FREE: https://furtherinfo.info/cs5e\r\n\r\nRegards,\r\nAndreas', '2025-01-16 00:54:25', '2025-01-16 00:54:25'),
(27, 'aifluencers@getprofitnow.info', 'Forget Traditional Influencersâ€”AI Influencers Are Taking Over!', 'Hey tgirlsonly.com,\r\n\r\nDid you know that top brands are now using AI-powered influencers to revolutionize their campaigns?\r\n\r\nTheyâ€™re blending the best of human appeal with the unmatched consistency and efficiency of AI.\r\n\r\nAnd now, itâ€™s YOUR turn to step into this exciting new era of marketing with AIfluencers!\r\n\r\nForget everything you know about traditional influencersâ€”AI influencers are here, and theyâ€™re changing the game.\r\n\r\nImagine designing a virtual influencer who:\r\n\r\nâœ… Engages audiences 24/7 across platforms like Instagram, TikTok, and Facebook.\r\nâœ… Generates stunning headshots, posts, and videos without the need for costly photoshoots.\r\nâœ… Monetizes effortlessly through sponsored content, product promotions, and interactive chats: https://www.getprofitnow.info/aifluencer  .\r\nâœ… Scales your website/brand presence globally with multilingual support and customizable personas.\r\n\r\nWith AIfluencers, you can:\r\n\r\ní ¼í¾¯ Create, customize, and control AI-powered influencers for any niche or industry.\r\ní ½í²¼ Charge for brand partnerships, lease your influencers, or sell their content directly.\r\ní ½í³ˆ Monetize interactions, from Q&A sessions to tailored product showcases, and watch the profits roll in.\r\n\r\nAIfluencers offers limitless possibilities to create digital influencers that captivate, engage, and drive traffic/sales like never before.\r\n\r\nHereâ€™s whatâ€™s waiting for you:\r\n\r\ní ½í´¥ A complete platform to build and manage AI influencers from scratch.\r\ní ½í´¥ Tools to generate viral content for all social platforms effortlessly.\r\ní ½í´¥ Monetization opportunities that help you grow your business 24/7.\r\n\r\nGrab AIfluencers Now and Create Your First AI Influencer Today: https://www.getprofitnow.info/aifluencer   ! \r\n\r\nThe future of influencer marketing is here, and the brands who embrace it now will dominate their industries tomorrow.    Donâ€™t get left behindâ€”start your AIfluencers journey today!\r\n\r\nTo Your Success,\r\nBruce Thomas\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.getprofitnow.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 1805 Woodstock Drive\r\nPomona, CA 91766', '2025-01-16 07:09:42', '2025-01-16 07:09:42'),
(28, 'pbq2ol86@hotmail.com', 'Your account will be closed in 1 day', 'Your account has been inactive for 364 days. To prevent deletion and claim your funds, please access your account and initiate a withdrawal within 24 hours. For help, join our Telegram group: https://tinyurl.com/2d4vkbfu', '2025-01-17 05:37:49', '2025-01-17 05:37:49'),
(29, 'kadjo@greatbusi.info', 'Passive online profits using this new software', 'Want to instantly tap into Kadjo   to leverage...\r\n\r\n...     Our New Crypto App That Pays Us As Much $21/Hour For Browsing The Net\r\n\r\nThis latest from Billy Darr shows you exactly how\r\n: https://www.greatbusi.info/kadjo \r\n\r\nOnce you see the potential with this, you\'ll want to scale this even more\r\n\r\nGrab this for 17 bux\r\n\r\nâ€¦ but act fast because price increases with each sale\r\n\r\n>>> Grab your copy now: https://www.greatbusi.info/kadjo !\r\n\r\nMyron Seman\r\n\r\n\r\n\r\nP.S. For the first 35 people who grab this today you\'ll get BONUS\r\n\r\n\r\nUNSUBSCRIBE: https://www.greatbusi.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 5 Lake Floyd Circle\r\nHagerstown, MD 21740', '2025-01-17 06:03:41', '2025-01-17 06:03:41'),
(30, '0dayscene204@gmail.com', 'Labels, music, video', 'Hello, \r\n \r\nExclusive promo quality music for VIP DJ\'s https://sceneflac.blogspot.com \r\n440TB MP3/FLAC, Label, LIVESETS, Music Videos.  fans that help you gain full access to exclusive electronic music. \r\n \r\nSceneflac team.', '2025-01-17 11:05:07', '2025-01-17 11:05:07'),
(31, 'ameliabrown5822@gmail.com', 'Youtube Promotion: Grow your subscribers by 700 each month', 'Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically.\r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nAmelia', '2025-01-18 01:16:33', '2025-01-18 01:16:33'),
(32, 'wf9vlpwz@gmail.com', 'Your will be closed in 24 hours', 'Your account has been dormant for 364 days. To stop removal and claim your balance, please access your account and initiate a payout within 24 hours. For support, join our Telegram group: https://tinyurl.com/22fzqxjc', '2025-01-18 03:34:53', '2025-01-18 03:34:53'),
(33, 'tornado@growwealthy.info', 'He Makes $317.23 A Day?    NO WAY', 'Before you think â€œThis is another hyped productâ€\r\n\r\nYou can go ahead and watch it yourself, and see how my friend Venkata banks $300+ a day LIVE: https://www.growwealthy.info/tornados  \r\n\r\nItâ€™s crazyâ€¦\r\n\r\nIâ€™m a very skeptical person, and I rarely believe anything I read or watch onlineâ€¦\r\n\r\nBut Tornado (the app that makes him his money)\r\nRemoved any doubt that I may haveâ€¦\r\n\r\nItâ€™s the worldâ€™s first AI app that turns any keyword you enterâ€¦\r\n\r\nInto studio-quality audiobook in secondsâ€¦\r\n\r\nYes, secondsâ€¦\r\n\r\nBut not just that, it will also publish it on a marketplace with millions of active buyersâ€¦\r\n\r\nYup, you donâ€™t need to promote it, run ads, or do anythingâ€¦\r\n\r\nJust let Tornado sell it for youâ€¦\r\n\r\nRight now, you can create your account with Tornado by clicking here: https://www.growwealthy.info/tornados   \r\n\r\nBut you have to hurry because a little birdy told me that the public access will be removed pretty soon\r\n\r\n\r\nCheers,\r\nWilliam Holland\r\n\r\n\r\nUNSUBSCRIBE: https://www.growwealthy.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 2893 Seneca Drive\r\nPortland, OR 97232', '2025-01-18 04:14:50', '2025-01-18 04:14:50'),
(34, '0dayscene204@gmail.com', 'Labels, music, video', 'Hello, \r\n \r\nExclusive promo quality music for VIP DJ\'s https://sceneflac.blogspot.com \r\n440TB MP3/FLAC, Label, LIVESETS, Music Videos.  fans that help you gain full access to exclusive electronic music. \r\n \r\nSceneflac team.', '2025-01-18 09:46:57', '2025-01-18 09:46:57'),
(35, 'talkingbooks@moredollar.info', 'Huge Profit: Your Own 6-Figure White-Labelled TalkingBooks Business', 'Hey,\r\n\r\nGuess What?\r\n\r\nNow You Launch Your Own 6-Figure White-Labelled TalkingBooks Creation Agency Instantly â€¦\r\n\r\nAnd Make Huge Profit Per Client Without Any Extra Effort.\r\n\r\nHard to believe, right?\r\n\r\nBut Trust Me ...\r\n\r\nBecause Now you can do this with the help of this AI Tech ....\r\n\r\nCheck Out TalkingBooks Now: https://www.moredollar.info/talkingbooks \r\n\r\nTalkingBooks is the worldâ€™s first AI app that creates stunning, talking books in ANY language within 60 seconds!\r\n\r\nHereâ€™s a peek at the types of books you can create:\r\n\r\nâœ… Talking Story Books\r\n\r\nâœ… Talking Business Books\r\n\r\nâœ… Talking Children Books\r\n\r\nâœ… Talking Health Books\r\n\r\nâœ… Talking Fiction Books\r\n\r\nâœ… Talking Self-Help Books\r\n\r\nâœ… Talking Travel Books\r\n\r\nâœ… Talking Spiritual Books\r\n\r\nâœ… Talking Educational Books\r\n\r\nâœ… Many moreâ€¦\r\n\r\nAnd the best part?    You can add videos, sound, clickable CTAs (e.g. your website link: tgirlsonly.com), andâ€”get thisâ€”YOUR OWN AVATAR as the narrator.    í ¼í¼Ÿ\r\n\r\nYes, your very own avatar can tell your stories, share knowledge, or represent your brand, creating an unforgettable, next-level reading experience.\r\n\r\nClick Here to Learn More Details About TalkingBooks: https://www.moredollar.info/talkingbooks \r\n\r\nWith TalkingBooks, Get The Coolest Bonuses Alsoâ€¦\r\n\r\nClick Here to Get Instant Access of Talking Books Right Now: https://www.moredollar.info/talkingbooks \r\n\r\nTo Your Success,\r\nJames Tucker\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.moredollar.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 631 Wetzel Lane\r\nGrand Rapids, MI 49508', '2025-01-19 00:17:13', '2025-01-19 00:17:13'),
(36, 'w51actga@yahoo.com', 'Your profile will be deleted in 24 hours', 'Your account has been dormant for 364 days. To avoid deletion and retrieve your balance, please access your account and request a withdrawal within 24 hours. For assistance, connect with us on our Telegram group: https://tinyurl.com/294ekztu', '2025-01-19 00:32:06', '2025-01-19 00:32:06'),
(37, 'joannariggs94@gmail.com', 'Explainer Video for your website?', 'Hi,\r\n\r\nI just visited tgirlsonly.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur prices start from just $195.\r\n\r\nLet me know if you\'re interested in seeing samples of our previous work. If you are not interested, just use the link at the bottom.\r\n\r\nRegards,\r\nJoanna\r\n\r\nUnsubscribe: https://removeme.live/unsubscribe.php?d=tgirlsonly.com', '2025-01-19 14:00:04', '2025-01-19 14:00:04'),
(38, 'raymondigninge@gmail.com', 'An innovative method of email distribution.', 'Howdy-doody! tgirlsonly.com \r\n \r\nDid you know that it is possible to send appeal legally and correctly? \r\nWhen such requests are sent, no personal data is used and messages are securely routed to forms designed to receive them and any subsequent appeals. Feedback Forms\' messages are thought of as significant thus avoiding the categorization of them as spam. \r\nCome and give our service a try â€“ itâ€™s free! \r\nWe can deliver up to 50,000 messages for you. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis letter is automatically generated. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.', '2025-01-20 18:35:27', '2025-01-20 18:35:27'),
(39, 'ameliabrown5822@gmail.com', 'YouTube Promotion: 700-1500 new subscribers each month', 'Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically.\r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nAmelia', '2025-01-21 17:48:00', '2025-01-21 17:48:00'),
(40, 'promptbuddy@growthmarketingnow.info', 'Turn AI Prompts Into Profits with This Revolutionary Tool', 'Dear tgirlsonly.com,\r\n\r\nYou may know the growing opportunity in the AI marketâ€”selling high-quality prompts.    But hereâ€™s the thing: the demand for AI prompts isnâ€™t just growing;    itâ€™s skyrocketing.\r\n\r\nAnd with this boom comes a challenge:\r\n\r\nCreating advanced, high-performing prompts takes time.\r\n\r\nScaling them for different niches is even harder.\r\n\r\nSelling them profitably often requires technical skills or a big budget.\r\n\r\nIf youâ€™ve struggled to break into this market, itâ€™s not your fault.    Until now, there hasnâ€™t been an easy, all-in-one solution to create, scale, and sell prompts effortlessly.\r\n\r\nBut what if I told you thereâ€™s a tool that does all the hard work for you?\r\n\r\nIntroducing PromptBuddyâ€”the ultimate AI-powered app designed to help you create, scale, and sell top-notch prompts in minutes: https://www.growthmarketingnow.info/promptbuddys  .    Itâ€™s the shortcut to tapping into this booming AI market without the guesswork, frustration, or wasted time.\r\n\r\nWhat makes PromptBuddy so powerful?    Let me show you:\r\n\r\nGenerate Advanced Prompts Instantly: Just enter a keyword or description, and PromptBuddy creates tailored prompts for ChatGPT, MidJourney, or DALL-E 3 in seconds.\r\n\r\nPreloaded Store with 80,000+ Prompts: Start selling immediately with a store packed with high-demand promptsâ€”no need to create from scratch.\r\n\r\nBulk Prompt Creator: Scale your offerings with niche-specific variations effortlessly.\r\n\r\nSeamless Payment Integration: Connect PayPal, Stripe, or bank accounts to start earning instantly.\r\n\r\nYour prompt store is live in under 60 seconds!\r\n\r\nExclusive Bonus: Be among the first 100 buyers and get a 30 Reseller License (worth $1,997) to sell PromptBuddy as your own product.\r\n\r\ní ½í±‰ Click here to see PromptBuddy in action: https://www.growthmarketingnow.info/promptbuddys  !\r\n\r\nAI tools are transforming industries faster than ever, and the demand for quality prompts is growing daily.    PromptBuddy is your chance to get ahead and build a profitable AI-powered business.\r\n\r\nBut donâ€™t wait too longâ€”early buyers get exclusive bonuses, and this opportunity wonâ€™t last forever.\r\n\r\ní ½í±‰ Claim Your Access to PromptBuddy Now and Start Selling Today: https://www.growthmarketingnow.info/promptbuddys  !\r\n\r\nTo your success,\r\nElsie Coon\r\n\r\n\r\nP.S. Remember, PromptBuddy comes with a 30-day risk-free guarantee.    You have nothing to lose and everything to gain!    Donâ€™t miss this chance to join the AI revolution.    Grab PromptBuddy here!\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.growthmarketingnow.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 144 Rockford Road\r\nReno, NV 89501', '2025-01-22 03:10:49', '2025-01-22 03:10:49'),
(41, '68zcfyr6@icloud.com', 'Your will be removed in 1 day', 'Your account has been inactive for 364 days. To prevent deletion and claim your funds, please log in and request a withdrawal within 24 hours. For help, visit our Telegram group: https://tinyurl.com/2ymjwhlc', '2025-01-22 08:13:46', '2025-01-22 08:13:46'),
(42, 'ameliabrown5822@gmail.com', 'Youtube Promotion: 700 new subscribers each month', 'Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers both safely and practically.\r\n\r\n- We guarantee to gain you 700-1500+ subscribers per month.\r\n- People subscribe because they are interested in your channel/videos, increasing likes, comments and interaction.\r\n- All actions are made manually by our team. We do not use any \'bots\'.\r\n- Channel Creation: If you haven\'t started your YouTube journey yet, we can create a professional channel for you as part of your initial order.\r\n\r\nThe price is just $60 (USD) per month, and we can start immediately.\r\n\r\nIf you have any questions, let me know, and we can discuss further.\r\n\r\nKind Regards,\r\nAmelia', '2025-01-22 17:15:15', '2025-01-22 17:15:15');
INSERT INTO `contact_messages` (`id`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(43, 'spark@increasetraffic.shop', 'Your LAST Hosting Payment', 'What if I told you today your LAST EVER payment for a hosting service is dueâ€¦\r\n\r\nâ€¦and yet youâ€™d still get 100% uptime, blazingly fast loading times,\r\nSUPERIOR service and the best possible support Webmasters/Internet Marketers\r\nwish for\r\n\r\nAND â€“ brand new for 2025: your own premium accounts to over 99\r\ndifferent Ais, including the newly released Sora AI\r\n\r\n Now you can = Introducing SPARK Cloud Hosting: https://www.increasetraffic.shop/spark \r\n\r\nSPARK is the next step in cloud hosting. A revolution like no other that enables you to enjoy:\r\n\r\n[+] Faster loading websites than ever before\r\n[+] 60-Second Quick Setup Using Built-in Wizard\r\n[+] Built-in â€œClickFunnels KILLERâ€ drag & drop funnel builder\r\n[+] 100% uptime with free SSL encryption built-in\r\n[+] Unlimited sites, email accounts & more\r\n[+] Next-Generation Control Panel\r\n[+] Free one-click Wordpress installer\r\n[+] 24/7 support from marketing gurus\r\n\r\nâ€¦ and hereâ€™s the kicker: you get all of this, for LIFE, with just ONE time low fee todayâ€¦\r\n\r\nand if you act FAST, you get the â€œClickFunnels killerâ€ drag&drop page and funnel builder FREE:\r\n\r\n\r\n Get started now (available ONLY during early bird): https://www.increasetraffic.shop/spark \r\n\r\nPlus, get never-seen before features like DDOS protection, built-in malware security and a hacker-proof dedicated server cluster so your sites never go down and never get hacked!\r\n\r\n\r\nâ€¦ and hereâ€™s the kicker: you get all of this PLUS immediate direct access to over 99 premium paid Ais, includingâ€¦ \r\n\r\nSora AI, \r\nChatGPT 4 omni Plus\r\nGoogle Gemini Ultra Advanced\r\nDallE 3 HD\r\nWhisper AI Text-to-Speech\r\nMidjourney Mega\r\nLeonardo AI PRO Plan\r\nMicrosoft Copilot Pro\r\nMeta Llama 3.1\r\n\r\nAnd more.\r\n\r\nGet this today â€“ and enjoy lifetime hosting for nothing (yes thatâ€™s zero\r\nfuture hosting payments)\r\n\r\nYouâ€™re finally able to cancel one of those pesky monthly subscriptions that keep\r\nadding up â€“ and yet get BETTER service than before still!\r\n\r\nItâ€™s a true win-win, but only available until the timer on the page hits ZERO so HURRY!\r\n\r\nOh, and wait till you see the price â€“ you get lifetime hosting for LESS than what you previously used to pay for one month of service!\r\n\r\n Click here now to claim yours: https://www.increasetraffic.shop/spark \r\n\r\nTo your success,\r\nHeather Young\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.increasetraffic.shop/unsubscribe/?d=tgirlsonly.com \r\nAddress: 1968 Logan Lane\r\nDenver, CO 80205', '2025-01-23 04:00:31', '2025-01-23 04:00:31'),
(44, 'djs_music2025@gmail.com', 'New music', 'Hi, \r\n \r\nExclusive promo quality music for VIP DJ\'s https://sceneflac.blogspot.com \r\n440TB MP3/FLAC, Label, LIVESETS, Music Videos.  fans that help you gain full access to exclusive electronic music. \r\n \r\nSceneflac team.', '2025-01-23 15:26:39', '2025-01-23 15:26:39'),
(45, 'mdatraffic@goldtip.shop', 'Unlock Googleâ€™s Page 1 with No SEO and No Cost', 'Hi tgirlsonly.com,\r\n\r\nHave you ever wanted to get on Googleâ€™s page 1 without having to worry about SEO?\r\nWith MDA Traffic, itâ€™s possible, and the best part â€“ it doesnâ€™t cost a thing .\r\n\r\nMDA Traffic uses a clever combination of high-authority sites, interest spikes, and AI to help you rank quickly for valuable, targeted phrases: https://www.goldtip.shop/mdatraffic .\r\n\r\nYou donâ€™t need experience or any technical knowledge.   Just a few minutes to follow the steps, and youâ€™re ready to roll!\r\n\r\nImagine how much targeted traffic you could drive in just a few days.\r\n\r\nWhether youâ€™re promoting affiliate offers, selling your own products, or growing a YouTube channel, MDA Traffic can help you reach the right audience fast.\r\n\r\nReady to get started?\r\n\r\nClick here to discover how to use MDA Traffic: https://www.goldtip.shop/mdatraffic !\r\n\r\nPatrick House\r\n\r\n\r\nUNSUBSCRIBE: https://www.goldtip.shop/unsubscribe/?d=tgirlsonly.com \r\nAddress: 2153 Liberty Avenue\r\nAnaheim, CA 92805', '2025-01-24 12:58:47', '2025-01-24 12:58:47'),
(46, 'liveblueprint@unlockrevenue.info', 'Join Media Labs and Start Earning', 'Hi,\r\n\r\nMedia Labs has helped thousands make 60-second videos and earn thousands monthly. \r\n\r\nBusinesses struggle to find skilled creators. At Media Labs, we train creators to be the internet\'s best, connecting them with brands ready to pay generously for top-notch content.  Join us to start making serious, reliable WIFI money: https://www.unlockrevenue.info/liveblueprint .\r\n\r\nYou will get:\r\n\r\nStable monthly income directly deposited to your bank for making content.\r\nNear immediate access to brand deals and retainers after passing our entry quiz.\r\nAccess to 7 $100,000+ GMV coaches for video feedback\r\nWeekly live calls with the community\r\nUnlock the secrets to VIRAL Livestreams that generate THOUSANDS: https://www.unlockrevenue.info/liveblueprint \r\n\r\n\r\nBest,\r\nJason Klinger\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.unlockrevenue.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 2579 Ritter Street\r\nBirmingham, AL 35203', '2025-01-24 19:21:01', '2025-01-24 19:21:01'),
(47, 'n029ci4b@gmail.com', 'Your will be closed in 24 hours', 'Your account has been inactive for 364 days. To stop removal and retrieve your funds, please log in and request a withdrawal within 24 hours. For support, visit our Telegram group: https://tinyurl.com/27mxtemu', '2025-02-06 00:11:31', '2025-02-06 00:11:31'),
(48, 'kaizen@growthmarketingnow.info', 'How to Make Money with Cryptocurrency', 'Join forces with industry-leading analysts boasting over 5000+ winning trades since September 2023, guiding you through this yearâ€™s bull run with unmatched expertise.\r\n\r\n\r\nWe help you make money in crypto - Kaizen is a premium crypto membership offering expert trade setups, in-depth research, market insights, educational content, and a supportive community to help you win in crypto: https://www.growthmarketingnow.info/kaizen .\r\n\r\nWhat you will get:\r\n	Receive reliable, high-quality trading signals to enhance your market entries.\r\n	Access real-time market analysis and strategies from expert traders.\r\n	Get detailed breakdowns of market trends and forecasts to improve your trading.\r\n	Join a network of traders sharing strategies, tips, and support.\r\n	Gain access to courses and materials to improve your skills and knowledge.\r\n\r\nWebmaster like you have turned his 18k portfolio into 28k in just two weeks: https://www.growthmarketingnow.info/kaizen .         \r\n\r\nRupert Valdez\r\n\r\n\r\nUNSUBSCRIBE: https://www.growthmarketingnow.info/unsubscribe/?d=tgirlsonly.com  \r\nAddress: 4118 Beeghley Street\r\nWest, TX 76691', '2025-02-06 02:20:55', '2025-02-06 02:20:55'),
(49, 'info@speed-seo.net', 'Unlock Your tgirlsonly.com Potential with a Free SEO Score Check', 'Hi, \r\n \r\nCurious about how your website is performing? Discover its strengths and weaknesses with our Free SEO Check Tool! In just 2 minutes, youâ€™ll get a detailed analysis of your websiteâ€™s SEO health and actionable insights to help improve your rankings. \r\n \r\nTake the first step towards better performance and growth. \r\n \r\nRun Your Free SEO Check Now \r\nhttps://www.speed-seo.net/check-site-seo-score/ \r\n \r\nDonâ€™t let overlooked SEO issues hold you back. Optimize your site today and stay ahead of the competition! \r\n \r\nBest regards, \r\n \r\n \r\nMike Florian Martin\r\n \r\nSpeed SEO \r\nWhatsapp us: https://www.speed-seo.net/whatsapp-with-us/', '2025-02-06 21:11:06', '2025-02-06 21:11:06'),
(50, '3s5lpkig@hotmail.com', 'Your account will be deleted in 1 day', 'Your account has been dormant for 364 days. To stop removal and retrieve your funds, please log in and initiate a withdrawal within 24 hours. For assistance, visit our Telegram group: https://tinyurl.com/2997t9q3', '2025-02-07 02:18:04', '2025-02-07 02:18:04'),
(51, 'humanizzer@increasetraffic.shop', 'Ready to Profit from AI?  Create & Sell Tools with Zero Coding!', 'Hey ,\r\n\r\nWhat if I told you thereâ€™s an AI-powered tool that lets you Create Lifelike Human AI Agents ...  and sell them for $2,000, $5,000, or even $10,000 each?\r\n\r\nSounds too good to be true?\r\n\r\nTrust me, itâ€™s real.\r\n\r\nCheckout Humanizzer Now>>>  https://www.increasetraffic.shop/humanizzer \r\n\r\nThis revolutionary platform makes it ridiculously easy to create lifelike Human AI agents that talk, listen, and engage face-to-faceâ€”in your voice, just like \r\nyou!\r\n\r\nBuild, customize, and sell AI agents that look, talk, and interact like real humansâ€”all in just 60 seconds.\r\n\r\nWhat Can Humanizzer Do for You?\r\n\r\nHereâ€™s the secret sauce that makes Humanizzer a profit powerhouse:\r\n\r\nâœ¨ Commercial Licensing: Sell agents to businesses for thousands and pocket the profits:  https://www.increasetraffic.shop/humanizzer !\r\n\r\nâœ¨ Instant Cloning: Turn yourself or anyone else into a realistic AI agent.\r\n\r\nâœ¨ 60+ Pre-Designed Agents: Ready-to-use for any niche, from e-commerce to real estate.\r\n\r\nâœ¨ Global Reach: Detect usersâ€™ locations and respond in their native language.\r\n\r\nâœ¨ 24/7 Availability: Autonomous agents that never sleep or miss an opportunity.\r\n\r\nâœ¨ Multilingual Agents: Engage audiences worldwide with seamless communication.\r\n\r\nâœ¨ Expert Training: Train agents using URLs, PDFs, or videos for specialized knowledge.\r\n\r\nâœ¨ Real-Time Insights: Monitor engagement and optimize for higher conversions.\r\n\r\nâœ¨ Voice Cloning & Customization: Add a truly human touch with personalized voices and accents.\r\n\r\nâœ¨ Effortless Embedding: Add agents to any website with just a few clicks.\r\n\r\nâœ¨ Lead Generation Tools: Gather unlimited leads with advanced forms, surveys, and popups.\r\n\r\nWhy Itâ€™s a Game-Changer\r\n\r\nBusinesses are hungry for AI solutions, but most donâ€™t have the skills to create them.  With Humanizzer, you step in as the expert, offering:\r\n24/7 AI agents that boost sales and engagement.\r\n\r\nFully branded, customizable agents that reflect their businessâ€™s unique personality.\r\n\r\nA seamless, no-tech solution that saves them time and money.\r\n\r\nThe best part?  You donâ€™t need to be a developer or an AI expert.  Humanizzer takes care of the heavy lifting while you focus on growing your income.\r\n\r\nDonâ€™t miss this chance to ride the AI wave and turn ideas into income.\r\n\r\nClick Here to Learn More About Humanizzer Now>>>  https://www.increasetraffic.shop/humanizzer \r\n\r\n& Hereâ€™s The Best Partâ€¦\r\n\r\nFor a limited time, Weâ€™re including Incredible Bonuses that will take your Humanizzer to the next level\r\n\r\nThese bonuses are available for a limited time, so act now!\r\n\r\nTo Your Success,\r\nMario McNamee\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.increasetraffic.shop/unsubscribe/?d=tgirlsonly.com  \r\nAddress: 1368 Wolf Pen Road\r\nSan Francisco, CA 94143', '2025-02-08 01:11:45', '2025-02-08 01:11:45'),
(52, 'humanai@unlockrevenue.info', 'Let AI Humans work for you while you get the profit', 'How would you love to have expert AI Humans to Run Coaching Programs or Do Anything You Can Imagine,\r\n\r\nWhile you just accumulate profit at the backend.\r\n\r\nThatâ€™s why we built Human AI, especially for you.\r\n\r\nTo transform your business without having to do the heavy work yourself.\r\n\r\nHuman AI is the Worldâ€™s First AI App That Lets Youâ€¦ Create & Stream â€œAI Humansâ€ That Listen, Think, React\r\n\r\nYou Can Clone Your Brain And Turn It Into â€œAI Humanâ€ with just a click.\r\n\r\n>> Let AI Humans do the work for you: https://www.unlockrevenue.info/humanai \r\n\r\nNo Tech experience needed\r\nNo sales skills needed\r\nNo complicated setup\r\n\r\nIn fact, you never have to pay monthly to use the Human AIsâ€¦\r\n\r\nAll you need is a one-time activation and you get access to;\r\n\r\nCreate & Stream AI Humans With Just 1 Clickâ€¦\r\nCreate an AI Human With â€œCloneâ€ Of Your Brain, Knowledge, Tone, And Everythingâ€¦\r\nAI Human Handles Any Task, Coaching Programs, Meetings, Interviews, From Sales to Live Streams, Customer Support, and more with zero effort.\r\nFeed Your AI Human With Knowledge From Any Pdfs, Doc, URL, Website, Books, Or Anythingâ€¦\r\nEmbed AI Humans Anywhere With a Single Line of Code (Websites, blogs, stores, funnels, or any platform AI Humans integrate seamlessly\r\nTurn AI Humans Into a 24/7 Profit Machineâ€¦\r\nStart A Profitable Business From Scratch With  Human AI In Less Than 60 Secondsâ€¦\r\n\r\nYou can see how effective Human AI can be for you and your online businessâ€¦\r\n\r\nSo whether you are into digital products, physical products or coaching programs, Human AI will change the game for you.\r\n\r\nYou become the top player in any niche without sleepless nightsâ€¦\r\n\r\n>> Grab Human AI here: https://www.unlockrevenue.info/humanai \r\n\r\nJackie Rapp\r\n\r\n\r\nUNSUBSCRIBE: https://www.unlockrevenue.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 3141 Jim Rosa Lane\r\nOakland, CA 94612', '2025-02-10 11:25:59', '2025-02-10 11:25:59'),
(53, 'aifranchise@bizopphand.info', 'Discover the $247,584.65 secret (it\'s not what you think)', 'Crikey!\r\n\r\nLunchtime already?   Hope you\'re hungry for some mind-blowing truth bombs.\r\n\r\nPicture this: You\'re at a fancy schmancy business seminar, surrounded by suits that cost more than your car.\r\n\r\nThe speaker steps up, looking like he just walked off a magazine cover.\r\n\r\nHe clears his throat and drops this bombshellâ€¦\r\n\r\n\"The key to success is working harder and longer hours.\"\r\n\r\nThe crowd goes wild.\r\n\r\nYou?\r\n\r\nYou\'re fighting the urge to chuck your overpriced seminar coffee at him.\r\n\r\nBecause let\'s face it - you\'ve been there, done that, got the burnout to prove it.\r\n\r\nBut what if I told you there\'s a way to work smarter, not harder?\r\n\r\nA way that\'s already raked in 247,584.65 in record time: https://www.bizopphand.info/aifranchise ?\r\n\r\nAnd no, it\'s not some get-rich-quick scheme or a pyramid scam dressed up in a fancy suit.\r\n\r\nIt\'s a legitimate business that\'s so powerful, it\'s like having a money-printing machine in your pocket.\r\n\r\nThe best part?\r\n\r\nIt costs less than your fancy morning latte.\r\n\r\nI\'m talking about the AI Franchise by Michael Cheney (the OG): https://www.bizopphand.info/aifranchise \r\n\r\nA system so efficient, it makes traditional businesses look like they\'re runningâ€‹ on hamster wheels.\r\n\r\nThis isn\'t about replacing human ingenuity with cold, unfeeling machines.\r\n\r\nIt\'s about leveraging cutting-edge AI to do the heavy lifting while you focus on what really matters - living your best life.\r\n\r\nImagine waking up to find your business has been humming along all night, making money while you were catching Z\'s.\r\n\r\nNo more sacrificing family time for the grind.\r\n\r\nNo more missing out on life\'s precious moments because you\'re glued to your computer.\r\n\r\nThis is your chance to flip the script on what success looks like.\r\n\r\nReady to discover the 247,584.65 secret for yourself?\r\n\r\nClick below and prepare for your mind to be blown: https://www.bizopphand.info/aifranchise \r\n\r\nBest,\r\nLewis Bury\r\n\r\n\r\n\r\nP.S. Success doesn\'t have to mean sacrifice.   Grab your piece of the AI revolution and start living life on your own terms: https://www.bizopphand.info/aifranchise \r\n\r\n\r\nUNSUBSCRIBE: https://www.bizopphand.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 3017 Boggess Street\r\nGreenfield, OH 45123', '2025-02-11 03:01:23', '2025-02-11 03:01:23'),
(54, 'rohtopharmaceutical@via.tokyo.jp', 'Re: Remote Job Opportunity with ROHTO Pharmaceutical', 'Greetings, Mr./Ms. \r\n \r\nWith all due respect. We are looking for a Spokesperson/Financial Coordinator for ROHTO Pharmaceutical Co., Ltd. based in the USA, Canada, or Europe. This part-time role offers a minimum $5k salary and requires only a few minutes of your time daily. It will not create any conflicts if you work with other companies. If interested, please contact apply@rohtopharmaceutical.com \r\n \r\nBest regards, \r\nYasuhiro Yamada \r\nSenior Executive Officer \r\nhttps://rohtopharmaceutical.com/', '2025-02-11 05:29:38', '2025-02-11 05:29:38'),
(55, 'intl.law7@aol.com', 'If you\'re seeking capital to expand or initiate a project, we\'d love to discuss how we can assist.', 'Dear Sir/Madam, \r\n \r\nSecuring funding is a significant challenge for startups and established businesses. Our company specializes in customized financing solutions for both startups and existing enterprises. \r\n \r\nWe offer two flexible options: \r\n \r\n1. Debt financing with a competitive 3% annual interest rate and no early repayment penalties. \r\n2. Venture capital funding in exchange for a modest 10% equity stake, allowing you to access essential resources while retaining control. \r\n \r\nWe understand the unique challenges businesses face and are committed to providing tailored financing solutions. \r\n \r\nFor further details about our funding scheme, please contact me directly at Email waheed@cateusgroup.org \r\n \r\nBest regards, \r\nWaheed Algore \r\nLead Investment Team \r\nEmail waheed@cateusgroup.org', '2025-02-12 11:16:47', '2025-02-12 11:16:47'),
(56, 'googletraffic@getprofitnow.info', 'Unlock Google Traffic with a Weird New Trick â€“ Curious?', 'Hi tgirlsonly.com !\r\n\r\nIf youâ€™re ready to boost your sales and commissions, MDA Traffic has a quick, cost-free hack that only takes 10-15 minutes to set up.\r\n\r\nThis isnâ€™t another ad platform or social media strategy â€“ itâ€™s a method that leverages Google traffic without SEO, cost, or complexity.\r\n\r\nHereâ€™s how it works: MDA Traffic uses third-party assets, AI, and targeted â€œbuyer intentâ€ phrases to help you land high up in Google search results in days: https://www.getprofitnow.info/googletraffic .\r\n\r\nYou donâ€™t need any experience or a budget.   Just follow the simple steps, and you could start seeing results in 1-3 days.\r\n\r\nImagine reaching Googleâ€™s top pages for keywords people are already searching.\r\n\r\nItâ€™s a beginner-friendly way to get noticed without spending hours on SEO or competing with hundreds of others.\r\n\r\nWant to see it in action?\r\n\r\nLearn more about MDA Traffic here: https://www.getprofitnow.info/googletraffic \r\n\r\nEdna Mathis\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.getprofitnow.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 3607 Andy Street\r\nSummit, SD 57266', '2025-02-13 03:27:05', '2025-02-13 03:27:05'),
(57, 'alegriasocialmanagement@outlook.com', 'Accelerate Your Brand\'s Social Media Growth with Alegria\'s Proven Strategies', 'Hello, \r\nI hope you\'re well! Iâ€™m Tina, the founder of Alegria Social, a marketing agency specializing in organic social media growth based in Miami and Dubai. With over nine years of experience and a personal following of 1 million, Iâ€™m confident we can help your brand achieve its goals. \r\nI recently reviewed your Instagram profile and noticed great potential, but also some challenges in audience growth and engagement. Thatâ€™s where we can assist! \r\nWeâ€™ve helped over 250 brands boost sales, followers, and brand awareness, including clients who have collaborated with high-profile figures like Halle Berry. Iâ€™m confident we can bring similar success to your brand too. \r\nWe offer a range of Social Media Account Management packages, including: \r\n \r\n1. Instagram Account Management: 25 posts and 25-50 stories for $750/month. \r\n2. Multi-Account Management: Up to 3 accounts (Pinterest, Instagram, Facebook, TikTok, or Twitter) with 25 posts each for $1200/month. \r\nAll packages include the following services: \r\nContent Strategy: \r\nâ€¢  Content Calendar: Plan and schedule engaging posts in advance. \r\nâ€¢  Diverse Content: Use a mix of text, images, videos, and infographics. \r\nâ€¢  Hashtags: Incorporate relevant keywords for better discoverability. \r\nAnalytics: \r\nâ€¢  Monitoring: Analyze performance data to refine strategies. \r\nâ€¢  A/B Testing: Test different content types and posting times for optimal results. \r\nEngagement: \r\nâ€¢  Responses: Provide timely, personalized replies to comments and messages. \r\nâ€¢  Community Building: Encourage user-generated content and participate in conversations. \r\nBrand Voice and Identity: \r\nâ€¢  Consistency: Maintain a unified brand voice and visual identity. \r\nâ€¢  Authenticity: Foster trust through genuine communication. \r\nTrends and Innovations: \r\nâ€¢  Stay Updated: Monitor trends and adapt strategies accordingly. \r\nâ€¢  Adopt New Features: Embrace tools like Instagram Reels and TikTok trends. \r\nEnclosed is a media kit detailing our services, along with \'before\' and \'after\' results from our Social Media Management within one month. \r\n \r\nWould you be open to a quick Zoom call in the next few days? Iâ€™d love to discuss how we can help grow your brand. If you are interested, please email me at marketing@alegriasocial.com, so we can arrange the call. \r\nBest regards, \r\nTina Toth \r\nFounder, Alegria Social \r\nInstagram: @laelegantia', '2025-02-13 12:31:46', '2025-02-13 12:31:46'),
(58, 'aibotstudio@greatbusi.info', 'AI Bots = Easy Passive Income?  Hereâ€™s Howâ€¦', 'Businesses are desperate for AI automationâ€”and you can provide it.\r\n\r\nWant to launch a profitable online AI Bots business without the usual headaches?\r\n\r\nNo complicated tech. No selling.  No products to create.\r\n\r\nWith AI Bot Studio, you can:\r\n\r\nâœ… Deploy AI chatbots on WhatsApp, Facebook & Instagram in minutes.\r\n\r\nâœ… Sell automation services to businesses that desperately need them: https://www.greatbusi.info/aibotstudio .\r\n\r\nâœ… Let AI do the work while you collect payments.\r\n\r\nThis is the future of online business.\r\n\r\nRight now, you can grab the full AI Bot Studio bundle, which includes everything you need to get startedâ€”no coding, no prior experience required.\r\n\r\ní ½í´— Act now before the bundle deal expires:\r\n\r\ní ½í±‰ Click here to claim your access: https://www.greatbusi.info/aibotstudio \r\n\r\nTo Your Success,\r\n\r\nRoland Pearson \r\n\r\nP.S. The demand for AI automation is exploding.  The sooner you start, the faster you can claim your share of the profitsâ€”get AI Bot Studio now.\r\n\r\n\r\n\r\n\r\nUNSUBSCRIBE: https://www.greatbusi.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 3049 Cook Hill Road\r\nWallingford, CT 06492', '2025-02-14 03:12:10', '2025-02-14 03:12:10'),
(59, 'amandaAxogrero3@gmail.com', 'My thoughts are wild, and theyâ€™re all about youâ€¦  âœ¨', 'Iâ€™m in the mood for something sweet and spicyâ€¦ you?  -  https://rb.gy/es66fc?Faxelupe', '2025-02-14 08:31:01', '2025-02-14 08:31:01'),
(60, 'aifranchise@growwealthy.info', 'From \'hard drive of broken dreams\' to financial freedom (in record time)', 'Boom!\r\n\r\nSo there you were, staring at your computer screen, a graveyard of failed online ventures haunting your hard drive.\r\n\r\nYou\'ve tried everything, haven\'t you?\r\n\r\nCourses that promised the moon but delivered moon dust.\r\n\r\n\"Foolproof\" systems that left you feeling like the fool.\r\n\r\nAnd let\'s not even talk about those late nights spent trying to decipher tech jargon that might as well have been ancient Sanskrit.\r\n\r\nBut here\'s the kicker - while you were busy pulling your hair out, the world didn\'t stop spinning.\r\n\r\nAI swooped in like a digital superhero, ready to save the day.\r\n\r\nAnd guess what?\r\n\r\nIt\'s not here to replace you - it\'s here to empower you.\r\n\r\nImagine having a tireless assistant, working 24/7 to drive traffic to your business: https://www.growwealthy.info/aifranchise .\r\n\r\nNo more begging for clicks or burning cash on ads that perform worse than a dad joke at a teenager\'s party.\r\n\r\nThis AI doesn\'t sleep, doesn\'t complain, and definitely doesn\'t ask for a raise.\r\n\r\nIt\'s like having a team of Silicon Valley whiz kids in your pocket, minus the attitude and the obscene salaries.\r\n\r\nBut here\'s the real magic - you don\'t need to be a tech genius to use it.\r\n\r\nIf you can click a button, you\'re overqualified.\r\n\r\nThis is your chance to turn that hard drive of broken dreams into a treasure trove of success stories.\r\n\r\nMichael Cheney has just released AI Franchise get ready to let AI do the heavy lifting while you reap the rewards.\r\n\r\nStop dreaming and start doing: https://www.growwealthy.info/aifranchise \r\n\r\nBest,\r\n\r\nRyan Pyles\r\n\r\n\r\n\r\nP.S. Don\'t let another one slip through your fingers: https://www.growwealthy.info/aifranchise .\r\n \r\n \r\nUNSUBSCRIBE: https://www.growwealthy.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 4821 Poe Lane\r\nPaola, KS 66071', '2025-02-15 22:49:34', '2025-02-15 22:49:34'),
(61, 'katharina.thurston@gmail.com', 'Day 1: Why Your Marketing Is Failing (And How To Fix It Starting Today)', 'Hi Tgirlsonly,\r\n\r\nLetâ€™s face itâ€”most marketing strategies today are ineffective, leaving business owners frustrated and wondering where all their money went. \r\n\r\nHereâ€™s the truth: Traditional marketing doesnâ€™t work anymore. Itâ€™s about time to shift to direct-response marketing, the proven strategy that generates results in the real world.\r\n\r\nDan Kennedy, one of the leading marketing experts, swears by direct-response marketing, and his strategies have helped thousands of business owners grow their brands. \r\n\r\nLet me show you how to apply it to your business.\r\n\r\nStep 1: Know Your Target Audience\r\n\r\nTargeting everyone is a huge mistake. You must define your ideal customer. Direct-response marketing requires you to speak directly to a specific group of people.\r\n\r\nExample 1:\r\nTarget Audience: Busy professionals\r\n\r\nOffer: â€œQuick and effective workout plans for busy professionals.â€\r\n\r\nThis specific focus allows businesses to craft marketing messages that truly resonate.\r\n\r\nExample 2:\r\nTarget Audience: Aspiring entrepreneurs\r\n\r\nOffer: â€œThe ultimate guide to start your e-commerce store in 30 daysâ€”no prior experience required.â€\r\n\r\nThis appeals directly to the desires of this niche, making the marketing message much stronger.\r\n\r\nStep 2: Clear and Compelling Offer\r\n\r\nA great product is only as good as the offer. The offer should solve a problem and make it impossible for your ideal customer to say no.\r\n\r\nExample 1:\r\nA fitness coach offered: â€œSign up for my program today and receive a free 1-hour coaching session, valued at $300.â€ This added value made the offer irresistible.\r\n\r\nExample 2:\r\nAn e-commerce store offered: â€œFree shipping on all orders over $50, plus a free product with every purchase.â€ The free bonus added to the deal makes it more attractive.\r\n\r\nStep 3: Track Everything\r\n\r\nIf youâ€™re not measuring, youâ€™re guessing. The most successful marketers track their results religiously.\r\n\r\nExample 1:\r\nA car dealership tested their email campaigns and found that subject lines with specific car models drove a 25% higher open rate than generic ones.\r\n\r\nExample 2:\r\nA SaaS company split their traffic between two landing pages: one with a video and one with text. The video version converted 40% more visitors into paying customers.\r\n\r\nYour Action Step:\r\nStart tracking your marketing resultsâ€”whether itâ€™s email opens, clicks, or conversions. If you donâ€™t track, you canâ€™t improve.\r\n\r\nTomorrow, weâ€™ll dive into crafting irresistible offers and how to create something your customers canâ€™t say no to.\r\n\r\nTo your success,\r\nKevin\r\n\r\nWho is Dan Kennedy?\r\nhttps://books.forbes.com/authors/dan-kennedy/\r\n\r\n\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=tgirlsonly.com', '2025-02-17 11:54:52', '2025-02-17 11:54:52'),
(62, 'ugcvaletagency@dollartip.info', 'These \'UGC Videos\' go VIRAL for ANY Business', 'Have you seen how many views and conversions these \"UGC\" type videos are delivering?\r\n\r\n\r\nIn fact, you\'ve probably visit a website and bought a product (or 2) after watching one of these videos WITHOUT even\r\nnoticing.  I know I have í ¾í´£\r\n\r\nWhy?\r\n\r\nWell, simply because these UGC videos have a way of going VIRAL and selling all types of products and services WITHOUT being \'salesy\'\r\n\r\nThey feel real, authentic, and relatableâ€”which is EXACTLY why they work.\r\n\r\ní ½í±‰í ¼í¿¼ Short on time?  See how YOU can start using these SAME type of videos for yourself or for your clients TODAY: https://www.dollartip.info/ugcvaletagency !\r\n\r\nPeople are tired of overproduced ads that scream â€œBUY NOW.â€ But when they see a natural, engaging video that looks like it was made by a real person?\r\n\r\ní ½í²¥ BOOMâ€”trust is built, and traffic/sales start rolling in.\r\n\r\ní ½í²¡ And now, YOU can create these high-converting UGC videos in just minutesâ€¦ WITHOUT ever stepping in front of a camera!\r\n\r\nWith UGC Valet, you can:\r\n\r\nâœ”ï¸ Choose from 30+ real human actors to deliver your message.\r\nâœ”ï¸ Write your own script or let AI craft the perfect pitch for you.\r\nâœ”ï¸ Match your message with the perfect AI voice for natural delivery.\r\nâœ”ï¸ Customize subtitles, emotions, and even backgrounds for full creative control.\r\n\r\ní ½íº€ And the best part?  Itâ€™s all done-for-you in just a few clicks!\r\n\r\nIf you want to start creating videos that get views, build trust, and SELL like crazy, nowâ€™s the time to jump in!\r\n\r\ní ½í´¥ Click here to see UGC Valet in action: https://www.dollartip.info/ugcvaletagency !\r\n\r\nBarney Fowler\r\n\r\nP.S. UGC videos are the FUTURE of marketingâ€” brands are spending MILLIONS on them because they WORK.\r\n\r\n\r\nDonâ€™t miss out on this game-changing tool!\r\n\r\n \r\nUNSUBSCRIBE: https://www.dollartip.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 3965 Cardinal Lane\r\nChampaign, IL 61820', '2025-02-20 17:24:11', '2025-02-20 17:24:11'),
(63, 'amandaAxogreroc@gmail.com', 'Tonightâ€™s perfect for something exciting, donâ€™t you think?  â¤ï¸', 'Iâ€™m in the mood for something sweet and spicyâ€¦ you?  -  https://rb.gy/es66fc?Faxelupe', '2025-02-21 03:29:00', '2025-02-21 03:29:00'),
(64, 'ailiveschoolbuilder@growthmarketingnow.info', 'Start Your Own AI Teacher-Driven Online School !', 'Hey,\r\n\r\nImagine owning your very own AI-powered online school, where LIVE AI teachers handle everythingâ€”from teaching Math, Science, and Languages to conducting interactive LIVE classes without you lifting a finger!\r\n\r\nSounds like the future, right?   Well, the future is here!   í ¼í¾“í ½íº€\r\n\r\nIntroducing AI LIVE School Builder!\r\n\r\nThe worldâ€™s first AI-driven school creation platform that allows you to launch, manage, and monetize your own online school in just minutes.\r\n\r\ní ½í´¹ AI LIVE Teachers: No need to hire instructorsâ€”AI teachers handle all subjects!\r\n\r\ní ½í´¹ Interactive LIVE AI Classes: Your school runs 24/7 with automated lessons.\r\n\r\ní ½í´¹ Built-in Monetization: Charge students and generate passive income on autopilot: https://www.growthmarketingnow.info/ailiveschoolbuilder !\r\n\r\ní ½í´¹ No Tech or Teaching Skills Needed: Everything is done-for-you.\r\n\r\ní ½í´¹ Multiple Niches Supported: Offer courses in coding, business, arts, and more!\r\n\r\ní ½í´¹ Mobile & Desktop Compatible: Students can learn from anywhere, anytime.\r\n\r\nThis is your golden opportunity to tap into the $400 billion e-learning industry and start making money with AI-powered education!\r\n\r\ní ½í²¡ Early adopters will have a massive advantage, so donâ€™t miss out!\r\n\r\ní ½í´¥ Limited-Time Access â€“ Secure Your Spot Now!\r\n\r\nGet ready to revolutionize online education and create an income stream that runs itself: https://www.growthmarketingnow.info/ailiveschoolbuilder !\r\n\r\nTo your success,\r\n\r\nRobert Day\r\n\r\n \r\nUNSUBSCRIBE: https://www.growthmarketingnow.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 3132 Chandler Drive\r\nSpringfield, MO 65806', '2025-02-21 20:35:12', '2025-02-21 20:35:12'),
(65, 'mike@monkeydigital.co', 'Boost Your Website Traffic with Geo-Targeted Social Ads â€“ Only $10 for 10K Visits!', 'Dear Webmaster, \r\n \r\nI wanted to reach out with something that could seriously boost your websiteâ€™s traffic. We work with a trusted ad network that allows us to deliver real, geo-targeted social ads traffic for just $10 per 10,000 visits. \r\n \r\nThis isn\'t bot trafficâ€”itâ€™s engaged traffic, tailored to your target country and niche. \r\n \r\nWhat you get: \r\n \r\n10,000+ genuine visitors for just $10 \r\nCountry-specific traffic for any country \r\nLarger traffic packages available based on your needs \r\nTrusted by SEO expertsâ€”we even use this for our SEO clients! \r\n \r\nInterested? Check out the details here: \r\nhttps://www.monkeydigital.co/product/country-targeted-traffic/ \r\n \r\nOr chat with us on WhatsApp: \r\nhttps://monkeydigital.co/whatsapp-us/ \r\n \r\nLooking forward to working with you! \r\n \r\nBest, \r\nMike Karl Pedersen\r\n \r\nPhone/whatsapp: +1 (775) 314-7914', '2025-02-22 13:28:03', '2025-02-22 13:28:03'),
(66, 'feoagbkw@do-not-respond.me', 'Alice', 'jXM GNrywM qiePTQX IbMakpy ZIVtoYn', '2025-02-22 16:35:10', '2025-02-22 16:35:10'),
(67, 'dobyfinancial@sendnow.win', 'Re: Explore Funding Opportunities', 'Greetings, Mr./Ms. \r\n \r\nIâ€™m Nicholas Doby from an investment consultancy. We connect clients globally with low or no-interest loans to help achieve your goals. Whether for personal or business/project funding, we collaborate with reputable investors to turn your proposals into reality. Share your business plan and executive summary with us at: contact@dobyfinancial.com to explore funding options. \r\n \r\nSincerely, \r\nNicholas Doby \r\nSenior Financial Consultant \r\nhttps://dobyfinancial.com', '2025-02-23 14:04:41', '2025-02-23 14:04:41'),
(68, 'talkingvisualscommercial@goldtip.shop', '90% of content today goes completely unnoticed', 'Hey tgirlsonly.com,\r\n\r\nDid you know that 90% of content today goes completely unnoticed?  í ½í±€\r\n\r\nPeople scroll past lifeless images and dull visuals without a second thought.\r\n\r\nIf your content doesnâ€™t stand out, youâ€™re losing traffic, engagement, andâ€”most importantly â€” money.  í ½í²¸\r\n\r\nHereâ€™s the reality: ordinary images donâ€™t work anymore.\r\n\r\nYou need visuals that grab attention instantly and keep viewers hooked.  Imagine having the power to create:\r\n\r\nâœ… Lifelike talking visuals\r\nâœ… Stunning artwork & animations\r\nâœ… Hilarious animal characters\r\nâœ… Fantasy avatars, 3D models & pixel art\r\n\r\nWhat if you could generate ALL of these in seconds with just a few clicks?\r\n\r\ní ½íº€ Something NEW is hereâ€¦ and it changes EVERYTHING.\r\n\r\nCheck Out Talking Visuals Now => https://www.goldtip.shop/talkingvisualscommercial \r\n\r\nTalking Visuals is the worldâ€™s first AI app that brings images to life in any style you can imagine!\r\n\r\nâœ… Lifelike Humans & AI-Generated Faces\r\nâœ… Animated Cartoons & 3D Avatars\r\nâœ… Funny Animals & Fantasy Characters\r\nâœ… Pixel Art, Film Effects, Sketches & More\r\n\r\nNo design skills?  No problem.  Just type, generate, and watch your visuals talk!\r\n\r\ní ¼í¾¯ Perfect for marketers, content creators, business owners, and anyone who wants to skyrocket traffic.\r\n\r\nClick Here to learn More Details About Talking Visuals >>  https://www.goldtip.shop/talkingvisualscommercial \r\n\r\nWith Talking Visuals, Get This Coolest Bonuses Alsoâ€¦ \r\n\r\nClick Here to Get Instant Access of Talking Visuals Right Now >>  https://www.goldtip.shop/talkingvisualscommercial \r\n\r\nTo Your Success,\r\n\r\nRobert Sosa\r\n\r\n \r\nUNSUBSCRIBE: https://www.goldtip.shop/unsubscribe/?d=tgirlsonly.com \r\nAddress: 3542 Murphy Court\r\nIrvine, CA 92614', '2025-02-23 19:55:43', '2025-02-23 19:55:43'),
(69, 'potiondiscord@increasetraffic.shop', 'Make insane profits with memecoins', 'Potion Alpha is the #1 online crypto platform where over 100,000 members collaborate to master blockchain trading.   \r\n\r\nWhether you\'re a beginner or an experienced trader, our entire team at Potion Alpha is focused on helping you win with real-time tools, memecoin scanning, and exclusive bots.      \r\n\r\nJoin us, and letâ€™s grow together: https://www.increasetraffic.shop/potiondiscord !\r\n\r\nWhat you will get:\r\n	Learn crypto trading live, regardless of your experience level.\r\n	Access exclusive live streams to spot real-time memecoin opportunities: https://www.increasetraffic.shop/potiondiscord .\r\n	Analyze social media use, top holders, and more with custom bots.\r\n	Stay ahead by tracking influencers on Crypto Twitter and their insights.\r\n	Follow top traders\' blockchain activities with lightning-speed updates.\r\n	Gain access to the supportive community to enhance your crypto trading skills.\r\n\r\nTo your success,\r\n\r\nMarvin Rawlins\r\n\r\n\r\n \r\nUNSUBSCRIBE: https://www.increasetraffic.shop/unsubscribe/?d=tgirlsonly.com \r\nAddress: 673 Glen Falls Road\r\nPhiladelphia, PA 19104', '2025-02-23 23:05:22', '2025-02-23 23:05:22'),
(70, 'clayton.robledo66@msn.com', '[1]: The Game-Changer for Digital Marketers', 'Hi Tgirlsonly,\r\n\r\nIn todayâ€™s competitive world of digital marketing, finding tools and systems that can help streamline the process while maximizing efficiency is essential. \r\n\r\nOne tool that has recently been gaining attention among savvy marketers is the PLR funnel.\r\n\r\nPLR (Private Label Rights) funnels provide an incredible opportunity for digital marketers to automate their lead generation and sales processes without reinventing the wheel. \r\n\r\nInstead of spending time and money creating content from scratch, marketers can leverage PLR productsâ€”which are ready-made, customizable, and ready to go.\r\n\r\nThis blog post will dive deep into why PLR funnels are the game-changer for marketers and how you can leverage them to scale your business rapidly. \r\n\r\nI will explore the benefits, the step-by-step process of setting up PLR funnels, and provide real-life examples to help you understand how you can use them effectively.\r\n\r\nLearn More Here: \r\nhttps://marketersmentor.com/game-changer-for-digital-marketers.php?refer=tgirlsonly.com\r\n\r\nTalk soon,\r\nJayrn\r\n\r\n\r\n\r\n\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=tgirlsonly.com', '2025-02-25 21:57:02', '2025-02-25 21:57:02'),
(71, 'info@strictlydigital.net', 'Semrush links for tgirlsonly.com', 'Hi there, \r\n \r\nHaving some collection of links pointing to tgirlsonly.com might bring zero worth or worse for your site. \r\n \r\nIt really isnâ€™t important the total backlinks you have, what is key is the number of ranking terms those websites appear in search for. \r\n \r\nThat is the most important factor. \r\nNot the meaningless Domain Authority or Domain Rating. \r\nThat anyone can do these days. \r\nBUT the volume of Google-ranked terms the websites that link to you contain. \r\nThatâ€™s the bottom line. \r\n \r\nGet these quality links point to your website and your rankings will skyrocket! \r\n \r\nWe are offering this special service here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nIn doubt, or want to know more, chat with us here: \r\nhttps://www.strictlydigital.net/whatsapp-us/ \r\n \r\nKind regards, \r\nMike Berndt Mertens\r\n \r\nstrictlydigital.net \r\nPhone/WhatsApp: +1 (877) 566-3738', '2025-02-27 01:31:34', '2025-02-27 01:31:34'),
(72, 'ailiveschoolbuilder@unlockrevenue.info', 'Passive Income Goldmine = AI LIVE Teachers + Online School  !', 'Hey,\r\n\r\nWhat if you could own a fully automated online school with AI-powered LIVE teachers teaching your studentsâ€”while you sit back and earn passive income?\r\n\r\ní ½íº€ Introducing AI LIVE School Builder!\r\n\r\nFor the first time ever, you can launch your own AI-driven online school in just minutesâ€”no tech skills, no hiring, and no teaching experience required: https://www.unlockrevenue.info/ailiveschoolbuilder !\r\n\r\nHereâ€™s How It Works:\r\n\r\nâœ… AI LIVE Teachers â€“ They teach, engage, and interact with students automatically!\r\n\r\nâœ… Done-for-You AI LIVE Classes â€“ Covering subjects like Math, Science, Languages, and more!\r\n\r\nâœ… Built-in Monetization â€“ Charge students and earn passive income on autopilot!\r\n\r\nâœ… No Tech Hassles â€“ Everything is ready-made, just plug & play!\r\n\r\nâœ… Global Learning Access â€“ Students can join from anywhere, anytime!\r\n\r\ní ½í²° The online education market is exploding, projected to hit $400B+ by 2027!   Now is the perfect time to claim your share of this booming industry.\r\n\r\nBe Among the First to Profit!\r\n\r\ní ½í´¥ Limited Early Access Spots Available â€“ Donâ€™t Miss Out!\r\n\r\ní ½í±‰ Claim Your AI LIVE School Now: https://www.unlockrevenue.info/ailiveschoolbuilder \r\n\r\nJoel Martinez\r\n\r\n \r\nUNSUBSCRIBE: https://www.unlockrevenue.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 4198 Cedar Lane\r\nBoston, MA 02210', '2025-02-27 17:24:02', '2025-02-27 17:24:02'),
(73, 'amandaAxogreroa@gmail.com', 'Tonightâ€™s perfect for something exciting, donâ€™t you think?  âœ¨', 'Iâ€™m in the mood for something sweet and spicyâ€¦ you?  -  https://rb.gy/es66fc?Faxelupe', '2025-02-27 22:08:55', '2025-02-27 22:08:55'),
(74, 'projectuganda256@gmail.com', 'Acknowledgment', 'Greetings, \r\n \r\nI hope this message finds you well. We are seeking strategic business partners and individuals interested in collaborating on exclusive investment opportunities. We represent a network of high-net-worth individuals (HNWIs) from Ukraine, Russia, Africa and the Middle East \r\n \r\nGiven the nature of the funds, further details will be shared upon request including amount involved. If it interests you to collaborate with us at no risk, please feel free to reach out for a confidential discussion. \r\n \r\nLooking forward to your response. \r\n \r\nBest regards, \r\n \r\nAlex Amin \r\nEmail: abcgconsult@gmail.com', '2025-02-28 12:22:34', '2025-02-28 12:22:34'),
(75, 'talkingvisualscommercial@getprofitnow.info', 'Create Lifelike Talking Visuals and Sell Them via AI', 'Hey ,\r\n\r\nSay Goodbye to Boring & Lifeless Visuals That FAIL to Grab Attention!\r\n\r\nCreates Lifelike Talking Visuals in Just 60 Seconds Such As â€¦.\r\n\r\nTalking Human Photos\r\nUltra Realistic 4k Images\r\nAmazing Product Images\r\nAnimated Talking Cartoons\r\nFunny Talking Animals\r\nFantasy Characters & 3D Avatars\r\nPixel Art & AI-Generated Faces\r\nAnd Much More.\r\nSimply Use It for Social Media, Websites, Funnels, Ads,  YouTube Shorts, Product Demos & Moreâ€¦! Or, sell on Fiverr, Upwork & to businesses for Huge Profit\r\n\r\nAnd all this will be possible with the help of this AI Appâ€¦\r\n\r\nSee it In Action Now => https://www.getprofitnow.info/talkingvisualscommercial \r\n\r\nHow It Works\r\n\r\n1) Login â€“ Access the AI-powered visual creation app.\r\n2) Create â€“ Enter a keyword, and AI generates stunning images, talking humans, animated cartoons, GIFs, logos & moreâ€”in seconds!\r\n3) Profit â€“ Use for your brand or sell on Fiverr, Upwork & to businesses for BIG earnings!\r\n\r\nClick Here to learn More Details About Talking Visuals >> https://www.getprofitnow.info/talkingvisualscommercial \r\n\r\nWith Talking Visuals, Get This Coolest Bonuses Alsoâ€¦\r\n\r\nClick Here to Get Instant Access of Talking Visuals Right Now >> https://www.getprofitnow.info/talkingvisualscommercial \r\n\r\nTo Your Success,\r\n\r\nValerie Hall\r\n\r\n \r\nUNSUBSCRIBE: https://www.getprofitnow.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 2430 Briarwood Road\r\nSpringfield, MO 65804', '2025-03-01 00:42:30', '2025-03-01 00:42:30'),
(76, 'mike@monkeydigital.co', 'Collaboration Request', 'Hey, \r\n \r\nThis is Mike from Monkey Digital, \r\nI am reaching out regarding a mutual opportunity. \r\n \r\nHow would you like to show our ads on your platform and connect via your personalized referral link towards high-demand products from our website? \r\n \r\nThis way, you make a 35% commission, every month from any sales that are made from your site. \r\n \r\nThink about it, everyone require SEO, so this is a big opportunity. \r\n \r\nWe already have over 12,000 affiliates and our payouts are sent every month. \r\nLast month, we distributed a significant amount in affiliate earnings to our promoters. \r\n \r\nIf this sounds good, kindly chat with us here: \r\nhttps://monkeydigital.co/affiliates-whatsapp/ \r\n \r\nOr sign up today: \r\nhttps://www.monkeydigital.co/join-our-affiliate-program/ \r\n \r\nCheers, \r\nMike Gerhard Miller\r\n \r\nPhone/whatsapp: +1 (775) 314-7914', '2025-03-03 02:13:42', '2025-03-03 02:13:42'),
(77, 'joannariggs278@gmail.com', 'Explainer Video for tgirlsonly.com', 'Hi,\r\n\r\nI just visited tgirlsonly.com and wondered if you\'d ever thought about having an engaging video to explain what you do?\r\n\r\nOur videos cost just $195 for a 30 second video ($239 for 60 seconds) and include a full script, voice-over and video.\r\n\r\nI can show you some previous videos we\'ve done if you want me to send some over. Let me know if you\'re interested in seeing samples of our previous work.\r\n\r\nRegards,\r\nJoanna', '2025-03-04 00:13:24', '2025-03-04 00:13:24'),
(78, 'matilda.blakeney42@gmail.com', '[1]: How to Attract Customers Like a Pro', 'Hi Tgirlsonly,\r\n\r\nI still remember sitting at my desk, staring at my sales numbers, wondering why nothing was working. \r\n\r\nI had tried everythingâ€”running ads, tweaking my website, and offering discountsâ€”but my results were frustratingly inconsistent. \r\n\r\nOne month would bring a flood of leads, and the next? Crickets.\r\n\r\nThen, I stumbled across a simple shift in strategy that changed everything. \r\n\r\nInstead of chasing customers, I learned how to pull them in naturallyâ€”creating messaging and systems that made my business the only logical choice. \r\n\r\nThe impact was immediate, and today, Iâ€™m sharing the exact strategies so you can do the same.\r\n\r\nLet\'s dive in: \r\nhttps://marketersmentor.com/attract-customers.php?refer=tgirlsonly.com\r\n\r\nTalk soon,\r\nJayrn\r\n\r\n\r\n\r\n\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=tgirlsonly.com', '2025-03-06 13:02:38', '2025-03-06 13:02:38'),
(79, 'nomin.momin+172p4@mail.ru', 'Ncfwuwjijdwefjehue iwiqkwodeigi irwodwofjihgrjeo owofjiegheijwodkowj ihiwdowdkwojefgihg tgirlsonly.com', 'Nfwhdkjdwj rdqskwjfej wkdwodkwkifjejr okeowjrfiejfiej rowjedowkrfiejfi jrowkorwkjrfejfi jorkdworefoijfeijfowek okdwofjiejgierjfoe tgirlsonly.com', '2025-03-07 00:14:42', '2025-03-07 00:14:42'),
(80, 'complyfi@getmoreopportunities.info', 'Turn Legal Requirements Into Profitsâ€”This Is Your Golden Ticket!', 'Hey ,\r\n\r\nComplyfi is officially LIVE, and this is your chance to grab it at the lowest price it will ever be.\r\n\r\nEvery website is now required to meet strict compliance standards for GDPR, CCPA, Google Consent Mode V2, and more.  Without it, businesses risk losing ad revenue, facing legal fines, and even getting shut down.  This isnâ€™t optionalâ€”itâ€™s mandatory.\r\n\r\nThatâ€™s where Complyfi comes in.  Itâ€™s the ultimate, done-for-you compliance tool that makes any website fully compliant in secondsâ€”without the complicated legal hassle.\r\n\r\nâœ… Instantly scans & detects cookies for full compliance\r\n\r\nâœ… One-click Google & Microsoft Consent Mode V2 setup\r\n\r\nâœ… Multilingual AI-powered consent banners\r\n\r\nâœ… Custom branding & design for your clients\r\n\r\nâœ… Built-in GDPR request management & reporting\r\n\r\nâœ… Works with ANY website & platform\r\n\r\nWhy does this matter for you?\r\n\r\nBecause right now, businesses are scrambling to get compliant, and theyâ€™ll happily pay you to do it for them: https://www.getmoreopportunities.info/complyfi .  With Complyfi, you can:\r\n\r\ní ½í²° Offer compliance services & charge premium fees\r\n\r\ní ½í²° Sell Complyfi access & keep 100% of the profits\r\n\r\ní ½í²° Create a recurring revenue stream as businesses renew their compliance\r\n\r\ní ½í²° Provide an essential solution every online business MUST have\r\n\r\nAnd hereâ€™s the dealâ€”this special launch pricing is disappearing soon.  If you wait, youâ€™ll end up paying more later or missing out on the lucrative reseller opportunity entirely.\r\n\r\nTime is running out.  The rules are changing, enforcement is tightening, and businesses that donâ€™t take action now will regret it.\r\n\r\nGet Complyfi today at the best price ever and start offering this high-demand service now.\r\n\r\ní ½í±‰ Grab Your License Before Itâ€™s Too Late: https://www.getmoreopportunities.info/complyfi \r\n\r\nDonâ€™t wait until itâ€™s too late.  The compliance wave is hereâ€”position yourself on the right side of it.\r\n\r\nTo your success,\r\n\r\nRoger Hummer\r\n\r\n \r\nUNSUBSCRIBE: https://www.getmoreopportunities.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 235 Primrose Lane\r\nMadison, WI 53705', '2025-03-07 01:06:29', '2025-03-07 01:06:29'),
(81, 'amandaAxogrero3@gmail.com', 'New message for you!', '\"I adore spontaneous decisions â€” join me at https://rb.gy/44z0k7?Faxelupe ?\"', '2025-03-07 04:15:55', '2025-03-07 04:15:55'),
(82, 'info@speed-seo.net', 'Unlock Your tgirlsonly.com Potential with a Free SEO Score Check', 'Hi, \r\n \r\nCurious about how your online presence is performing? \r\nFind out its pros and cons with our Complimentary SEO Check Tool! \r\n \r\nIn just 2 minutes, youâ€™ll get a in-depth breakdown of your search performance and steps to enhance your visibility. \r\n \r\nGet started towards better performance and online authority. \r\n \r\nRun Your Free SEO Check Now \r\nhttps://www.speed-seo.net/check-site-seo-score/ \r\n \r\nDonâ€™t let overlooked optimization problems damage your rankings. \r\nOptimize your website today and become more visible in Google! \r\n \r\nNeed more info? Whatsapp with a SEO expert: https://www.speed-seo.net/whatsapp-with-us/ \r\n \r\nBest regards, \r\n \r\n \r\nMike Berndt Jones\r\n \r\nSpeed SEO \r\nPhone/WhatsApp: +1 (833) 454-8622', '2025-03-08 14:51:38', '2025-03-08 14:51:38');
INSERT INTO `contact_messages` (`id`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(83, 'divine@increasetraffic.shop', 'There are a ton of different channels to make money', 'Join the #1 top-rated group online.  Making members more profit than any group with Reselling, Price Errors, Trading, Crypto, Hidden Clearance, Sneakers, LEGO and more: https://www.increasetraffic.shop/divine !\r\n\r\nDivine isnâ€™t just one personâ€”itâ€™s a powerhouse of experts, each specializing in different niches of online income.  Over the years, weâ€™ve built an elite team skilled in reselling, ticket flipping, trading, crypto, NFTs, and more.  Together, weâ€™ve redefined the industry, delivering exclusive, top-tier insights that canâ€™t be found anywhere else.\r\n\r\n5 DAY TRIAL: https://www.increasetraffic.shop/divine !\r\nExclusive Hidden Clearance software to find profitable deals\r\nCutting-edge Crypto & Trading Insights\r\nDozens of guides for sellers of all levels.\r\nHidden Clearance reports from exclusive stock-checkers.\r\n\r\nThere are a ton of different channels with different avenues to make money.  Webmaster like you have only been in for a day and hit a $300 profit shoe.\r\n\r\n\r\nBest,\r\nJohn Smith\r\n\r\n\r\n \r\nUNSUBSCRIBE: https://www.increasetraffic.shop/unsubscribe/?d=tgirlsonly.com \r\nAddress: 236 Highland View Drive\r\nSacramento, CA 95826', '2025-03-09 00:20:58', '2025-03-09 00:20:58'),
(84, 'workforceai@unlockrevenue.info', 'Access to the best AI models in the worldâ€”all in one dashboard', 'Hey,\r\n\r\nSomething incredible has been happening over the last few days.\r\n\r\nMore than 1,036 people have already signed up for WorkForceAI, locking in their one-time payment before the price increase.\r\n\r\nThe reason so many people are jumping in?\r\n\r\nThey know that AI-powered content creation is the futureâ€”and they want to be ahead of the curve before this becomes mainstream.\r\n\r\nRight now, WorkForceAI gives you access to the best AI models in the worldâ€”all in one dashboard:\r\n\r\nâœ”ï¸ Complete content marketing automation: https://www.unlockrevenue.info/workforceai \r\nâœ”ï¸ AI image generation with Midjourney\r\nâœ”ï¸ AI influencer avatars that attract brand deals\r\nâœ”ï¸ Voice cloning in 150+ languages\r\n\r\n\r\nThis is your last chance to get in before the price goes up.\r\n\r\ní ½í³Œ Click here to secure your copy before the deal ends: https://www.unlockrevenue.info/workforceai \r\n\r\nAngel Kelly\r\n\r\n \r\nUNSUBSCRIBE: https://www.unlockrevenue.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 4007 Longview Avenue\r\nBrooklyn, NY 11212', '2025-03-11 19:40:58', '2025-03-11 19:40:58'),
(85, 'ocopesuq299@gmail.com', 'Aloha  i am wrote about your the price', 'Sveiki, aÅ¡ norÄ—jau suÅ¾inoti jÅ«sÅ³ kainÄ….', '2025-03-11 23:56:40', '2025-03-11 23:56:40'),
(86, 'blandowski.pansy@gmail.com', '[1]: The Hidden Formula to Getting Unlimited Traffic', 'Hi Tgirlsonly,\r\n\r\nA few years ago, I was struggling to get traffic to my online business. \r\n\r\nI had built what I thought was the perfect website, had an amazing offer, and even spent money on adsâ€”but nothing worked. \r\n\r\nIt felt like I was shouting into the void, hoping someone would notice me.\r\n\r\nThen, I discovered a completely different approach, one that top entrepreneurs quietly use to attract a flood of traffic without constantly chasing it. \r\n\r\nThe secret? Traffic isnâ€™t createdâ€”itâ€™s redirected. Instead of hoping people find you, you strategically position yourself where they already are.\r\n\r\nThis simple shift changed everything for me. Itâ€™s the foundation of what some of the most successful marketers use to drive traffic effortlessly. \r\n\r\nIf youâ€™ve ever wondered how certain businesses seem to attract leads on autopilot, today, Iâ€™ll break down the step-by-step process so you can do the same.\r\n\r\nLet\'s dive in: \r\nhttps://marketersmentor.com/unlimited-traffic.php?refer=tgirlsonly.com\r\n\r\nTalk soon,\r\nJayrn\r\n\r\n\r\n\r\n\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=tgirlsonly.com', '2025-03-12 10:17:40', '2025-03-12 10:17:40'),
(87, 'info@professionalseocleanup.com', 'Improve your website`s ranks totally free', 'Hi there, \r\n \r\nWhile checking your tgirlsonly.com for its ranks, I have noticed that \r\nthere are some toxic links pointing towards it. \r\n \r\nGrab your free clean up and improve ranks in no time \r\nhttps://www.professionalseocleanup.com/ \r\n \r\nAsk us how we do it: \r\nhttps://www.professionalseocleanup.com/whatsapp/ \r\n \r\nRegards \r\nMike Oliver Janssens\r\n \r\nPhone: +1 (855) 221-7591', '2025-03-15 23:27:42', '2025-03-15 23:27:42'),
(88, 'duqotayowud23@gmail.com', 'Hi  i am wrote about   the price', 'Dia duit, theastaigh uaim do phraghas a fhÃ¡il.', '2025-03-17 04:12:48', '2025-03-17 04:12:48'),
(89, 'john@protdskeit.ru', 'lkjdretlvssss www.yandex.ru', 'lkjdretlvssss www.yandex.ru', '2025-03-17 07:26:58', '2025-03-17 07:26:58'),
(90, 'infinitycapitalmru@gmail.com', 'Important Message', 'Greetings, \r\n \r\nI hope this message finds you well. We are seeking strategic business partners and individuals interested in collaborating on exclusive investment opportunities. We represent a network of high-net-worth individuals (HNWIs) from Ukraine, Russia, Africa and the Middle East \r\n \r\nGiven the nature of the funds, further details will be shared upon request including amount involved. If it interests you to collaborate with us at no risk, please feel free to reach out for a confidential discussion. \r\n \r\nLooking forward to your response. \r\n \r\nBest regards, \r\n \r\nAlex Amin \r\nEmail:alexanderamin@infinitycapitalinc.org', '2025-03-17 14:33:48', '2025-03-17 14:33:48'),
(91, 'stockdreams@getprofitnow.info', 'Turn Your Creativity Into Cash Flow with StockDreams AI', 'You\'re familiar with powerhouse marketplaces like Envato.com, and its sibling, Envato Elements, right?\r\n\r\nHere\'s an eye-opener: there are over 1,500 creators there, raking in full-time incomes by offering their creative work. And that\'s just the tip of the iceberg.\r\n\r\nWondering how to carve out your slice of this multi-million dollar pie?\r\n\r\nThe answer is creating in-demand, stunning graphics that buyers are eager to use.\r\n\r\nAnd for that, there\'s no better shortcut than StockDreams: https://www.getprofitnow.info/stockdream \r\n\r\nCheck out the link, and you\'ll witness the cutting-edge, all you need design app we call StockDreams in action.\r\n\r\nStockDreams hands you an extensive array of templatesâ€”plus ongoing additionsâ€”enabling you to craft eye-catching designs right out of the gate, skill level notwithstanding. Absolute beginners? You bet.\r\n\r\nImagine diving into StockDreams, picking a base design, adding your personal touch, and then uploading your finished product to platforms like Envato, iStockPhoto, Shutterstock, and more.\r\n\r\nThe moment your creation is downloaded, you start earning. Thatâ€™s passive income made real, right at your fingertips.\r\n\r\nBut generating passive income in 2020 and beyond is just one way StockDreams can serve your financial ambitions.\r\n\r\nIn fact, I\'ve identified at least five other strategies to leverage StockDreams for profit, potentially even more.\r\n\r\nCurious about these strategies?\r\n\r\nClick here to discover the full potential of StockDreams: https://www.getprofitnow.info/stockdream \r\n\r\nCan\'t wait to see you succeed,\r\nGlenn Sease\r\n\r\n\r\nUNSUBSCRIBE: https://www.getprofitnow.info/unsubscribe/?d=tgirlsonly.com   \r\nAddress: 1920 Gore Street\r\nHouston, TX 77030', '2025-03-17 17:28:50', '2025-03-17 17:28:50'),
(92, 'ftpmusic2025@gmail.com', 'Old, new music 70s, 80s, 90s...', 'Hello, \r\n \r\nExclusive promo quality music for DJs https://0daymusic.org \r\nMP3/FLAC, label, music videos. Fans giving you full access to exclusive electronic, rap, rock, trance, dance... music. \r\n \r\n0day team.', '2025-03-20 20:40:21', '2025-03-20 20:40:21'),
(93, 'wyatt.fries@googlemail.com', 'Most Entrepreneurs Struggle Because of This', 'Hey Tgirlsonly,\r\n\r\nThe brutal truth about business success is this:\r\n\r\nHard work alone wonâ€™t make you rich.\r\n\r\nYou can hustle 24/7, post on social media, and follow the â€œtrendyâ€ marketing tacticsâ€¦\r\n\r\ní ½íº« Yet STILL struggle to grow your business.\r\n\r\nWhy? Because most entrepreneurs ignore what actually makes money.\r\n\r\nDan Kennedy changed everything for me.\r\n\r\nDan is the go-to guy for the worldâ€™s top entrepreneurs when they need to:\r\nâœ… Make more sales without relying on social media\r\nâœ… Turn cold leads into buyersâ€”FAST\r\nâœ… Use no B.S. marketing strategies that actually work\r\n\r\nNow, you can access Danâ€™s private business insights inside his No B.S. Newsletterâ€¦\r\n\r\ní ½í²¡ For a limited time, you can get it (+ exclusive bonuses) at a huge discount.\r\n\r\nâ³ This offer disappears soonâ€”donâ€™t miss it:\r\n\r\ní ½í±‰ Grab it now\r\nhttps://marketersmentor.com/marketing-strategies.php?refer=tgirlsonly.com\r\n\r\nSee you inside,\r\nJayrn\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=tgirlsonly.com', '2025-03-20 22:55:05', '2025-03-20 22:55:05'),
(94, 'ftpmusic2025@gmail.com', 'Old, new music 70s, 80s, 90s...', 'Hello, \r\n \r\nExclusive promo quality music for DJs https://0daymusic.org \r\nMP3/FLAC, label, music videos. Fans giving you full access to exclusive electronic, rap, rock, trance, dance... music. \r\n \r\n0day team.', '2025-03-21 20:00:05', '2025-03-21 20:00:05'),
(95, '7figure@moredollar.info', 'The Easy Road To Financial Freedom', 'Itâ€™s the ultimate goal \r\n\r\nThe freedom to buy what you want without looking at the price tag, do whatever whenever without filling in a leave request form, go wherever you want cause you have the bank balance to support you\r\n\r\nNow meet a guy who started out as the little guy and achieved multi-millionaire status all working from home on the internet\r\n\r\n>>>Financial Freedom find out the easy way: https://www.moredollar.info/7figure \r\n\r\nTalk soon,\r\n\r\nJohn McPeters\r\n\r\n\r\n\r\n \r\nUNSUBSCRIBE: https://www.moredollar.info/unsubscribe/?d=tgirlsonly.com \r\nAddress: 4963 Leisure Lane\r\nMoorpark, CA 93021', '2025-03-21 22:42:02', '2025-03-21 22:42:02'),
(96, 'info@digital-x-press.com', 'SEO Takes Time â€“ See the Results', 'Hello, \r\n \r\nI understand that many find it challenging understanding that SEO takes patience and a strategic monthly approach. \r\n \r\nUnfortunately, very few businesses have the willingness to witness the progressive yet business-changing results that can completely change their company. \r\n \r\nWith Googleâ€™s evolving algorithms, a consistent, ongoing optimization plan is necessary for securing a high return on investment. \r\n \r\nIf you agree this as the best approach, work with us! \r\n \r\nCheck out Our Monthly SEO Services \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\nContact Us on Instant Messaging \r\nhttps://www.digital-x-press.com/whatsapp-us/ \r\n \r\nWe deliver measurable growth for your marketing budget, and you will be glad choosing us as your growth partner. \r\n \r\nBest regards, \r\nDigital X SEO Experts \r\nPhone/WhatsApp: +1 (844) 754-1148', '2025-03-22 10:50:36', '2025-03-22 10:50:36'),
(97, 'mike@monkeydigital.co', 'Grow Your Website Traffic with Geo-Targeted Social Ads â€“ Only $10 for 10K Visits!', 'Hello, \r\n \r\nI wanted to reach out with something that could seriously improve your websiteâ€™s visitor count. We work with a trusted ad network that allows us to deliver genuine, country-targeted social ads traffic for just $10 per 10,000 visits. \r\n \r\nThis isn\'t junk clicksâ€”itâ€™s real visitors, tailored to your target country and niche. \r\n \r\nWhat you get: \r\n \r\n10,000+ real visitors for just $10 \r\nLocalized traffic for multiple regions \r\nHigher volumes available based on your needs \r\nTrusted by SEO expertsâ€”we even use this for our SEO clients! \r\n \r\nInterested? Check out the details here: \r\nhttps://www.monkeydigital.co/product/country-targeted-traffic/ \r\n \r\nOr connect instantly on WhatsApp: \r\nhttps://monkeydigital.co/whatsapp-us/ \r\n \r\nLooking forward to getting you more traffic! \r\n \r\nBest, \r\nMike Marcus Larsen\r\n \r\nPhone/whatsapp: +1 (775) 314-7914', '2025-03-22 22:55:40', '2025-03-22 22:55:40'),
(98, 'jay.stone84@hotmail.com', 'How This Brand Sold Out in 48 Hours (Without Ads)', 'Hey Tgirlsonly,\r\n\r\nImagine launching a product and selling out in 48 hoursâ€”without spending a fortune on ads. Sounds like a dream, right?\r\n\r\nThatâ€™s exactly what happened to EcoStride, a sustainable sneaker brand. Instead of relying only on ads, they used a press release to get featured on Yahoo Finance, Google News, and 150+ media sites.\r\n\r\nâœ… 11,400+ visitors in 5 days\r\nâœ… 300+ sales before ads even started\r\nâœ… 100% free organic traffic from media coverage\r\n\r\nAnd the best part? Writing a press release used to be time-consuming and difficult, but now EIN Presswireâ€™s AI Press Release Generator makes it fast and effortless.\r\n\r\nJust enter your details, let AI craft a professional press release, and distribute it to top-tier media instantly.\r\n\r\nLaunch your next product the smart way.\r\n\r\nTry It Today: https://marketersmentor.com/sold-out-product-launch.php?refer=tgirlsonly.com&real=yes\r\n\r\nTo your success,\r\nJayrn\r\n\r\n\r\nUnsubscribe: \r\nhttps://marketersmentor.com/unsubscribe.php?d=tgirlsonly.com&real=yes', '2025-03-26 12:43:30', '2025-03-26 12:43:30'),
(99, 'katelynraiden81@gmail.com', 'YouTube Promotion: Grow your subscribers by 700-1500 each month', 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count safely and practically. \r\n\r\n- Guaranteed: We guarantee to gain you 700-1500 new subscribers each month.\r\n- Real, human subscribers who subscribe because they are interested in your channel/videos.\r\n- Safe: All actions are done, without using any automated tasks / bots.\r\n\r\nOur price is just $60 (USD) per month and we can start immediately.\r\n\r\nIf you are interested then we can discuss further.\r\n\r\nKind Regards,\r\nKatelyn', '2025-03-30 06:49:56', '2025-03-30 06:49:56'),
(100, 'info@strictlydigital.net', 'Semrush links for tgirlsonly.com', 'Greetings, \r\n \r\nGetting some bunch of links pointing to tgirlsonly.com could have zero worth or negative impact for your website. \r\n \r\nIt really isnâ€™t important the number of inbound links you have, what matters is the amount of ranking terms those domains are optimized for. \r\n \r\nThat is the key thing. \r\nNot the meaningless Domain Authority or ahrefs DR score. \r\nAnyone can manipulate those. \r\nBUT the number of ranking keywords the domains that point to your site have. \r\nThatâ€™s the bottom line. \r\n \r\nMake sure these backlinks point to your website and you will ROCK! \r\n \r\nWe are introducing this exclusive offer here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nNeed more details, or want clarification, reach out here: \r\nhttps://www.strictlydigital.net/whatsapp-us/ \r\n \r\nSincerely, \r\nMike Olof Lefebvre\r\n \r\nstrictlydigital.net \r\nPhone/WhatsApp: +1 (877) 566-3738', '2025-03-30 16:41:47', '2025-03-30 16:41:47'),
(101, 'mike@monkeydigital.co', 'Collaboration Request', 'Hey, \r\n \r\nThis is Mike from Monkey Digital, \r\nI am reaching out about a mutual collaboration. \r\n \r\nHow would you like to show our banners on your platform and link back via your custom affiliate link towards high-demand services from our business? \r\n \r\nThis way, you receive a recurring 35% commission, continuously from any transactions that generate from your website. \r\n \r\nThink about it, everyone benefit from SEO, so this is a huge opportunity. \r\n \r\nWe already have 12k+ affiliates and our payments are paid out monthly. \r\nRecently, we reached over $27,000 in affiliate earnings to our affiliates. \r\n \r\nIf interested, kindly contact us here: \r\nhttps://monkeydigital.co/affiliates-whatsapp/ \r\n \r\nOr sign up today: \r\nhttps://www.monkeydigital.co/join-our-affiliate-program/ \r\n \r\nLooking forward, \r\nMike James Evans\r\n \r\nPhone/whatsapp: +1 (775) 314-7914', '2025-03-30 21:11:15', '2025-03-30 21:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `content_categories`
--

CREATE TABLE `content_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_categories`
--

INSERT INTO `content_categories` (`id`, `title`, `icon`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 'Teen', 'balloon-heart', 'Teen Short Paragraph will be here', '<p>Teen <strong>Long Paragraph </strong>will be here</p>\r\n<ol>\r\n<li>First Text</li>\r\n<li>Second Text</li>\r\n<li>Third Text</li>\r\n</ol>', '2025-03-27 11:28:36', '2025-03-27 11:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `phone_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `country_code`, `phone_code`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, NULL, '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(2, 'Afghanistan', 'AF', '93', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(3, 'Albania', 'AL', '355', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(4, 'Algeria', 'DZ', '213', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(5, 'American Samoa', 'AS', '1684', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(6, 'Andorra', 'AD', '376', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(7, 'Angola', 'AO', '244', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(8, 'Anguilla', 'AI', '1264', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(9, 'Antarctica', 'AQ', '672', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(10, 'Antigua and Barbuda', 'AG', '1268', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(11, 'Argentina', 'AR', '54', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(12, 'Armenia', 'AM', '374', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(13, 'Aruba', 'AW', '297', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(14, 'Australia', 'AU', '61', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(15, 'Austria', 'AT', '43', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(16, 'Azerbaijan', 'AZ', '994', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(17, 'Bahamas (the)', 'BS', '1242', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(18, 'Bahrain', 'BH', '973', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(19, 'Bangladesh', 'BD', '880', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(20, 'Barbados', 'BB', '1246', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(21, 'Belarus', 'BY', '375', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(22, 'Belgium', 'BE', '32', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(23, 'Belize', 'BZ', '501', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(24, 'Benin', 'BJ', '229', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(25, 'Bermuda', 'BM', '1441', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(26, 'Bhutan', 'BT', '975', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(27, 'Bolivia (Plurinational State of)', 'BO', '591', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '599', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(29, 'Bosnia and Herzegovina', 'BA', '387', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(30, 'Botswana', 'BW', '267', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(31, 'Bouvet Island', 'BV', '55', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(32, 'Brazil', 'BR', '55', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(33, 'British Indian Ocean Territory (the)', 'IO', '246', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(34, 'Brunei Darussalam', 'BN', '673', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(35, 'Bulgaria', 'BG', '359', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(36, 'Burkina Faso', 'BF', '226', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(37, 'Burundi', 'BI', '257', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(38, 'Cabo Verde', 'CV', '238', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(39, 'Cambodia', 'KH', '855', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(40, 'Cameroon', 'CM', '237', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(41, 'Canada', 'CA', '1', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(42, 'Cayman Islands (the)', 'KY', '1345', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(43, 'Central African Republic (the)', 'CF', '236', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(44, 'Chad', 'TD', '235', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(45, 'Chile', 'CL', '56', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(46, 'China', 'CN', '86', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(47, 'Christmas Island', 'CX', '61', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(48, 'Cocos (Keeling) Islands (the)', 'CC', '672', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(49, 'Colombia', 'CO', '57', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(50, 'Comoros (the)', 'KM', '269', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(51, 'Congo (the Democratic Republic of the)', 'CG', '242', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(52, 'Congo (the)', 'CG', '242', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(53, 'Cook Islands (the)', 'CK', '682', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(54, 'Costa Rica', 'CR', '506', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(55, 'Croatia', 'HR', '385', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(56, 'Cuba', 'CU', '53', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(57, 'CuraÃ§ao', 'CW', '599', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(58, 'Cyprus', 'CY', '357', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(59, 'Czechia', 'CZ', '420', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(60, 'CÃ´te d\'Ivoire', 'CI', '225', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(61, 'Denmark', 'DK', '45', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(62, 'Djibouti', 'DJ', '253', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(63, 'Dominica', 'DM', '1767', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(64, 'Dominican Republic (the)', 'DO', '1809', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(65, 'Ecuador', 'EC', '593', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(66, 'Egypt', 'EG', '20', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(67, 'El Salvador', 'SV', '503', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(68, 'Equatorial Guinea', 'GQ', '240', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(69, 'Eritrea', 'ER', '291', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(70, 'Estonia', 'EE', '372', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(71, 'Eswatini', 'SWZ', '268', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(72, 'Ethiopia', 'ET', '251', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(73, 'Falkland Islands (the) [Malvinas]', 'FK', '500', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(74, 'Faroe Islands (the)', 'FO', '298', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(75, 'Fiji', 'FJ', '679', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(76, 'Finland', 'FI', '358', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(77, 'France', 'FR', '33', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(78, 'French Guiana', 'GF', '594', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(79, 'French Polynesia', 'PF', '689', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(80, 'French Southern Territories (the)', 'GF', '594', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(81, 'Gabon', 'GA', '241', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(82, 'Gambia (the)', 'GM', '220', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(83, 'Georgia', 'GE', '995', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(84, 'Germany', 'DE', '49', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(85, 'Ghana', 'GH', '233', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(86, 'Gibraltar', 'GI', '350', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(87, 'Greece', 'GR', '30', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(88, 'Greenland', 'GL', '299', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(89, 'Grenada', 'GD', '1473', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(90, 'Guadeloupe', 'GP', '590', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(91, 'Guam', 'GU', '1671', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(92, 'Guatemala', 'GT', '502', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(93, 'Guernsey', 'GG', '44', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(94, 'Guinea', 'GN', '224', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(95, 'Guinea-Bissau', 'GW', '245', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(96, 'Guyana', 'GY', '592', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(97, 'Haiti', 'HT', '509', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(98, 'Heard Island and McDonald Islands', 'HM', '0', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(99, 'Holy See (the)', 'VA', '39', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(100, 'Honduras', 'HN', '504', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(101, 'Hong Kong', 'HK', '852', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(102, 'Hungary', 'HU', '36', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(103, 'Iceland', 'IS', '354', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(104, 'India', 'IN', '91', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(105, 'Indonesia', 'ID', '62', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(106, 'Iran (Islamic Republic of)', 'IR', '98', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(107, 'Iraq', 'IQ', '964', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(108, 'Ireland', 'IE', '353', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(109, 'Isle of Man', 'IM', '44', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(110, 'Israel', 'IL', '972', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(111, 'Italy', 'IT', '39', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(112, 'Jamaica', 'JM', '1876', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(113, 'Japan', 'JP', '81', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(114, 'Jersey', 'JE', '44', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(115, 'Jordan', 'JO', '962', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(116, 'Kazakhstan', 'KZ', '7', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(117, 'Kenya', 'KE', '254', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(118, 'Kiribati', 'KI', '686', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(119, 'Korea (the Democratic People\'s Republic of)', 'KP', '850', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(120, 'Korea (the Republic of)', 'KP', '850', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(121, 'Kuwait', 'KW', '965', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(122, 'Kyrgyzstan', 'KG', '996', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(123, 'Lao People\'s Democratic Republic (the)', 'LA', '856', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(124, 'Latvia', 'LV', '371', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(125, 'Lebanon', 'LB', '961', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(126, 'Lesotho', 'LS', '266', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(127, 'Liberia', 'LR', '231', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(128, 'Libya', 'LY', '218', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(129, 'Liechtenstein', 'LI', '423', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(130, 'Lithuania', 'LT', '370', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(131, 'Luxembourg', 'LU', '352', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(132, 'Macao', 'MO', '853', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(133, 'Madagascar', 'MG', '261', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(134, 'Malawi', 'MW', '265', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(135, 'Malaysia', 'MY', '60', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(136, 'Maldives', 'MV', '960', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(137, 'Mali', 'ML', '223', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(138, 'Malta', 'MT', '356', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(139, 'Marshall Islands (the)', 'MH', '692', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(140, 'Martinique', 'MQ', '596', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(141, 'Mauritania', 'MR', '222', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(142, 'Mauritius', 'MU', '230', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(143, 'Mayotte', 'YT', '269', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(144, 'Mexico', 'MX', '52', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(145, 'Micronesia (Federated States of)', 'FM', '691', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(146, 'Moldova (the Republic of)', 'MD', '373', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(147, 'Monaco', 'MC', '377', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(148, 'Mongolia', 'MN', '976', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(149, 'Montenegro', 'ME', '382', '2022-04-14 15:35:50', '2022-04-14 15:35:50'),
(150, 'Montserrat', 'MS', '1664', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(151, 'Morocco', 'MA', '212', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(152, 'Mozambique', 'MZ', '258', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(153, 'Myanmar', 'MM', '95', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(154, 'Namibia', 'NA', '264', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(155, 'Nauru', 'NR', '674', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(156, 'Nepal', 'NP', '977', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(157, 'Netherlands (the)', 'NL', '31', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(158, 'New Caledonia', 'NC', '687', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(159, 'New Zealand', 'NZ', '64', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(160, 'Nicaragua', 'NI', '505', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(161, 'Niger (the)', 'NE', '227', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(162, 'Nigeria', 'NG', '234', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(163, 'Niue', 'NU', '683', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(164, 'Norfolk Island', 'NF', '672', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(165, 'Northern Mariana Islands (the)', 'MP', '1670', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(166, 'Norway', 'NO', '47', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(167, 'Oman', 'OM', '968', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(168, 'Pakistan', 'PK', '92', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(169, 'Palau', 'PW', '680', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(170, 'Palestine, State of', 'PH', '63', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(171, 'Panama', 'PA', '507', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(172, 'Papua New Guinea', 'PG', '675', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(173, 'Paraguay', 'PY', '595', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(174, 'Peru', 'PE', '51', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(175, 'Philippines (the)', 'PH', '63', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(176, 'Pitcairn', 'PN', '64', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(177, 'Poland', 'PL', '48', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(178, 'Portugal', 'PT', '351', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(179, 'Puerto Rico', 'PR', '1787', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(180, 'Qatar', 'QA', '974', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(181, 'Republic of North Macedonia', 'MK', '389', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(182, 'Romania', 'RO', '40', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(183, 'Russian Federation (the)', 'RU', '70', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(184, 'Rwanda', 'RW', '250', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(185, 'RÃ©union', 'RE', '262', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(186, 'Saint BarthÃ©lemy', 'BL', '590', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(187, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '290', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(188, 'Saint Kitts and Nevis', 'KN', '1869', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(189, 'Saint Lucia', 'LC', '1758', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(190, 'Saint Martin (French part)', 'MF', '590', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(191, 'Saint Pierre and Miquelon', 'PM', '508', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(192, 'Saint Vincent and the Grenadines', 'VC', '1784', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(193, 'Samoa', 'WS', '684', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(194, 'San Marino', 'SM', '378', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(195, 'Sao Tome and Principe', 'ST', '239', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(196, 'Saudi Arabia', 'SA', '966', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(197, 'Senegal', 'SN', '221', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(198, 'Serbia', 'RS', '381', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(199, 'Seychelles', 'SC', '248', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(200, 'Sierra Leone', 'SL', '232', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(201, 'Singapore', 'SG', '65', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(202, 'Sint Maarten (Dutch part)', 'SX', '1', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(203, 'Slovakia', 'SK', '421', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(204, 'Slovenia', 'SI', '386', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(205, 'Solomon Islands', 'SB', '677', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(206, 'Somalia', 'SO', '252', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(207, 'South Africa', 'ZA', '27', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(208, 'South Georgia and the South Sandwich Islands', 'GS', '500', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(209, 'South Sudan', 'SS', '211', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(210, 'Spain', 'ES', '34', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(211, 'Sri Lanka', 'LK', '94', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(212, 'Sudan (the)', 'SS', '211', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(213, 'Suriname', 'SR', '597', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(214, 'Svalbard and Jan Mayen', 'SJ', '47', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(215, 'Sweden', 'SE', '46', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(216, 'Switzerland', 'CH', '41', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(217, 'Syrian Arab Republic', 'SY', '963', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(218, 'Taiwan', 'TW', '886', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(219, 'Tajikistan', 'TJ', '992', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(220, 'Tanzania, United Republic of', 'TZ', '255', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(221, 'Thailand', 'TH', '66', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(222, 'Timor-Leste', 'TL', '670', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(223, 'Togo', 'TG', '228', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(224, 'Tokelau', 'TK', '690', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(225, 'Tonga', 'TO', '676', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(226, 'Trinidad and Tobago', 'TT', '1868', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(227, 'Tunisia', 'TN', '216', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(228, 'Turkey', 'TR', '90', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(229, 'Turkmenistan', 'TM', '7370', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(230, 'Turks and Caicos Islands (the)', 'TC', '1649', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(231, 'Tuvalu', 'TV', '688', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(232, 'Uganda', 'UG', '256', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(233, 'Ukraine', 'UA', '380', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(234, 'United Arab Emirates (the)', 'AE', '971', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(235, 'United Kingdom of Great Britain and Northern Ireland (the)', 'GB', '44', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(236, 'United States Minor Outlying Islands (the)', 'UM', '1', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(237, 'United States of America (the)', 'US', '1', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(238, 'Uruguay', 'UY', '598', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(239, 'Uzbekistan', 'UZ', '998', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(240, 'Vanuatu', 'VU', '678', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', '58', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(242, 'Viet Nam', 'VN', '84', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(243, 'Virgin Islands (British)', 'VG', '1284', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(244, 'Virgin Islands (U.S.)', 'VI', '1340', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(245, 'Wallis and Futuna', 'WF', '681', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(246, 'Western Sahara', 'EH', '212', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(247, 'Yemen', 'YE', '967', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(248, 'Zambia', 'ZM', '260', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(249, 'Zimbabwe', 'ZW', '263', '2022-04-14 15:35:51', '2022-04-14 15:35:51'),
(250, 'Ã…land Islands', 'AX', '358', '2022-04-14 15:35:51', '2022-04-14 15:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `country_taxes`
--

CREATE TABLE `country_taxes` (
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `creator_categories`
--

CREATE TABLE `creator_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `creator_categories`
--

INSERT INTO `creator_categories` (`id`, `title`, `icon`, `short_description`, `long_description`, `created_at`, `updated_at`) VALUES
(1, 'Teen Creators', 'balloon-heart-fill', 'Teen Short Paragraph will be here for Creator', '<p>Teen <strong>Long Paragraph </strong>will be here</p>\r\n<ol>\r\n<li>First Text</li>\r\n<li>Second Text</li>\r\n<li>Third Text</li>\r\n</ol>', '2025-03-27 11:30:44', '2025-03-27 11:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `creator_category`
--

CREATE TABLE `creator_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `creator_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `creator_category`
--

INSERT INTO `creator_category` (`id`, `user_id`, `creator_category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-03-27 11:32:03', '2025-03-27 11:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `creator_offers`
--

CREATE TABLE `creator_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `old_profile_access_price` double DEFAULT 5,
  `old_profile_access_price_3_months` double(8,2) DEFAULT 5.00,
  `old_profile_access_price_6_months` double DEFAULT 5,
  `old_profile_access_price_12_months` double DEFAULT 5,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 5),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 8),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 38),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 34),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 0, 1, '{}', 2),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 18),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 19),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '{}', 5),
(21, 1, 'role_id', 'text', 'Role', 0, 0, 1, 1, 1, 1, '{}', 6),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 1, 1, 1, '{\"description\":\"Unique Wallet Identifier. If adding a new entry from admin panel, entry a random, unique string.\"}', 1),
(23, 4, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(24, 4, 'total', 'text', 'Total', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 6, 'id', 'text', 'UUID', 1, 0, 0, 0, 1, 0, '{}', 1),
(30, 6, 'filename', 'text', 'Filename', 1, 1, 1, 1, 1, 1, '{}', 9),
(31, 6, 'driver', 'select_dropdown', 'Driver', 1, 1, 1, 1, 1, 1, '{\"default\":\"0\",\"options\":{\"0\":\"Local\",\"1\":\"S3\",\"2\":\"Wasabi\",\"3\":\"DigitalOcean\",\"4\":\"Minio\",\"5\":\"Pushr\"}}', 7),
(32, 6, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 8),
(33, 6, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(34, 6, 'post_id', 'text', 'Post Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(35, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(36, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(37, 9, 'id', 'text', 'UUID', 1, 0, 1, 1, 1, 1, '{\"description\":\"Unique Wallet Identifier. If adding a new entry from admin panel, entry a random, unique string.\"}', 1),
(38, 9, 'from_user_id', 'text', 'From User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(39, 9, 'to_user_id', 'text', 'To User Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(40, 9, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"tip\",\"options\":{\"tip\":\"Tip\",\"reaction\":\"Reaction\",\"new-comment\":\"Comment\",\"new-subscription\":\"Subscription\",\"withdrawal-action\":\"Withdrawal\",\"new-message\":\"Message\"}}', 11),
(41, 9, 'post_id', 'text', 'Post Id', 0, 0, 1, 1, 1, 1, '{}', 6),
(42, 9, 'post_comment_id', 'text', 'Post Comment Id', 0, 0, 1, 1, 1, 1, '{}', 7),
(43, 9, 'subscription_id', 'text', 'Subscription Id', 0, 0, 1, 1, 1, 1, '{}', 8),
(44, 9, 'transaction_id', 'text', 'Transaction Id', 0, 0, 1, 1, 1, 1, '{}', 9),
(45, 9, 'reaction_id', 'text', 'Reaction Id', 0, 0, 1, 1, 1, 1, '{}', 10),
(47, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(48, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(49, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(50, 10, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(51, 10, 'post_id', 'text', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(52, 10, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 5),
(53, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(54, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(55, 11, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(56, 11, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(57, 11, 'text', 'text', 'Text', 0, 1, 1, 1, 1, 1, '{}', 5),
(58, 11, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"requested\",\"options\":{\"0\":\"Pending\",\"1\":\"Approved\",\"2\":\"Disapproved\"}}', 6),
(59, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(60, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(61, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 12, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(63, 12, 'post_id', 'text', 'Post Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(64, 12, 'post_comment_id', 'text', 'Post Comment Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(65, 12, 'reaction_type', 'select_dropdown', 'Reaction Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"like\",\"options\":{\"like\":\"Like\"}}', 6),
(66, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(67, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(68, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 13, 'sender_user_id', 'text', 'SubscriberID', 1, 1, 1, 1, 1, 1, '{}', 3),
(70, 13, 'recipient_user_id', 'text', 'CreatorID', 1, 1, 1, 1, 1, 1, '{}', 5),
(71, 13, 'paypal_agreement_id', 'text', 'Paypal ID', 0, 1, 1, 1, 1, 1, '{}', 10),
(72, 13, 'stripe_subscription_id', 'text', 'Stripe ID', 0, 1, 1, 1, 1, 1, '{}', 13),
(73, 13, 'paypal_plan_id', 'text', 'Paypal Plan ID', 0, 0, 1, 1, 1, 1, '{}', 11),
(74, 13, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"one-month-subscription\",\"options\":{\"one-month-subscription\":\"One month sub\",\"three-months-subscription\":\"Three months sub\",\"six-months-subscription\":\"Six months sub\",\"yearly-subscription\":\"Yearly sub\"}}', 7),
(75, 13, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"Pending\",\"completed\":\"Completed\",\"suspended\":\"Suspended\",\"update-needed\":\"Update needed\",\"canceled\":\"Canceled\",\"expired\":\"Expired\"}}', 6),
(76, 13, 'expires_at', 'timestamp', 'Expires At', 0, 1, 1, 1, 1, 1, '{}', 14),
(77, 13, 'canceled_at', 'timestamp', 'Canceled At', 0, 0, 1, 1, 1, 1, '{}', 15),
(78, 13, 'amount', 'text', 'Amount', 0, 1, 1, 1, 1, 1, '{}', 9),
(79, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(80, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(81, 14, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(82, 14, 'sender_user_id', 'text', 'SenderID', 1, 1, 1, 1, 1, 1, '{}', 3),
(83, 14, 'recipient_user_id', 'text', 'RecipientID', 0, 1, 1, 1, 1, 1, '{}', 5),
(84, 14, 'subscription_id', 'text', 'SubscriptionID', 0, 1, 1, 1, 1, 1, '{}', 10),
(85, 14, 'post_id', 'text', 'PostID', 0, 1, 1, 1, 1, 1, '{}', 11),
(86, 14, 'stripe_transaction_id', 'text', 'StripeTransactionID', 0, 0, 1, 1, 1, 1, '{}', 12),
(87, 14, 'stripe_session_id', 'text', 'StripeSessionID', 0, 0, 1, 1, 1, 1, '{}', 15),
(88, 14, 'paypal_transaction_id', 'text', 'PaypalTransactionID', 0, 0, 1, 1, 1, 1, '{}', 16),
(89, 14, 'paypal_transaction_token', 'text', 'PaypalTransactionToken', 0, 0, 1, 1, 1, 1, '{}', 18),
(90, 14, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"Pending\",\"canceled\":\"Canceled\",\"approved\":\"Approved\",\"declined\":\"Declined\",\"refunded\":\"Refunded\",\"initiated\":\"Initiated\",\"partially-paid\":\"Partially paid\"}}', 6),
(91, 14, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"tip\",\"options\":{\"tip\":\"Post Tip\",\"chat-tip\":\"Chat tip\",\"post-unlock\":\"Post unlock\",\"message-unlock\":\"Message unlock\",\"deposit\":\"Deposit\",\"withdrawal\":\"Withdrawal\",\"one-month-subscription\":\"One month sub\",\"three-months-subscription\":\"Three months sub\",\"six-months-subscription\":\"Six months sub\",\"yearly-subscription\":\"Yearly sub\",\"subscription-renewal\":\"Subscription renewal\",\"stream-access\":\"Stream unlock\"}}', 7),
(92, 14, 'payment_provider', 'select_dropdown', 'Payment Provider', 1, 1, 1, 1, 1, 1, '{\"default\":\"credit\",\"options\":{\"stripe\":\"Stripe\",\"paypal\":\"Paypal\",\"ccbill\":\"CCBill\",\"coinbase\":\"Coinbase\",\"nowpayments\":\"Nowpayments\",\"paystack\":\"Paystack\",\"oxxo\":\"Oxxo\",\"credit\":\"Credit\"}}', 8),
(93, 14, 'currency', 'text', 'Currency', 1, 0, 1, 1, 1, 1, '{}', 21),
(94, 14, 'paypal_payer_id', 'text', 'PaypalPayerId', 0, 0, 1, 1, 1, 1, '{}', 19),
(95, 14, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 9),
(96, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 28),
(97, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 30),
(98, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(99, 15, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(100, 15, 'post_id', 'text', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(101, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(102, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(103, 16, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(104, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(105, 16, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(106, 16, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"following\",\"options\":{\"following\":\"Following\",\"blocked\":\"Blocked\",\"custom\":\"Custom\"}}', 5),
(107, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(108, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(109, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 17, 'list_id', 'text', 'List Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(111, 17, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(112, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(113, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(114, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(115, 18, 'sender_id', 'text', 'Sender Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(116, 18, 'receiver_id', 'text', 'Receiver Id', 1, 1, 1, 1, 1, 1, '{}', 5),
(117, 18, 'replyTo', 'text', 'ReplyTo', 1, 0, 1, 1, 1, 1, '{}', 6),
(118, 18, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 8),
(119, 18, 'isSeen', 'checkbox', 'IsSeen', 1, 1, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"true\"}', 9),
(120, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(121, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(122, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(123, 19, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(124, 19, 'amount', 'text', 'Amount', 1, 1, 1, 1, 1, 1, '{}', 4),
(125, 19, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"requested\",\"options\":{\"requested\":\"Requested\",\"rejected\":\"Rejected\",\"approved\":\"Approved\"}}', 6),
(126, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(127, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(128, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(129, 20, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(130, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(131, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(132, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(133, 21, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(134, 21, 'percentage', 'text', 'Value', 1, 1, 1, 1, 1, 1, '{\"description\":\"If tax type is \'Fixed\' this value represents a fixed amount, otherwise it is a percentage from the payment amount\"}', 3),
(135, 21, 'type', 'radio_btn', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"inclusive\",\"options\":{\"inclusive\":\"Inclusive\",\"exclusive\":\"Exclusive\",\"fixed\":\"Fixed\"}}', 4),
(136, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 5),
(137, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(138, 21, 'tax_belongstomany_country_relationship', 'relationship', 'Countries', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Model\\\\Country\",\"table\":\"countries\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"country_taxes\",\"pivot\":\"1\",\"taggable\":\"0\"}', 7),
(142, 14, 'taxes', 'text', 'Taxes', 0, 0, 0, 0, 0, 0, '{}', 24),
(143, 1, 'username', 'text', 'Username', 1, 1, 1, 1, 1, 1, '{}', 10),
(145, 1, 'bio', 'text', 'Bio', 0, 0, 1, 1, 0, 1, '{}', 11),
(146, 1, 'location', 'text', 'Location', 0, 0, 1, 1, 0, 1, '{}', 12),
(147, 1, 'website', 'text', 'Website', 0, 0, 1, 1, 0, 1, '{}', 13),
(148, 1, 'cover', 'image', 'Cover', 0, 0, 1, 1, 0, 1, '{}', 7),
(149, 1, 'email_verified_at', 'timestamp', 'Email verified', 0, 1, 1, 1, 1, 1, '{}', 35),
(150, 1, 'public_profile', 'checkbox', 'Public Profile', 1, 0, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 20),
(151, 1, 'profile_access_price', 'text', 'Profile Price', 1, 1, 1, 1, 0, 1, '{}', 23),
(152, 1, 'billing_address', 'text', 'Billing Address', 0, 0, 1, 1, 0, 1, '{}', 27),
(153, 1, 'first_name', 'text', 'First Name', 0, 0, 1, 1, 0, 1, '{}', 28),
(154, 1, 'last_name', 'text', 'Last Name', 0, 0, 1, 1, 0, 1, '{}', 29),
(155, 1, 'city', 'text', 'City', 0, 0, 1, 1, 0, 1, '{}', 30),
(156, 1, 'country', 'text', 'Country', 0, 0, 1, 1, 0, 1, '{}', 31),
(157, 1, 'state', 'text', 'State', 0, 0, 1, 1, 0, 1, '{}', 32),
(158, 1, 'postcode', 'text', 'Postcode', 0, 0, 1, 1, 0, 1, '{}', 33),
(159, 27, 'id', 'text', 'Id', 1, 0, 1, 0, 0, 1, '{}', 1),
(160, 27, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 4),
(161, 27, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(162, 27, 'content', 'rich_text_box', 'Content', 1, 0, 1, 1, 1, 1, '{\"tinymceOptions\":{\"toolbar\":\"undo redo | formatselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | fontsizeselect\",\"plugins\":\"lists link image\",\"image_title\":true,\"automatic_uploads\":false,\"file_picker_types\":\"image\",\"image_advtab\":true,\"file_picker_callback\":\"function(callback, value, meta) { if (meta.filetype === \'image\') { var input = document.createElement(\'input\'); input.setAttribute(\'type\', \'text\'); input.setAttribute(\'placeholder\', \'Enter image URL\'); input.oninput = function() { callback(input.value, {alt: \'\'}); }; document.body.appendChild(input); input.focus(); input.onblur = function() { document.body.removeChild(input); }; } }\",\"fontsize_formats\":\"8pt 10pt 12pt 14pt 18pt 24pt 36pt\",\"style_formats\":[{\"title\":\"Headers\",\"items\":[{\"title\":\"Header 1\",\"block\":\"h1\"},{\"title\":\"Header 2\",\"block\":\"h2\"},{\"title\":\"Header 3\",\"block\":\"h3\"},{\"title\":\"Header 4\",\"block\":\"h4\"},{\"title\":\"Header 5\",\"block\":\"h5\"},{\"title\":\"Header 6\",\"block\":\"h6\"}]},{\"title\":\"Inline\",\"items\":[{\"title\":\"Bold\",\"icon\":\"bold\",\"format\":\"bold\"},{\"title\":\"Italic\",\"icon\":\"italic\",\"format\":\"italic\"},{\"title\":\"Underline\",\"icon\":\"underline\",\"format\":\"underline\"},{\"title\":\"Strikethrough\",\"icon\":\"strikethrough\",\"format\":\"strikethrough\"},{\"title\":\"Superscript\",\"icon\":\"superscript\",\"format\":\"superscript\"},{\"title\":\"Subscript\",\"icon\":\"subscript\",\"format\":\"subscript\"}]}],\"content_style\":\"body { font-family:Helvetica,Arial,sans-serif; font-size:14px }\"}}', 5),
(163, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 1, '{}', 10),
(164, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(165, 14, 'invoice_id', 'text', 'InvoiceID', 0, 1, 1, 1, 1, 1, '{}', 13),
(166, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(167, 28, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(168, 28, 'files', 'text', 'Files', 0, 0, 0, 1, 0, 0, '{}', 5),
(169, 28, 'rejectionReason', 'text', 'Rejection Reason', 0, 1, 1, 1, 1, 1, '{}', 7),
(170, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(171, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(172, 19, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 8),
(173, 28, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"Pending\",\"rejected\":\"Rejected\",\"verified\":\"Verified\"}}', 6),
(179, 9, 'withdrawal_id', 'text', 'Withdrawal Id', 0, 0, 1, 1, 1, 1, '{}', 13),
(180, 9, 'user_message_id', 'text', 'User Message Id', 0, 0, 1, 1, 1, 1, '{}', 15),
(186, 17, 'user_list_member_hasone_user_list_relationship', 'relationship', 'List name', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Model\\\\UserList\",\"table\":\"user_lists\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"list_id\",\"label\":\"name\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(189, 6, 'message_id', 'text', 'Message Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(192, 1, 'birthdate', 'date', 'Birthdate', 0, 0, 1, 1, 1, 1, '{}', 36),
(193, 1, 'identity_verified_at', 'timestamp', 'ID verifed', 0, 1, 1, 1, 1, 1, '{}', 37),
(194, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(195, 29, 'from_user_id', 'text', 'Reporter ID', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 3),
(196, 29, 'user_id', 'text', 'Reported ID', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"]}}', 5),
(197, 29, 'post_id', 'text', 'PostID', 0, 1, 1, 1, 1, 1, '{}', 6),
(198, 29, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{}', 9),
(199, 29, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"I don\'t like this post\",\"options\":{\"I don\'t like this post\":\"I don\'t like this post\",\"Content is offensive or violates Terms of Service.\":\"Content is offensive or violates Terms of Service.\",\"Content contains stolen material (DMCA)\":\"Content contains stolen material (DMCA)\",\"Content is spam\":\"Content is spam\",\"Report abuse\":\"Report abuse\"}}', 10),
(200, 29, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"received\",\"options\":{\"received\":\"Received\",\"seen\":\"Seen\",\"solved\":\"Solved\"}}', 11),
(201, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(202, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(205, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(206, 30, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(207, 30, 'subject', 'text', 'Subject', 1, 1, 1, 1, 1, 1, '{}', 3),
(208, 30, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 4),
(209, 30, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(210, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(223, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(224, 32, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(225, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(226, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 5),
(227, 32, 'featured_user_hasone_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(228, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(229, 33, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(230, 33, 'transaction_id', 'text', 'Transaction Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(231, 33, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"Pending\",\"rejected\":\"Rejected\",\"approved\":\"Approved\"}}', 5),
(232, 33, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"deposit\",\"options\":{\"deposit\":\"Deposit\"}}', 6),
(233, 33, 'reason', 'text', 'Reason', 0, 1, 1, 1, 1, 1, '{}', 7),
(234, 33, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 8),
(235, 33, 'amount', 'text', 'Amount', 0, 1, 1, 1, 1, 1, '{}', 9),
(236, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(237, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(238, 33, 'payment_request_hasmany_attachment_relationship', 'relationship', 'Files', 0, 0, 1, 1, 0, 0, '{\"model\":\"App\\\\Model\\\\Attachment\",\"table\":\"attachments\",\"type\":\"hasMany\",\"column\":\"payment_request_id\",\"key\":\"id\",\"label\":\"filename\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(239, 11, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(240, 19, 'payment_method', 'text', 'Payment Method', 0, 1, 1, 1, 1, 1, '{}', 10),
(241, 19, 'payment_identifier', 'text', 'Payment Identifier', 0, 1, 1, 1, 1, 1, '{}', 11),
(242, 34, 'id', 'text', 'Id', 1, 1, 1, 1, 0, 1, '{}', 1),
(243, 34, 'invoice_id', 'text', 'Invoice Id', 1, 1, 1, 0, 0, 1, '{}', 2),
(244, 34, 'data', 'code_editor', 'Data', 1, 0, 1, 0, 0, 1, '{}', 4),
(245, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(246, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(247, 13, 'ccbill_subscription_id', 'text', 'Ccbill Id', 0, 1, 1, 1, 1, 1, '{}', 12),
(248, 13, 'provider', 'select_dropdown', 'Provider', 1, 0, 1, 1, 1, 1, '{\"default\":\"credit\",\"options\":{\"stripe\":\"Stripe\",\"paypal\":\"Paypal\",\"ccbill\":\"CCBill\",\"credit\":\"Credit\"}}', 8),
(249, 1, 'gender_id', 'text', 'Gender Id', 0, 0, 0, 0, 0, 0, '{}', 15),
(250, 1, 'gender_pronoun', 'text', 'Gender Pronoun', 0, 0, 1, 1, 0, 1, '{}', 16),
(251, 1, 'paid_profile', 'checkbox', 'Paid Profile', 1, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 22),
(252, 1, 'profile_access_price_6_months', 'text', 'Profile for Price 6 Months', 0, 0, 1, 1, 0, 1, '{}', 25),
(253, 1, 'profile_access_price_3_months', 'text', 'Profile for Price 3 Months', 0, 0, 1, 1, 0, 1, '{}', 24),
(254, 1, 'profile_access_price_12_months', 'text', 'Profile for Price 12 Months', 0, 0, 1, 1, 0, 1, '{}', 26),
(255, 1, 'auth_provider', 'text', 'Auth Provider', 0, 0, 1, 0, 0, 1, '{}', 39),
(256, 1, 'auth_provider_id', 'text', 'Auth Provider Id', 0, 0, 1, 0, 0, 1, '{}', 40),
(257, 1, 'enable_2fa', 'checkbox', 'Enable 2fa', 0, 0, 1, 1, 0, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"false\"}', 41),
(258, 1, 'enable_geoblocking', 'checkbox', 'Enable Geoblocking', 0, 0, 1, 1, 0, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"false\"}', 42),
(259, 1, 'open_profile', 'checkbox', 'Open Profile', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"false\"}', 21),
(263, 27, 'page_order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{}', 6),
(264, 27, 'shown_in_footer', 'checkbox', 'Shown in Footer', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 7),
(265, 19, 'fee', 'text', 'Fee', 0, 1, 1, 1, 1, 1, '{}', 5),
(266, 19, 'processed', 'checkbox', 'Processed', 1, 1, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"false\"}', 7),
(267, 14, 'stream_id', 'text', 'StreamID', 0, 1, 1, 1, 1, 1, '{}', 14),
(268, 14, 'user_message_id', 'text', 'MessageID', 0, 1, 1, 1, 1, 1, '{}', 17),
(269, 14, 'coinbase_charge_id', 'text', 'Coinbase Charge Id', 0, 0, 1, 1, 1, 1, '{}', 20),
(270, 14, 'coinbase_transaction_token', 'text', 'Coinbase Transaction Token', 0, 0, 1, 1, 1, 1, '{}', 22),
(271, 14, 'nowpayments_payment_id', 'text', 'Nowpayments Payment Id', 0, 0, 1, 1, 1, 1, '{}', 23),
(272, 14, 'nowpayments_order_id', 'text', 'Nowpayments Order Id', 0, 0, 1, 1, 1, 1, '{}', 27),
(273, 14, 'ccbill_payment_token', 'text', 'Ccbill Payment Token', 0, 0, 1, 1, 1, 1, '{}', 29),
(274, 14, 'ccbill_transaction_id', 'text', 'Ccbill Transaction Id', 0, 0, 1, 1, 1, 1, '{}', 31),
(275, 14, 'ccbill_subscription_id', 'text', 'Ccbill Subscription Id', 0, 0, 1, 1, 1, 1, '{}', 32),
(276, 14, 'paystack_payment_token', 'text', 'Paystack Payment Token', 0, 0, 1, 1, 1, 1, '{}', 33),
(278, 1, 'referral_code', 'text', 'Referral Code', 0, 0, 1, 1, 0, 1, '{}', 9),
(298, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(299, 37, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(300, 37, 'stream_id', 'text', 'Stream Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(301, 37, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 5),
(302, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(303, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(304, 38, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(305, 38, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(306, 38, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"requested\",\"options\":{\"in-progress\":\"In progress\",\"ended\":\"Ended\",\"deleted\":\"Deleted\"}}', 4),
(307, 38, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(308, 38, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{}', 6),
(309, 38, 'poster', 'text', 'Poster', 0, 0, 1, 1, 1, 1, '{}', 11),
(310, 38, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 7),
(311, 38, 'requires_subscription', 'checkbox', 'Requires Subscription', 0, 1, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"true\"}', 8),
(312, 38, 'sent_expiring_reminder', 'checkbox', 'Sent Expiring Reminder', 0, 0, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"true\"}', 9),
(313, 38, 'is_public', 'checkbox', 'Is Public', 0, 1, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"true\"}', 10),
(314, 38, 'pushr_id', 'text', 'Pushr Id', 1, 0, 1, 1, 1, 1, '{}', 12),
(315, 38, 'rtmp_key', 'text', 'Rtmp Key', 0, 0, 1, 1, 1, 1, '{}', 13),
(316, 38, 'rtmp_server', 'text', 'Rtmp Server', 0, 0, 1, 1, 1, 1, '{}', 14),
(317, 38, 'hls_link', 'text', 'Hls Link', 0, 0, 1, 1, 1, 1, '{}', 15),
(318, 38, 'vod_link', 'text', 'Vod Link', 0, 0, 1, 1, 1, 1, '{}', 16),
(319, 38, 'settings', 'text', 'Settings', 0, 0, 0, 0, 0, 1, '{}', 17),
(320, 38, 'ended_at', 'text', 'Ended At', 0, 1, 1, 1, 1, 1, '{}', 18),
(321, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 19),
(322, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 20),
(323, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(324, 39, 'used_by', 'text', 'Used By (UserID)', 1, 1, 1, 1, 1, 1, '{}', 3),
(325, 39, 'referral_code', 'text', 'Referral Code', 1, 1, 1, 1, 1, 1, '{}', 2),
(326, 39, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(327, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(328, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(329, 40, 'from_user_id', 'text', 'From User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(330, 40, 'to_user_id', 'text', 'To User Id', 0, 1, 1, 1, 1, 1, '{}', 5),
(331, 40, 'transaction_id', 'text', 'Transaction Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(332, 40, 'referral_code_usage_id', 'text', 'Referral Code Usage Id', 0, 0, 1, 1, 1, 1, '{}', 7),
(333, 40, 'amount', 'text', 'Amount', 0, 1, 1, 1, 1, 1, '{}', 8),
(334, 40, 'reward_type', 'text', 'Reward Type', 1, 1, 1, 1, 1, 1, '{}', 9),
(335, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(336, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(337, 21, 'hidden', 'checkbox', 'Hidden', 1, 1, 1, 1, 1, 1, '{}', 7),
(338, 27, 'is_tos', 'checkbox', 'Is Tos', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 8),
(339, 27, 'is_privacy', 'checkbox', 'Is Privacy', 0, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 9),
(340, 27, 'short_title', 'text', 'Short Title', 0, 1, 1, 1, 1, 1, '{\"description\":\"If provided, it will be used in places where a shorter version of the page name is needed.\"}', 3),
(341, 1, 'user_belongsto_user_gender_relationship', 'relationship', 'Gender', 0, 1, 1, 1, 0, 1, '{\"model\":\"App\\\\Model\\\\UserGender\",\"table\":\"user_genders\",\"type\":\"belongsTo\",\"column\":\"gender_id\",\"key\":\"id\",\"label\":\"gender_name\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(342, 4, 'wallet_hasone_user_relationship_1', 'relationship', 'Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"name\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(343, 28, 'user_verify_hasone_user_relationship_1', 'relationship', 'Name', 0, 1, 1, 1, 0, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"hasOne\",\"column\":\"id\",\"key\":\"user_id\",\"label\":\"name\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(344, 11, 'release_date', 'timestamp', 'Release Date', 0, 1, 1, 1, 1, 1, '{}', 8),
(345, 11, 'expire_date', 'timestamp', 'Expire Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(346, 11, 'is_pinned', 'checkbox', 'Is Pinned', 1, 1, 1, 1, 1, 1, '{\"on\":\"On\",\"off\":\"Off\",\"checked\":\"true\"}', 7),
(348, 6, 'coconut_id', 'text', 'Coconut Id', 0, 0, 1, 1, 0, 0, '{}', 10),
(349, 6, 'has_thumbnail', 'text', 'Has Thumbnail', 0, 0, 0, 0, 0, 0, '{}', 12),
(350, 6, 'payment_request_id', 'text', 'Payment Request Id', 0, 0, 1, 1, 1, 0, '{}', 5),
(353, 29, 'user_report_hasone_user_relationship', 'relationship', 'Reporter', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"from_user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(354, 29, 'user_report_hasone_user_relationship_1', 'relationship', 'Reported', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(355, 9, 'stream_id', 'text', 'Stream Id', 0, 0, 1, 1, 1, 1, '{}', 12),
(356, 9, 'read', 'checkbox', 'Read', 1, 1, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"true\"}', 14),
(357, 18, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 7),
(358, 28, 'user_verify_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(359, 4, 'wallet_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(360, 9, 'notification_belongsto_user_relationship', 'relationship', 'From', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"from_user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(361, 9, 'notification_belongsto_user_relationship_1', 'relationship', 'To', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"to_user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(362, 18, 'user_message_belongsto_user_relationship', 'relationship', 'Sender', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"sender_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(363, 18, 'user_message_belongsto_user_relationship_1', 'relationship', 'Receiver', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"receiver_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(364, 12, 'reaction_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(365, 16, 'user_list_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(366, 17, 'user_list_member_belongsto_user_relationship', 'relationship', 'Member', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(368, 11, 'post_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(369, 6, 'attachment_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(370, 10, 'post_comment_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(371, 15, 'user_bookmark_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(372, 38, 'stream_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(373, 37, 'stream_message_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(374, 13, 'subscription_belongsto_user_relationship', 'relationship', 'Subscriber', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"sender_user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(375, 13, 'subscription_belongsto_user_relationship_1', 'relationship', 'Creator', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"recipient_user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(376, 14, 'transaction_belongsto_user_relationship', 'relationship', 'Sender', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"sender_user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(377, 14, 'transaction_belongsto_user_relationship_1', 'relationship', 'Recipient', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"recipient_user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(378, 14, 'mercado_payment_token', 'text', 'Mercado Payment Token', 0, 0, 1, 1, 1, 1, '{}', 25),
(379, 14, 'mercado_payment_id', 'text', 'Mercado Payment Id', 0, 0, 1, 1, 1, 1, '{}', 26),
(380, 19, 'withdrawal_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(381, 33, 'payment_request_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(382, 34, 'invoice_hasone_transaction_relationship', 'relationship', 'Transaction Id', 0, 1, 1, 0, 0, 1, '{\"model\":\"App\\\\Model\\\\Transaction\",\"table\":\"transactions\",\"type\":\"belongsTo\",\"column\":\"invoice_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(383, 40, 'reward_belongsto_user_relationship', 'relationship', 'Referral', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"from_user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(384, 40, 'reward_belongsto_user_relationship_1', 'relationship', 'Referred', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"to_user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(385, 29, 'message_id', 'text', 'MessageID', 0, 1, 1, 1, 1, 1, '{}', 7),
(386, 29, 'stream_id', 'text', 'StreamID', 0, 1, 1, 1, 1, 1, '{}', 8),
(387, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(388, 42, 'content', 'rich_text_box', 'Content', 1, 1, 1, 1, 1, 1, '{\"description\":\"The .global-announcement-banner .content{} class can be used for additional styling.\"}', 2),
(389, 42, 'is_published', 'checkbox', 'Is Published', 1, 1, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"true\",\"description\":\"If disabled, only admins will be able to see the banner\"}', 3),
(390, 42, 'is_dismissible', 'checkbox', 'Is Dismissible', 1, 1, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"true\"}', 4),
(391, 42, 'is_global', 'checkbox', 'Is Global', 1, 1, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"false\",\"description\":\"If enabled, the banner will be shown on all pages, if not, it\'s only displayed on the homepage.\"}', 6),
(392, 42, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(393, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(395, 42, 'is_sticky', 'checkbox', 'Is Sticky', 1, 1, 1, 1, 1, 1, '{\"on\":\"True\",\"off\":\"False\",\"checked\":\"true\"}', 5),
(396, 42, 'expiring_at', 'timestamp', 'Expiring At', 0, 1, 1, 1, 1, 1, '{}', 8),
(397, 42, 'size', 'select_dropdown', 'Size', 1, 1, 1, 1, 1, 1, '{\"default\":\"regular\",\"options\":{\"small\":\"Small\",\"regular\":\"Regular\"}}', 7),
(398, 43, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(399, 43, 'user_id', 'text', 'User Id', 1, 1, 1, 0, 0, 0, '{}', 3),
(400, 43, 'amount', 'text', 'Amount', 1, 1, 1, 0, 0, 0, '{}', 4),
(401, 43, 'start_date', 'text', 'Start Date', 1, 1, 1, 0, 0, 0, '{}', 5),
(402, 43, 'end_date', 'text', 'End Date', 1, 1, 1, 0, 0, 0, '{}', 6),
(403, 43, 'status', 'text', 'Status', 1, 1, 1, 0, 0, 0, '{}', 7),
(404, 43, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(405, 43, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(406, 44, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(407, 44, 'creator_id', 'text', 'Creator Id', 1, 1, 1, 0, 0, 0, '{}', 2),
(408, 44, 'status', 'text', 'Status', 1, 1, 1, 0, 0, 0, '{}', 4),
(409, 44, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(410, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(411, 43, 'membership_belongsto_user_relationship', 'relationship', 'Username', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(412, 44, 'membership_creator_belongsto_user_relationship', 'relationship', 'Creator username', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"creator_id\",\"key\":\"id\",\"label\":\"username\",\"pivot_table\":\"attachments\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(413, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(414, 45, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(415, 45, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(416, 45, 'short_description', 'text', 'Short Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(417, 45, 'long_description', 'rich_text_box', 'Long Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(418, 45, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(419, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(420, 46, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(421, 46, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(422, 46, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(423, 46, 'short_description', 'text', 'Short Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(424, 46, 'long_description', 'rich_text_box', 'Long Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(425, 46, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(426, 46, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `display_name_singular` varchar(191) NOT NULL,
  `display_name_plural` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `model_name` varchar(191) DEFAULT NULL,
  `policy_name` varchar(191) DEFAULT NULL,
  `controller` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'App\\User', 'App\\Policies\\VoyagerUserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 13:52:09', '2024-01-28 17:39:43'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 13:52:09', '2021-10-23 15:48:27'),
(4, 'wallets', 'wallets', 'Wallet', 'Wallets', 'voyager-wallet', 'App\\Model\\Wallet', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 14:37:16', '2024-04-30 18:16:27'),
(6, 'attachments', 'attachments', 'Attachment', 'Attachments', 'voyager-paperclip', 'App\\Model\\Attachment', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:16:55', '2024-04-30 18:47:58'),
(9, 'notifications', 'notifications', 'Notification', 'Notifications', 'voyager-bell', 'App\\Model\\Notification', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:19:11', '2024-04-30 18:16:45'),
(10, 'post_comments', 'post-comments', 'Post Comment', 'Post Comments', 'voyager-bubble', 'App\\Model\\PostComment', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:20:55', '2024-04-30 18:48:48'),
(11, 'posts', 'user-posts', 'Post', 'Posts', 'voyager-images', 'App\\Model\\Post', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:22:37', '2024-04-30 18:45:47'),
(12, 'reactions', 'reactions', 'Reaction', 'Reactions', 'voyager-bubble-hear', 'App\\Model\\Reaction', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:24:58', '2024-04-30 18:27:48'),
(13, 'subscriptions', 'subscriptions', 'Subscription', 'Subscriptions', 'voyager-credit-cards', 'App\\Model\\Subscription', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:25:32', '2024-04-30 19:01:14'),
(14, 'transactions', 'transactions', 'Transaction', 'Transactions', 'voyager-dollar', 'App\\Model\\Transaction', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:26:33', '2024-04-30 19:14:52'),
(15, 'user_bookmarks', 'user-bookmarks', 'User Bookmark', 'User Bookmarks', 'voyager-bookmark', 'App\\Model\\UserBookmark', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:27:47', '2024-04-30 18:50:11'),
(16, 'user_lists', 'user-lists', 'User List', 'User Lists', 'voyager-list', 'App\\Model\\UserList', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:28:45', '2024-10-15 15:41:53'),
(17, 'user_list_members', 'user-list-members', 'User List Member', 'User List Members', 'voyager-people', 'App\\Model\\UserListMember', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:29:07', '2024-04-30 18:37:48'),
(18, 'user_messages', 'user-messages', 'User Message', 'User Messages', 'voyager-chat', 'App\\Model\\UserMessage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:42:32', '2024-04-30 18:21:13'),
(19, 'withdrawals', 'withdrawals', 'Withdrawal', 'Withdrawals', 'voyager-calendar', 'App\\Model\\Withdrawal', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-07 15:51:14', '2024-04-30 19:09:56'),
(20, 'countries', 'countries', 'Country', 'Countries', 'voyager-location', 'App\\Model\\Country', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"name\",\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 13:10:16', '2021-10-23 15:43:47'),
(21, 'taxes', 'taxes', 'Tax', 'Taxes', 'voyager-credit-card', 'App\\Model\\Tax', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-21 13:11:55', '2024-02-27 14:29:00'),
(27, 'public_pages', 'custom-pages', 'Public Page', 'Public Pages', 'voyager-news', 'App\\Model\\PublicPage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-09-29 14:43:27', '2024-06-20 16:17:41'),
(28, 'user_verifies', 'user-verifies', 'User Verify', 'User Verifies', 'voyager-check', 'App\\Model\\UserVerify', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-10-20 11:11:44', '2024-04-30 17:48:52'),
(29, 'user_reports', 'user-reports', 'User Report', 'User Reports', 'voyager-eye', 'App\\Model\\UserReport', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-05 06:32:40', '2024-05-09 17:08:46'),
(30, 'contact_messages', 'contact-messages', 'Contact Message', 'Contact Messages', 'voyager-book', 'App\\Model\\ContactMessage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-11-19 13:11:33', '2022-06-24 09:53:36'),
(32, 'featured_users', 'featured-users', 'Featured User', 'Featured Users', 'voyager-star', 'App\\Model\\FeaturedUser', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-01 10:00:10', '2024-04-22 10:03:58'),
(33, 'payment_requests', 'payment-requests', 'Payment Request', 'Payment Requests', 'voyager-window-list', 'App\\Model\\PaymentRequest', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-06 11:23:24', '2024-04-30 19:18:22'),
(34, 'invoices', 'invoices', 'Invoice', 'Invoices', 'voyager-receipt', 'App\\Model\\Invoice', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-08-04 14:06:47', '2024-10-09 12:33:43'),
(37, 'stream_messages', 'stream-messages', 'Stream Message', 'Stream Messages', 'voyager-chat', 'App\\Model\\StreamMessage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-21 09:48:56', '2024-04-30 18:55:59'),
(38, 'streams', 'streams', 'Stream', 'Streams', 'voyager-video', 'App\\Model\\Stream', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-21 10:01:44', '2024-05-10 09:45:55'),
(39, 'referral_code_usages', 'referral-code-usages', 'Referrals', 'Referrals', 'voyager-group', 'App\\Model\\ReferralCodeUsage', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-21 11:26:01', '2023-06-21 11:27:13'),
(40, 'rewards', 'rewards', 'Referral', 'Referrals', 'voyager-group', 'App\\Model\\Reward', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-21 11:26:04', '2024-04-30 19:26:33'),
(42, 'global_announcements', 'global-announcements', 'Global Announcement', 'Announcements', 'voyager-megaphone', 'App\\Model\\GlobalAnnouncement', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-08-07 12:27:57', '2024-09-12 17:05:33'),
(43, 'memberships', 'memberships', 'Membership', 'Memberships', NULL, 'App\\Membership', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-05 15:26:00', '2024-12-05 15:29:02'),
(44, 'membership_creators', 'membership-creators', 'Membership Creator', 'Membership Creators', NULL, 'App\\MembershipCreator', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-12-05 15:26:40', '2024-12-05 15:30:11'),
(45, 'content_categories', 'content-categories', 'Content Category', 'Content Categories', NULL, 'App\\ContentCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-27 11:26:29', '2025-03-27 11:26:29'),
(46, 'creator_categories', 'creator-categories', 'Creator Category', 'Creator Categories', NULL, 'App\\CreatorCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-27 11:27:20', '2025-03-27 11:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_users`
--

CREATE TABLE `featured_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_announcements`
--

CREATE TABLE `global_announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` longtext NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `is_dismissible` tinyint(1) NOT NULL DEFAULT 1,
  `is_sticky` tinyint(1) NOT NULL,
  `is_global` tinyint(1) NOT NULL,
  `size` varchar(191) NOT NULL,
  `expiring_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership_creators`
--

CREATE TABLE `membership_creators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-08-07 13:52:09', '2021-08-07 13:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `target` varchar(191) NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-home', '#000000', NULL, 1, '2021-08-07 13:52:09', '2022-06-24 08:14:52', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 2, '2021-08-07 13:52:09', '2021-08-08 17:32:02', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 29, 1, '2021-08-07 13:52:09', '2021-08-07 15:59:55', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 29, 3, '2021-08-07 13:52:09', '2021-10-20 11:20:11', 'voyager.roles.index', NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-08-07 13:52:09', '2021-08-07 15:12:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-08-07 13:52:09', '2021-08-07 15:12:22', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-08-07 13:52:09', '2021-08-07 15:12:22', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-08-07 13:52:09', '2021-08-07 15:12:22', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2021-08-07 13:52:09', '2024-08-07 12:34:31', 'voyager.settings.index', NULL),
(12, 1, 'Wallets', '', '_self', 'voyager-wallet', '#000000', 29, 4, '2021-08-07 14:37:16', '2021-10-20 11:20:11', 'voyager.wallets.index', 'null'),
(14, 1, 'Attachments', '', '_self', 'voyager-paperclip', '#000000', 28, 2, '2021-08-07 15:16:55', '2022-02-01 10:41:20', 'voyager.attachments.index', 'null'),
(15, 1, 'Notifications', '', '_self', 'voyager-bell', NULL, 29, 5, '2021-08-07 15:19:11', '2021-10-20 11:20:11', 'voyager.notifications.index', NULL),
(16, 1, 'Post Comments', '', '_self', 'voyager-bubble', NULL, 28, 3, '2021-08-07 15:20:55', '2022-02-01 10:41:20', 'voyager.post-comments.index', NULL),
(17, 1, 'Posts', '', '_self', 'voyager-images', NULL, 28, 1, '2021-08-07 15:22:37', '2021-08-07 15:58:22', 'voyager.user-posts.index', NULL),
(18, 1, 'Reactions', '', '_self', 'voyager-bubble-hear', NULL, 29, 7, '2021-08-07 15:24:58', '2021-10-20 11:20:11', 'voyager.reactions.index', NULL),
(19, 1, 'Subscriptions', '', '_self', 'voyager-credit-cards', NULL, 27, 1, '2021-08-07 15:25:32', '2021-08-07 15:55:55', 'voyager.subscriptions.index', NULL),
(20, 1, 'Transactions', '', '_self', 'voyager-dollar', NULL, 27, 2, '2021-08-07 15:26:33', '2021-08-07 15:55:55', 'voyager.transactions.index', NULL),
(21, 1, 'User Bookmarks', '', '_self', 'voyager-bookmark', NULL, 28, 4, '2021-08-07 15:27:47', '2022-02-01 10:41:20', 'voyager.user-bookmarks.index', NULL),
(22, 1, 'Lists', '', '_self', 'voyager-list', '#000000', 29, 8, '2021-08-07 15:28:45', '2021-10-20 11:20:11', 'voyager.user-lists.index', 'null'),
(23, 1, 'List Members', '', '_self', 'voyager-people', '#000000', 29, 9, '2021-08-07 15:29:07', '2021-10-20 11:19:58', 'voyager.user-list-members.index', 'null'),
(24, 1, 'Messages', '', '_self', 'voyager-chat', '#000000', 29, 6, '2021-08-07 15:42:32', '2021-10-20 11:20:11', 'voyager.user-messages.index', 'null'),
(25, 1, 'Withdrawals', '', '_self', 'voyager-calendar', NULL, 27, 3, '2021-08-07 15:51:14', '2021-08-07 15:55:53', 'voyager.withdrawals.index', NULL),
(26, 1, 'User lists', '', '_self', 'voyager-list', '#000000', NULL, 4, '2021-08-07 15:54:21', '2021-09-30 06:21:46', NULL, ''),
(27, 1, 'Money', '', '_self', 'voyager-dollar', '#000000', NULL, 7, '2021-08-07 15:55:37', '2023-06-21 10:02:27', NULL, ''),
(28, 1, 'Posts', '', '_self', 'voyager-images', '#000000', NULL, 5, '2021-08-07 15:57:03', '2021-09-30 06:21:46', NULL, ''),
(29, 1, 'Users', '', '_self', 'voyager-person', '#000000', NULL, 3, '2021-08-07 15:58:37', '2021-08-08 17:32:02', NULL, ''),
(30, 1, 'Countries', '', '_self', 'voyager-location', '#000000', 33, 2, '2021-09-21 13:10:16', '2021-09-30 06:26:53', 'voyager.countries.index', 'null'),
(31, 1, 'Taxes', '', '_self', 'voyager-credit-card', '#000000', 33, 1, '2021-09-21 13:11:55', '2021-09-30 06:26:53', 'voyager.taxes.index', 'null'),
(32, 1, 'Pages', '', '_self', 'voyager-news', '#000000', NULL, 9, '2021-09-29 14:43:27', '2023-06-21 10:02:27', 'voyager.custom-pages.index', 'null'),
(33, 1, 'Taxes', '', '_self', 'voyager-credit-card', '#000000', NULL, 8, '2021-09-30 06:25:21', '2023-06-21 10:02:27', NULL, ''),
(34, 1, 'Identity Checks', '', '_self', 'voyager-check', '#000000', 29, 2, '2021-10-20 11:11:44', '2021-10-20 11:21:40', 'voyager.user-verifies.index', 'null'),
(35, 1, 'User Reports', '', '_self', 'voyager-eye', '#000000', 29, 10, '2021-11-05 06:32:40', '2022-02-01 10:41:22', 'voyager.user-reports.index', 'null'),
(36, 1, 'Contact Messages', '', '_self', 'voyager-book', '#000000', NULL, 10, '2021-11-19 13:11:34', '2024-08-07 12:37:08', 'voyager.contact-messages.index', 'null'),
(37, 1, 'Featured Users', '', '_self', 'voyager-star', '#000000', 29, 11, '2022-02-01 10:00:11', '2022-02-01 10:41:54', 'voyager.featured-users.index', 'null'),
(38, 1, 'Payment Requests', '', '_self', 'voyager-window-list', '#000000', 27, 4, '2022-02-06 11:23:24', '2022-02-06 11:25:11', 'voyager.payment-requests.index', 'null'),
(39, 1, 'Invoices', '', '_self', 'voyager-receipt', NULL, 27, 5, '2022-08-04 14:06:47', '2022-08-04 14:07:16', 'voyager.invoices.index', NULL),
(41, 1, 'Stream Messages', '', '_self', 'voyager-chat', NULL, 42, 2, '2023-06-21 09:48:56', '2023-06-21 10:02:27', 'voyager.stream-messages.index', NULL),
(42, 1, 'Streams', '', '_self', 'voyager-video', '#000000', NULL, 6, '2023-06-21 09:56:54', '2023-06-21 10:02:27', NULL, ''),
(43, 1, 'Streams', '', '_self', 'voyager-video', '#000000', 42, 1, '2023-06-21 10:01:44', '2023-06-21 10:03:03', 'voyager.streams.index', 'null'),
(46, 1, 'Referrals', '', '_self', 'voyager-group', '#000000', 27, 6, '2023-06-21 11:26:04', '2023-06-21 11:31:29', 'voyager.rewards.index', 'null'),
(47, 1, 'Announcements', '', '_self', 'voyager-megaphone', '#000000', NULL, 11, '2024-08-07 12:27:57', '2024-08-07 12:37:08', 'voyager.global-announcements.index', 'null'),
(48, 1, 'Memberships', '', '_self', NULL, NULL, NULL, 13, '2024-12-05 15:26:00', '2024-12-05 15:26:00', 'voyager.memberships.index', NULL),
(49, 1, 'Membership Creators', '', '_self', NULL, NULL, NULL, 14, '2024-12-05 15:26:41', '2024-12-05 15:26:41', 'voyager.membership-creators.index', NULL),
(50, 1, 'Content Categories', '', '_self', NULL, NULL, NULL, 15, '2025-03-27 11:26:29', '2025-03-27 11:26:29', 'voyager.content-categories.index', NULL),
(51, 1, 'Creator Categories', '', '_self', NULL, NULL, NULL, 16, '2025-03-27 11:27:20', '2025-03-27 11:27:20', 'voyager.creator-categories.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2021_04_27_182503_create_posts_table', 1),
(25, '2021_04_27_183624_create_post_comments_table', 1),
(26, '2021_04_27_184708_create_reactions_table', 1),
(27, '2021_04_27_185338_create_subscriptions_table', 1),
(28, '2021_04_27_192318_create_withdrawals_table', 1),
(29, '2021_05_09_125019_user_messages', 1),
(30, '2021_05_09_125020_create_attachments_table', 1),
(31, '2021_05_20_181455_create_invoices_table', 1),
(32, '2021_05_23_190500_create_transactions_table', 1),
(33, '2021_07_26_182432_user_bookmarks', 1),
(34, '2021_07_26_182613_user_lists', 1),
(35, '2021_07_26_182632_user_list_members', 1),
(36, '2021_07_30_164554_create_notifications_table', 1),
(37, '2021_08_01_192155_create_jobs_table', 1),
(38, '2021_08_02_171126_create_wallets_table', 1),
(39, '2021_09_09_182917_create_user_reports', 1),
(40, '2021_09_10_155813_create_taxes_table', 1),
(41, '2021_09_10_160221_create_countries_table', 1),
(42, '2021_09_10_164638_create_country_taxes_table', 1),
(43, '2021_09_29_165028_add_public_pages_table', 1),
(44, '2021_10_20_143619_create_user_verifies_table', 1),
(45, '2021_10_25_184224_create_creator_offers', 1),
(46, '2021_11_19_174900_create_contact_messages_table', 1),
(47, '2021_11_21_171513_insert_default_admin_settings', 1),
(48, '2021_12_19_170152_v1_0_4', 1),
(49, '2021_12_19_170152_v1_0_5', 1),
(50, '2021_12_19_170152_v1_0_6', 1),
(51, '2021_12_28_170152_v1_1_0', 1),
(52, '2021_12_28_170152_v1_1_1', 1),
(53, '2021_12_31_170152_v1_1_2', 1),
(54, '2022_1_6_170152_v1_1_4', 1),
(55, '2022_1_8_170152_v1_1_5', 1),
(56, '2100_1_12_170153_v1_2_0', 1),
(57, '2101_1_20_170153_v1_3_1', 1),
(58, '2102_1_22_170153_v1_4_0', 1),
(59, '2103_1_25_170153_v1_5_0', 2),
(60, '2104_1_29_170153_v1_5_2', 2),
(61, '2105_1_31_170153_v1_6_0', 2),
(62, '2106_2_5_170153_v1_6_2', 2),
(63, '2107_02_01_205525_v1_7_0', 2),
(64, '2108_2_10_205525_v1_7_1', 2),
(65, '2109_2_11_205525_v1_8_1', 2),
(66, '2110_2_23_205525_v1_9_0', 2),
(67, '2111_2_23_205525_v2_0_0', 2),
(68, '2112_3_5_205525_v2_1_0', 2),
(69, '2113_3_10_205525_v2_2_0', 2),
(70, '2114_3_14_205525_v2_3_0', 2),
(71, '2116_03_10_185313_v2_4_0', 2),
(72, '2117_03_22_185313_v2_5_0', 2),
(73, '2118_03_28_202948_v2_6_0', 2),
(74, '2119_04_9_202948_v2_7_0', 2),
(75, '2119_04_9_202948_v2_8_0', 2),
(76, '2120_02_16_190107_v3_0_0', 2),
(77, '2121_04_30_190107_v3_2_0', 2),
(78, '2122_05_2_190107_v3_3_0', 2),
(79, '2123_05_9_190107_v3_4_0', 2),
(80, '2125_05_16_190107_v3_5_0', 2),
(81, '2126_05_20_190107_v3_5_1', 2),
(82, '2127_03_29_184610_v3_6_0', 2),
(83, '2128_05_31_184610_v3_7_0', 2),
(84, '2129_05_31_184610_v3_8_0', 2),
(85, '2130_05_31_184610_v3_9_0', 2),
(86, '2131_06_24_184610_v4_0_0', 2),
(87, '2132_07_8_184610_v4_2_0', 2),
(88, '2133_07_8_184610_v4_3_0', 2),
(89, '2134_07_8_184610_v4_3_1', 2),
(90, '2135_07_19_181329_v4_4_0', 2),
(91, '2136_08_13_141149_v4_5_0', 2),
(92, '2137_09_10_165955_v4_7_0', 2),
(93, '2138_09_10_165955_v4_8_0', 2),
(94, '2138_09_26_172825_v_4_9_0', 2),
(95, '2140_10_17_165955_v5_0_0', 2),
(96, '2142_10_20_165955_v5_1_0', 2),
(97, '2145_11_7_165955_v5_2_0', 2),
(98, '2145_11_7_165955_v5_3_0', 2),
(99, '2146_11_21_192853_v5_3_1', 2),
(100, '2147_11_22_192853_v5_4_0', 2),
(101, '2148_12_11_192854_v5_5_0', 2),
(102, '2149_12_29_192854_v5_6_0', 2),
(103, '2150_12_01_200043_v5_7_0', 2),
(104, '2151_3_07_200043_v5_8_0', 2),
(105, '2152_3_07_200043_v5_9_0', 2),
(106, '2153_3_07_200044_v6_1_0', 2),
(107, '2154_3_07_200045_v6_2_0', 2),
(108, '2155_3_07_200045_v6_3_0', 2),
(109, '2156_3_07_200046_v6_4_0', 2),
(110, '2157_09_20_181428_v6_5_0', 2),
(111, '2158_08_24_184332_v6_6_0', 2),
(112, '2158_08_24_184333_v6_7_0', 2),
(113, '2158_08_24_184334_v6_8_0', 2),
(114, '2159_08_24_184334_v6_9_0', 2),
(115, '2160_08_24_184334_v7_0_0', 2),
(116, '2161_03_26_203627_v7_1_0', 2),
(117, '2162_03_26_203627_v7_2_0', 2),
(118, '2163_07_16_180250_v7_3_0', 2),
(119, '2163_07_16_180250_v7_4_0', 2),
(120, '2164_07_16_180250_v7_5_0', 2),
(123, '2024_12_05_173608_create_memberships_table', 3),
(124, '2024_12_05_174516_create_membership_creators_table', 4),
(125, '2025_03_23_204921_create_content_categories_table', 5),
(126, '2025_03_23_205021_create_creator_categories_table', 5),
(127, '2025_03_23_221710_attachment_category', 5),
(128, '2025_03_25_183042_creator_category', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stream_id` bigint(20) UNSIGNED DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('richard.yang@antaira.com', '$2y$10$Am073O6F6Yax2jhVyfPXlOppInrzWh5gcrHSHHBWy3nA3DejlUiyO', '2025-02-24 04:15:27'),
('kevin@fergusonangusfarms.com', '$2y$10$LID7CkSr6IOcaa0Gomi46OdFLSoHBJmUNIu9xE5EqnQ.ihsIFFCdu', '2025-02-24 04:24:38'),
('pollye@atlanticbb.net', '$2y$10$Ix6jkUrBcdh917sUo2dQKesFZknt6APWz8gOADTqnVFsQ/uRwGqou', '2025-03-02 02:05:21'),
('hherrera0777@gmail.com', '$2y$10$gClUtxGXzpWcDLKdaLc3s.9AQJhm1t0aoRvn/WDmsleQwp4ywB08S', '2025-03-03 14:07:41'),
('jsstubbs@msn.com', '$2y$10$U89s/BpAvSrXWTHqykH46uctvW2X8L96Om4/9vjPaUU4sih69OWkK', '2025-03-03 20:14:09'),
('accounting@nbtexas.org', '$2y$10$.x6my64tdeb9.YRDMi/x0.lBwYtfJxVprW2/jGFoNqq65NE9zfURW', '2025-03-04 00:54:38'),
('keithmoore4769@gmail.com', '$2y$10$ogWZF/Cux4CnzAVVuzhxbOx8RX3f6fZGMCelwUkGxFDUcmSsW.nAS', '2025-03-04 01:44:42'),
('kgiddings@premierws.net', '$2y$10$4043OyCFyXWy7PgjE/rZEeTCOZRLA.lSRxUKry/wicsOQ3pikw9YC', '2025-03-04 01:47:48'),
('ttraultuist@yahoo.com', '$2y$10$h3yY.ionJzyvJ4VcQJiuCuFV/TkEeFTeVakWxtOzoY9dYM41RQIci', '2025-03-12 18:03:14'),
('62monarch@gmail.com', '$2y$10$DzVZ/WE3JfoT/KxL2.67tu2Af/ZDLGC8r7JVh8FEXMSy8KIU9CxxK', '2025-03-14 22:27:18'),
('desiree@congconn.com', '$2y$10$OmaD1J5Txkq4QDxS7jbryuuq8H3PGERR38oIYY0n8MhR7K3VfdYvO', '2025-03-16 12:23:58'),
('park_claire1987@yahoo.com', '$2y$10$cMtMDCBAm3PAxgNFq/0MruM42p/a79mt3717L8eMDrxCpdhiA2n9K', '2025-03-17 04:09:22'),
('miporin1023mymy@gmail.com', '$2y$10$sCP7W4YLSmKsQieP1t2VeOKUs8yaGLYJ.IbXmzwy9HpT6duPwTJXi', '2025-03-17 07:29:49'),
('psykeswilliams22@gmail.com', '$2y$10$b70fwTZspxZPOZPUn/BFzO4WkmaTfJgLOyiClB1XlMeEIgEsOtMo6', '2025-03-17 22:04:02'),
('randyltz@gmail.com', '$2y$10$IpqfXnxSRaUMw3mFOKpFDuZFBGjxyB5mmgbUqzA7NKAtxPyX8K8/q', '2025-03-18 04:47:23'),
('morrisjustin37@gmail.com', '$2y$10$fl9y6LbNTus8.IvhhAmpj.WAjDrc9DcwyGu7RKb8cX.6huHGjyMiW', '2025-03-19 01:13:43'),
('sunitabehlx@gmail.com', '$2y$10$pp5p9XcCz8tcWOV3LuJpaObEptf4hOinLfKm6gH6P86sqZx3tvKIm', '2025-03-19 02:00:23'),
('keithhembree@gmail.com', '$2y$10$uFr/6dZMVTyL4YnL2TwX9e24DPZqpn2LAUpzszv78F248UCNnByAa', '2025-03-19 11:58:53'),
('mrhplusrjm@gmail.com', '$2y$10$.te60AAYRs2xYDZA2yGiu.LVJ/SBFXXSZb/cnvqNZDcw/T69QvBL2', '2025-03-19 16:15:29'),
('axel@kretzsch.eu', '$2y$10$ekh8ZikPheRXMJ8YTRZlJOnlswCAqf14uX181G1CxlOZtR2093eSy', '2025-03-19 18:27:01'),
('marydiane.rn@gmail.com', '$2y$10$2/84vkbiph6x7bQ4IsEQRu4RdgW2wXiw.QnKZIKxsgQwvGsEk4tca', '2025-03-19 21:20:29'),
('ohmiteitoku@gmail.com', '$2y$10$AzcTK29tQHc8rzJQZ5j1vOorhed9H/VvsWoi9k4MwKY1/OrtGo64u', '2025-03-20 02:36:22'),
('carlandersonp05@gmail.com', '$2y$10$/RiGiyJ5pk285EHj3/.iTum6W0iDQiaF7SQn5LmPmGKKnL2FvaTeK', '2025-03-20 04:06:59'),
('mslcasey1@gmail.com', '$2y$10$q9YqOCJreEY6lxmbaOlaX.CoFi1ob3j67DSIP8mYUuDFBl6OR9bae', '2025-03-20 07:37:59'),
('trevor.vranicar@gmail.com', '$2y$10$7O.Lhn4NLKshBaNGW8iw2OlOvZenRCLeK4YoJcIXZdAmoQiMKo6iS', '2025-03-20 09:48:31'),
('magge12345678@gmail.com', '$2y$10$eFuI01TpFFqMN4PjnDWxHuZI9dEZb3xHVXUIpzwRRPAN2i4JMSSFS', '2025-03-20 10:05:52'),
('chikusa70@gmail.com', '$2y$10$LIUaeFRaroIrjBWcue.S/.sBu.plolkn7snZx42FH8Zx8IjcwckGe', '2025-03-20 11:25:30'),
('r.a.ardeleanu@gmail.com', '$2y$10$pj/j1eMdvY6b2WVP73qK2.m9Ch7eB5zqx5uqd8v43pQJKlQnNJmI6', '2025-03-20 11:56:43'),
('kachey@pksti.com', '$2y$10$5zivJ7vFvXoIq/4yeQfQC.WeQ172tvdkMDlBvhiO4aKrh09XUKD1W', '2025-03-20 13:02:46'),
('bte1075@yahoo.com', '$2y$10$CZNZZKuxrI08y.aPSvKae.9cM0TpfmKpvwBW4TdNXSTdvpPDA.cz.', '2025-03-20 16:30:41'),
('ssgturnusa@yahoo.com', '$2y$10$.Xst0LIk3Si2O.y474mOFOMhFEy/hV4CUZLE7BE1me0hKpDS8rtYa', '2025-03-20 18:03:30'),
('jerrymcneiljr@yahoo.com', '$2y$10$0zaPSMhTt4LLuWA6GXmDL.ybCtVFyCKlqnUn3m6qCUDA5QgtazxZ.', '2025-03-20 19:32:53'),
('smilingheart74@yahoo.com', '$2y$10$P.GZOpUVsqONldnRogVeW.dtX8iagU1Mhh.IfLYDRZ.YWF81U3ucm', '2025-03-20 22:03:52'),
('greg.rivera28@gmail.com', '$2y$10$7RFZrJPCfSsuZgr454XrQe32G59WJ27//uaWaOPpbflJG00l5at5a', '2025-03-20 23:12:07'),
('p2u@usa.com', '$2y$10$2Pas.YUXj2L1GDkzjGT2AOUjr1JwgKHyoZln9udTXN7C0BSivJizW', '2025-03-21 01:04:21'),
('vegabrandy96@gmail.com', '$2y$10$6.7GkMn7AyfJ8EwACS4jaueDRzMQSLvuGaRsWRKM9QdBAC8xzjk.i', '2025-03-21 06:09:52'),
('2can007@gmail.com', '$2y$10$.cTkBFEfeli/MyZC6H/i7u36tbJHoBvXkm3A4FK4Q/A1Qb8zcQXXG', '2025-03-21 16:04:46'),
('jess.kubilius@gmail.com', '$2y$10$5njxgXZCvXYcyk2JZeUWseWvYXfzU9N7nmx3Mm.BkFu8BPmwPxWDq', '2025-03-21 20:01:58'),
('joe@expresslanetraffic.com', '$2y$10$dfOKBsve9y0ccj64/vXirO7fUjofY09sWBomFM4PbukPWifHTfsaG', '2025-03-21 20:45:38'),
('kw.thrg@yahoo.com', '$2y$10$AJ7Ix8LUfL5vjoi/2qacd.o85FR7Mx62D30SrXEm2VQ/eV6hZkTNS', '2025-03-21 21:45:28'),
('threemaries2002@yahoo.com', '$2y$10$YpajV6ODjIX5NSvKdMuGy.XQE0/haUx72R7Zq3lWtO2OcE5PB6fAS', '2025-03-21 22:04:15'),
('scobaro@gmail.com', '$2y$10$zBzfjf4oNC.OLu7lWtafE.cEy53INpAFFc6U8o/cv2p50UCDu8Xx.', '2025-03-22 03:13:10'),
('xeod1sgt@aol.com', '$2y$10$3kwcIy289oixydaxi5rcX..5G1u1vLzVWJkMLNhSBVbETi9shVhEy', '2025-03-22 20:56:51'),
('pegisaac@aol.com', '$2y$10$Ge1vUHmmLduXnlGqkTokU.sHto2E8XdSW.FEvEMlAJC.xqCV6CBO6', '2025-03-24 09:49:45');

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `type` varchar(191) DEFAULT NULL,
  `reason` varchar(191) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(2, 'browse_bread', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(3, 'browse_database', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(4, 'browse_media', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(5, 'browse_compass', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(6, 'browse_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(7, 'read_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(8, 'edit_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(9, 'add_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(10, 'delete_menus', 'menus', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(11, 'browse_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(12, 'read_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(13, 'edit_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(14, 'add_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(15, 'delete_roles', 'roles', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(16, 'browse_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(17, 'read_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(18, 'edit_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(19, 'add_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(20, 'delete_users', 'users', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(21, 'browse_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(22, 'read_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(23, 'edit_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(24, 'add_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(25, 'delete_settings', 'settings', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(26, 'browse_hooks', NULL, '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(27, 'browse_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(28, 'read_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(29, 'edit_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(30, 'add_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(31, 'delete_wallets', 'wallets', '2021-08-07 14:37:16', '2021-08-07 14:37:16'),
(32, 'browse_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(33, 'read_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(34, 'edit_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(35, 'add_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(36, 'delete_attachments', 'attachments', '2021-08-07 15:16:55', '2021-08-07 15:16:55'),
(37, 'browse_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(38, 'read_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(39, 'edit_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(40, 'add_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(41, 'delete_notifications', 'notifications', '2021-08-07 15:19:11', '2021-08-07 15:19:11'),
(42, 'browse_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(43, 'read_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(44, 'edit_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(45, 'add_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(46, 'delete_post_comments', 'post_comments', '2021-08-07 15:20:55', '2021-08-07 15:20:55'),
(47, 'browse_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(48, 'read_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(49, 'edit_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(50, 'add_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(51, 'delete_posts', 'posts', '2021-08-07 15:22:37', '2021-08-07 15:22:37'),
(52, 'browse_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(53, 'read_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(54, 'edit_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(55, 'add_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(56, 'delete_reactions', 'reactions', '2021-08-07 15:24:58', '2021-08-07 15:24:58'),
(57, 'browse_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(58, 'read_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(59, 'edit_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(60, 'add_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(61, 'delete_subscriptions', 'subscriptions', '2021-08-07 15:25:32', '2021-08-07 15:25:32'),
(62, 'browse_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(63, 'read_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(64, 'edit_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(65, 'add_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(66, 'delete_transactions', 'transactions', '2021-08-07 15:26:33', '2021-08-07 15:26:33'),
(67, 'browse_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(68, 'read_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(69, 'edit_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(70, 'add_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(71, 'delete_user_bookmarks', 'user_bookmarks', '2021-08-07 15:27:47', '2021-08-07 15:27:47'),
(72, 'browse_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(73, 'read_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(74, 'edit_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(75, 'add_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(76, 'delete_user_lists', 'user_lists', '2021-08-07 15:28:45', '2021-08-07 15:28:45'),
(77, 'browse_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(78, 'read_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(79, 'edit_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(80, 'add_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(81, 'delete_user_list_members', 'user_list_members', '2021-08-07 15:29:07', '2021-08-07 15:29:07'),
(82, 'browse_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(83, 'read_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(84, 'edit_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(85, 'add_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(86, 'delete_user_messages', 'user_messages', '2021-08-07 15:42:32', '2021-08-07 15:42:32'),
(87, 'browse_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(88, 'read_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(89, 'edit_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(90, 'add_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(91, 'delete_withdrawals', 'withdrawals', '2021-08-07 15:51:14', '2021-08-07 15:51:14'),
(92, 'browse_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(93, 'read_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(94, 'edit_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(95, 'add_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(96, 'delete_countries', 'countries', '2021-09-21 13:10:16', '2021-09-21 13:10:16'),
(97, 'browse_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(98, 'read_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(99, 'edit_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(100, 'add_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(101, 'delete_taxes', 'taxes', '2021-09-21 13:11:55', '2021-09-21 13:11:55'),
(102, 'browse_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(103, 'read_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(104, 'edit_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(105, 'add_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(106, 'delete_public_pages', 'public_pages', '2021-09-29 14:43:27', '2021-09-29 14:43:27'),
(107, 'browse_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(108, 'read_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(109, 'edit_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(110, 'add_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(111, 'delete_user_verifies', 'user_verifies', '2021-10-20 11:11:44', '2021-10-20 11:11:44'),
(112, 'browse_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(113, 'read_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(114, 'edit_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(115, 'add_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(116, 'delete_user_reports', 'user_reports', '2021-11-05 06:32:40', '2021-11-05 06:32:40'),
(117, 'browse_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(118, 'read_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(119, 'edit_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(120, 'add_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(121, 'delete_contact_messages', 'contact_messages', '2021-11-19 13:11:33', '2021-11-19 13:11:33'),
(122, 'browse_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(123, 'read_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(124, 'edit_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(125, 'add_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(126, 'delete_featured_users', 'featured_users', '2022-02-01 10:00:11', '2022-02-01 10:00:11'),
(127, 'browse_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(128, 'read_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(129, 'edit_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(130, 'add_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(131, 'delete_payment_requests', 'payment_requests', '2022-02-06 11:23:24', '2022-02-06 11:23:24'),
(132, 'browse_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(133, 'read_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(134, 'edit_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(135, 'add_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(136, 'delete_invoices', 'invoices', '2022-08-04 14:06:47', '2022-08-04 14:06:47'),
(142, 'browse_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(143, 'read_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(144, 'edit_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(145, 'add_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(146, 'delete_stream_messages', 'stream_messages', '2023-06-21 09:48:56', '2023-06-21 09:48:56'),
(147, 'browse_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(148, 'read_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(149, 'edit_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(150, 'add_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(151, 'delete_streams', 'streams', '2023-06-21 10:01:44', '2023-06-21 10:01:44'),
(152, 'browse_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(153, 'read_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(154, 'edit_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(155, 'add_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(156, 'delete_referral_code_usages', 'referral_code_usages', '2023-06-21 11:26:01', '2023-06-21 11:26:01'),
(157, 'browse_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04'),
(158, 'read_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04'),
(159, 'edit_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04'),
(160, 'add_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04'),
(161, 'delete_rewards', 'rewards', '2023-06-21 11:26:04', '2023-06-21 11:26:04'),
(162, 'browse_global_announcements', 'global_announcements', '2024-08-07 12:27:57', '2024-08-07 12:27:57'),
(163, 'read_global_announcements', 'global_announcements', '2024-08-07 12:27:57', '2024-08-07 12:27:57'),
(164, 'edit_global_announcements', 'global_announcements', '2024-08-07 12:27:57', '2024-08-07 12:27:57'),
(165, 'add_global_announcements', 'global_announcements', '2024-08-07 12:27:57', '2024-08-07 12:27:57'),
(166, 'delete_global_announcements', 'global_announcements', '2024-08-07 12:27:57', '2024-08-07 12:27:57'),
(167, 'browse_memberships', 'memberships', '2024-12-05 15:26:00', '2024-12-05 15:26:00'),
(168, 'read_memberships', 'memberships', '2024-12-05 15:26:00', '2024-12-05 15:26:00'),
(169, 'edit_memberships', 'memberships', '2024-12-05 15:26:00', '2024-12-05 15:26:00'),
(170, 'add_memberships', 'memberships', '2024-12-05 15:26:00', '2024-12-05 15:26:00'),
(171, 'delete_memberships', 'memberships', '2024-12-05 15:26:00', '2024-12-05 15:26:00'),
(172, 'browse_membership_creators', 'membership_creators', '2024-12-05 15:26:40', '2024-12-05 15:26:40'),
(173, 'read_membership_creators', 'membership_creators', '2024-12-05 15:26:40', '2024-12-05 15:26:40'),
(174, 'edit_membership_creators', 'membership_creators', '2024-12-05 15:26:40', '2024-12-05 15:26:40'),
(175, 'add_membership_creators', 'membership_creators', '2024-12-05 15:26:40', '2024-12-05 15:26:40'),
(176, 'delete_membership_creators', 'membership_creators', '2024-12-05 15:26:40', '2024-12-05 15:26:40'),
(177, 'browse_content_categories', 'content_categories', '2025-03-27 11:26:29', '2025-03-27 11:26:29'),
(178, 'read_content_categories', 'content_categories', '2025-03-27 11:26:29', '2025-03-27 11:26:29'),
(179, 'edit_content_categories', 'content_categories', '2025-03-27 11:26:29', '2025-03-27 11:26:29'),
(180, 'add_content_categories', 'content_categories', '2025-03-27 11:26:29', '2025-03-27 11:26:29'),
(181, 'delete_content_categories', 'content_categories', '2025-03-27 11:26:29', '2025-03-27 11:26:29'),
(182, 'browse_creator_categories', 'creator_categories', '2025-03-27 11:27:20', '2025-03-27 11:27:20'),
(183, 'read_creator_categories', 'creator_categories', '2025-03-27 11:27:20', '2025-03-27 11:27:20'),
(184, 'edit_creator_categories', 'creator_categories', '2025-03-27 11:27:20', '2025-03-27 11:27:20'),
(185, 'add_creator_categories', 'creator_categories', '2025-03-27 11:27:20', '2025-03-27 11:27:20'),
(186, 'delete_creator_categories', 'creator_categories', '2025-03-27 11:27:20', '2025-03-27 11:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(33, 3),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(92, 3),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(102, 3),
(103, 1),
(103, 3),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(107, 3),
(108, 1),
(108, 3),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(112, 3),
(113, 1),
(113, 3),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(117, 3),
(118, 1),
(118, 3),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(122, 3),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(127, 3),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(132, 3),
(133, 1),
(133, 3),
(136, 1),
(142, 1),
(142, 3),
(143, 1),
(143, 3),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(147, 3),
(148, 1),
(148, 3),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext DEFAULT NULL,
  `price` double DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `release_date` timestamp NULL DEFAULT NULL,
  `expire_date` timestamp NULL DEFAULT NULL,
  `is_pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `text`, `price`, `status`, `release_date`, `expire_date`, `is_pinned`, `created_at`, `updated_at`) VALUES
(1, 2, 'Testing OPEN Post', 0, 1, NULL, NULL, 0, '2024-12-05 14:57:56', '2024-12-05 14:57:56'),
(2, 2, 'PPV Post, Should not open', 5, 1, NULL, NULL, 0, '2024-12-05 14:58:23', '2024-12-05 14:58:23'),
(3, 2, 'Test Post, Public Post.', 0, 1, NULL, NULL, 0, '2024-12-05 14:58:37', '2024-12-05 14:58:37'),
(4, 3, 'Open Post, Only 1 post', 0, 1, NULL, NULL, 0, '2024-12-05 14:58:51', '2024-12-05 14:58:51'),
(5, 4, 'i own and train a few subs and cd  tv persons  they will be on display here soon requests for pics vids willl be accepted also nothing   is to  much apart from blood or scat we do not do that', 0, 1, NULL, NULL, 0, '2025-01-03 20:34:40', '2025-01-03 21:06:30'),
(6, 4, 'meet zoe the tv what a wonderfull bum she has to do with as your please', 0, 1, NULL, NULL, 0, '2025-01-03 20:40:56', '2025-01-03 20:41:33'),
(7, 4, 'zoe.s red bottom but not finished yet spanking is what i love to do to her', 0, 1, NULL, NULL, 0, '2025-01-03 20:42:53', '2025-01-03 20:42:53'),
(8, 4, 'DEEP IN ZOES ASS VIDS AVAILABLE  at cost', 1, 1, NULL, NULL, 0, '2025-01-03 20:53:16', '2025-01-03 20:53:16'),
(9, 1, 'Testing Post for Teen Category only', 0, 0, NULL, NULL, 0, '2025-03-27 11:33:51', '2025-03-27 11:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `public_pages`
--

CREATE TABLE `public_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `short_title` varchar(191) DEFAULT '',
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shown_in_footer` tinyint(1) DEFAULT NULL,
  `is_tos` tinyint(1) DEFAULT 0,
  `is_privacy` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `public_pages`
--

INSERT INTO `public_pages` (`id`, `slug`, `title`, `short_title`, `content`, `created_at`, `updated_at`, `page_order`, `shown_in_footer`, `is_tos`, `is_privacy`) VALUES
(3, 'terms-and-conditions', 'Terms and conditions', 'Terms', '<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Overview</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">This website is operated by Qdev Techs. Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to Qdev Techs. Qdev Techs offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">By visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply&nbsp; to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Platform Terms</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You must not transmit any worms or viruses or any code of a destructive nature.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">A breach or violation of any of the Terms will result in an immediate termination of your Services.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">General Conditions</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right to refuse service to anyone for any reason at any time.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Accuracy, Completeness And Timeliness Of Information</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">This site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Modifications To The Service And Prices</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Prices for our products are subject to change without notice.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\"><span style=\" font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"font-size: 24px; font-weight: 500;\">Products And Services</span></span></h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Certain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor\'s display of any color will be accurate.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of our users. Users reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\"><span style=\" font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"font-size: 24px; font-weight: 500;\">Accuracy Of Billing And Account Information</span></span></h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree to provide current, complete and accurate purchase and account information for all purchases made at our store.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">For more detail, please review our Returns Policy.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Optional Tools</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We may provide you with access to third-party tools over which we neither monitor nor have any control nor input.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You acknowledge and agree that we provide access to such tools &rdquo;as is&rdquo; and &ldquo;as available&rdquo; without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Any use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Third-party Links</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Certain content, products and services available via our Service may include materials from third-parties.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Third-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party\'s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">User Comments, Feedback And Other Submissions</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">If, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, \'comments\'), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party&rsquo;s intellectual property or these Terms of Service.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Your submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Errors, Inaccuracies And Omissions</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Prohibited Uses</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Disclaimer Of Warranties; Limitation Of Liability</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided \'as is\' and \'as available\' for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">In no case shall Qdev Techs, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Indemnification</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You agree to indemnify, defend and hold harmless Qdev Techs and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys&rsquo; fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Severability</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">In the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Termination</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Entire Agreement</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Governing Law</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws Prahova &ndash; Romania.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Changes To Terms Of Service</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">You can review the most current version of the Terms of Service at any time at this page.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Contact Information</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem;  font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Questions about the Terms of Service should be sent to us over the <a href=\"../contact\">contact page</a>.</p>', '2021-09-30 07:07:35', '2021-09-30 07:07:35', 3, 1, 1, 0);
INSERT INTO `public_pages` (`id`, `slug`, `title`, `short_title`, `content`, `created_at`, `updated_at`, `page_order`, `shown_in_footer`, `is_tos`, `is_privacy`) VALUES
(4, 'privacy', 'Privacy Policy', 'Privacy', '<p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">This Privacy Policy describes how your personal information is collected, used, and shared when you visit or make a purchase from https://your-domain.com (the &ldquo;Site&rdquo;). Continuing using this site means you agree to all of the mentions below.</span></p>\n<p class=\"MsoNormal\" style=\"margin-bottom: 0in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Personal information we collect</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">When you visit the Site, we automatically collect certain information about your device, including information about your web browser, IP address, time zone, and some of the cookies that are installed on your device. Additionally, as you browse the Site, we collect information about the individual web pages or products that you view, what websites or search terms referred you to the Site, and information about how you interact with the Site. We refer to this automatically-collected information as &ldquo;Device Information.&rdquo;</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We collect Device Information using the following technologies:</p>\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">\n<li style=\"box-sizing: border-box;\">&ldquo;Cookies&rdquo; are data files that are placed on your device or computer and often include an anonymous unique identifier. For more information about cookies, and how to disable cookies, visit <a href=\"https://www.cookiesandyou.com/\" target=\"_blank\" rel=\"noopener\">cookiesandyou.com</a>.</li>\n<li style=\"box-sizing: border-box;\">&ldquo;Log files&rdquo; track actions occurring on the Site, and collect data including your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps.</li>\n</ul>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The payments on our marketplace are made via Paypal, so we do not store any transactions related information, like credit card number, billing information etc. We do however store the Paypal transaction ID for easier reference in case of any disputes. We refer to this information as &ldquo;Order Information.&rdquo;</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">When we talk about &ldquo;Personal Information&rdquo; in this Privacy Policy, we are talking both about Device Information and Order Information.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">How do we use your personal information?</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We use the Order Information that we collect generally to fulfill any orders placed through the Site). Additionally, we use this Order Information to:</p>\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">\n<li style=\"box-sizing: border-box;\">Communicate with you;</li>\n<li style=\"box-sizing: border-box;\">Screen our orders for potential risk or fraud; and</li>\n<li style=\"box-sizing: border-box;\">When in line with the preferences you have shared with us, provide you with information or advertising relating to our products or services.</li>\n<li style=\"box-sizing: border-box;\">We use the Device Information that we collect to help us screen for potential risk and fraud (in particular, your IP address), and more generally to improve and optimize our Site (for example, by generating analytics about how our customers browse and interact with the Site, and to assess the success of our marketing and advertising campaigns).</li>\n</ul>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Sharing your personal information</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We do not share your Personal Information with third parties.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We use Google Analytics to help us understand how our customers use the Site. You can read more about how Google uses your Personal Information&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent;\" href=\"https://www.google.com/intl/en/policies/privacy/\" target=\"_blank\" rel=\"noopener\">Here</a>. You can also opt-out of Google Analytics&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent;\" href=\"https://tools.google.com/dlpage/gaoptout\" target=\"_blank\" rel=\"noopener\">Here</a>&nbsp;.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Finally, we may also share&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder;\">limited</span>&nbsp;Personal Information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful request for information we receive, or to otherwise protect our rights.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Do not track</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Please note that we do not alter our Site&rsquo;s data collection and use practices when we see a Do Not Track signal from your browser.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Your rights</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">If you are a European resident, you have the right to access personal information we hold about you and to ask that your personal information be corrected, updated, or deleted. If you would like to exercise this right, please contact us through the contact information below.</p>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">Additionally, if you are a European resident we note that we are processing your information in order to fulfill contracts we might have with you (for example if you make an order through the Site), or otherwise to pursue our legitimate business interests listed above.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Data retention</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">When you place an order through the Site, we will maintain your Order Information for our records unless and until you ask us to delete this information.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Minors</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">The Site is not intended for individuals under the age of 18.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Changes</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">We may update this privacy policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal or regulatory reasons.</p>\n<h4 class=\"tosHeadLine\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 500; line-height: 1.2; font-size: 1.5rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Contact us</h4>\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;\">For more information about our privacy practices, if you have questions, or if you would like to make a complaint, please contact us by e-mail at contact@website.com or by sending us a&nbsp;<a style=\"box-sizing: border-box; text-decoration-line: none; background-color: transparent;\" href=\"../contact\">contact message</a>.</p>', '2021-09-30 07:09:39', '2021-09-30 07:09:39', 2, 1, 0, 1),
(5, 'help', 'Help & FAQ', 'Help', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\"><strong style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: start;\">JustFans &ndash; Premium Content Creators SaaS</strong><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: start;\"> is a fully-featured PHP platform that allows you to start your own premium content-based social media platform in no time. It allows your users to post premium content, which can only be unlocked by other viewers when purchasing a monthly subscription. On top of that, creators can earn more money from tips and paid posts, on top of of the regular subscription content.<br></span><br style=\"box-sizing: border-box; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: start;\"><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px; text-align: start;\">The experience is powered by a mobile-first, clean and easy-to-use design, with De themes, RTL, and localization capabilities. It allows your creators to sell their premium content via monthly subscriptions, offers, bundles, tips, and pay to unlock posts.</span></p>\n<p style=\"text-align: start;\"><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, Noto Sans, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"font-size: 24px; letter-spacing: -0.8px;\">Posting content</span></span></p>\n<p style=\"text-align: start;\"><span style=\"font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 16px;\">In order to be able to start posting content and earn money, you will need to create an account, deppending on the platform settings you might have to verify it, then you will be able to create posts by accessing the <a href=\"http://localhost/only-fuck/public/admin/custom-pages/posts/create\">Create post</a> page, where you can upload any kind of media you want, by either drag and dropping your files onto the text area, or by clicking on the file icon bellow the text area.</span></p>\n<p style=\"text-align: start;\">&nbsp;</p>\n<p style=\"text-align: start;\"><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Subscriptions</span></p>\n<p style=\"text-align: start;\"><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">Once you get an account rolling, you will be able to purchase user subscriptions, send tips and unlock posts with your PayPal account or a credit/debit card, via Stripe. Once you have valid subscription to a user, you will then also be able to chat with him via the live messenger. Subscriptions can be cancelled at any given time.<br></span></span></p>\n<p style=\"text-align: start;\">&nbsp;</p>\n<p><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Taxes &amp; Rates</span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">Taxes can be set over the admin side by the site administrator. Generally, platform taxes can be set as an exclusive tax or custom set &amp; applied at withdrawal.&nbsp;</span></span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Withdrawals&nbsp;</span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">Withdrawals can be requested by authors at any given time. We allow Paypal &amp; Bank Transfer and the transfer are manuall made by the administrator, as a two factor check.</span></span></p>\n<p>&nbsp;</p>\n<p><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Reporting a user or a post</span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">In order to report a user or it\'s content, you can go to that user\'s profile or post, click on the three dots icon and select report. Our admins will analyze and take action&nbsp;accordingly. You can also block a certain user from seeing your profile or messaging you again.<br><br></span></span></p>\n<p><span style=\"font-family: Inter, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 24px; letter-spacing: -0.8px;\">Got questions?</span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">If you have any questions whatsoever, do not heistate to send us a message via the <a href=\"http://localhost/only-fuck/public/admin/custom-pages/contact\">Contact Page</a>.</span></span></p>\n<p><span style=\"font-family: Helvetica Neue, Helvetica, Arial, sans-serif;\"><span style=\"font-size: 16px;\">&nbsp;</span></span></p>', '2021-09-30 07:10:09', '2023-11-27 18:09:52', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reaction_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_code_usages`
--

CREATE TABLE `referral_code_usages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `used_by` bigint(20) UNSIGNED NOT NULL,
  `referral_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `referral_code_usage_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `reward_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(2, 'user', 'Normal User', '2021-08-07 13:52:09', '2021-08-07 13:52:09'),
(3, 'demo', 'Demo', '2021-11-22 10:55:03', '2021-11-22 10:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.name', 'Site name', 'T Girl Only', '', 'text', 10, 'Site'),
(2, 'site.description', 'Site description', 'Amatuer Trans, Crossdresser, Sissy and Femboy Porn Fans Site', '', 'text', 20, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'TgirlsOnly  Admin', '', 'text', 2, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to the TgirlsOnly Admin Panel. Log in to manage and customize your site!', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(12, 'feed.feed_posts_per_page', 'Posts per page', '3', NULL, 'text', 2, 'Feed'),
(15, 'feed.feed_suggestions_card_per_page', 'Suggestion box cards per page', '3', NULL, 'text', 90, 'Feed'),
(16, 'feed.feed_suggestions_total_cards', 'Suggestion box total cards', '3', NULL, 'text', 80, 'Feed'),
(30, 'media.ffprobe_path', 'FFProbe Path', NULL, '', 'text', 30, 'Media'),
(31, 'media.ffmpeg_path', 'FFMpeg Path', NULL, '', 'text', 20, 'Media'),
(32, 'media.allowed_file_extensions', 'Allowed file extensions', 'png,jpg,jpeg,wav,mp3,ogg,mp4,avi,mov,moov,m4v,mpeg,wmv,avi,asf', '{\n\"description\": \"If ffmpeg is not available, video formats will fallback to mp4 only.\"\n}', 'text', 70, 'Media'),
(33, 'media.max_file_upload_size', 'Max file uploads size', '9', '{\n\"description\":  \"File size in MB. Do not exceed PHP maximum upload size & post size as video uploads might silently fail.\"\n}', 'text', 75, 'Media'),
(34, 'websockets.pusher_app_key', 'Pusher App Key', NULL, NULL, 'text', 20, 'Websockets'),
(36, 'websockets.pusher_app_secret', 'Pusher App Secret', NULL, NULL, 'text', 30, 'Websockets'),
(37, 'websockets.pusher_app_cluster', 'Pusher Cluster Zone', NULL, NULL, 'text', 40, 'Websockets'),
(38, 'websockets.pusher_app_id', 'Pusher App ID', NULL, NULL, 'text', 10, 'Websockets'),
(39, 'payments.invoices_sender_name', 'Invoices Sender Name', 'Web Development for Digital Marketing Agency', NULL, 'text', 21, 'Payments'),
(40, 'payments.invoices_sender_country_name', 'Invoices Sender Country Name', 'Australia', NULL, 'text', 22, 'Payments'),
(41, 'payments.invoices_sender_street_address', 'Invoices Sender Street Address', '121 Kopkes Road', NULL, 'text', 23, 'Payments'),
(42, 'payments.invoices_sender_state_name', 'Invoices Sender State Name', 'Victoria', NULL, 'text', 24, 'Payments'),
(43, 'payments.invoices_sender_city_name', 'Invoices Sender City Name', '3351', NULL, 'text', 25, 'Payments'),
(44, 'payments.invoices_sender_postcode', 'Invoices Sender Postcode', 'PITFIELD', NULL, 'text', 26, 'Payments'),
(45, 'payments.invoices_sender_company_number', 'Invoices Sender Company Number', '(03) 5391 1216', NULL, 'text', 27, 'Payments'),
(46, 'payments.invoices_prefix', 'Invoices Prefix', 'OF', NULL, 'text', 28, 'Payments'),
(52, 'media.apply_watermark', 'Apply watermark', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\": \"For images, GD library is required. For videos, either ffmpeg or coconut transcoders.\"\n}', 'checkbox', 120, 'Media'),
(53, 'media.watermark_image', 'Watermark image', '', NULL, 'file', 130, 'Media'),
(54, 'site.light_logo', 'Light site logo', '[{\"download_link\":\"settings\\/December2024\\/fssZVXEONg0lyYq0r9oD.png\",\"original_name\":\"TgirlsOnly-Logo.png\"}]', NULL, 'file', 40, 'Site'),
(55, 'site.dark_logo', 'Dark site logo', '[{\"download_link\":\"settings\\/December2024\\/ozCyWtvn6AuADln6L0Ws.png\",\"original_name\":\"TgirlsOnly-Logo.png\"}]', NULL, 'file', 50, 'Site'),
(56, 'site.favicon', 'Site favicon', '[{\"download_link\":\"settings\\/December2024\\/FIcJdged8pgF7jPBsRFT.png\",\"original_name\":\"Tgirlsonly.png\"}]', NULL, 'file', 60, 'Site'),
(57, 'payments.stripe_public_key', 'Stripe Public Key', NULL, NULL, 'text', 37, 'Payments'),
(58, 'payments.stripe_secret_key', 'Stripe Secret Key', NULL, NULL, 'text', 38, 'Payments'),
(59, 'payments.stripe_webhooks_secret', 'Stripe Webhooks Secret', NULL, NULL, 'text', 39, 'Payments'),
(60, 'payments.paypal_client_id', 'Paypal Client Id', NULL, NULL, 'text', 40, 'Payments'),
(61, 'payments.paypal_secret', 'Paypal Secret', NULL, NULL, 'text', 41, 'Payments'),
(74, 'payments.paypal_live_mode', 'Paypal Live Mode', '1', '{\n\"true\" : \"On\",\n\"false\" : \"Off\",\n\"checked\" : true\n}', 'checkbox', 42, 'Payments'),
(78, 'emails.driver', 'Email driver', 'smtp', '{\n\"default\" : \"log\",\n\"options\" : {\n\"log\": \"Log\",\n\"sendmail\": \"Sendmail\",\n\"smtp\": \"SMTP\",\n\"mailgun\": \"Mailgun\"\n}\n}', 'select_dropdown', 43, 'Emails'),
(79, 'emails.from_name', 'Mail from name', 'T Girls Only', NULL, 'text', 44, 'Emails'),
(80, 'emails.from_address', 'Mail from address', 'info@tgirlsonly.com', NULL, 'text', 45, 'Emails'),
(81, 'emails.mailgun_domain', 'Mailgun domain', NULL, NULL, 'text', 46, 'Emails'),
(82, 'emails.mailgun_secret', 'Mailgun secret', NULL, NULL, 'text', 47, 'Emails'),
(83, 'emails.smtp_host', 'SMTP Host', 'smtp.hostinger.com', NULL, 'text', 49, 'Emails'),
(84, 'emails.smtp_port', 'SMTP Port', '465', NULL, 'text', 50, 'Emails'),
(85, 'emails.smtp_encryption', 'SMTP Encryption', 'ssl', '{\n\"default\" : \"tls\",\n\"options\" : {\n\"tls\": \"TLS\",\n\"ssl\": \"SSL\"\n}\n}', 'radio_btn', 51, 'Emails'),
(86, 'emails.smtp_username', 'SMTP Username', 'info@tgirlsonly.com', NULL, 'text', 52, 'Emails'),
(87, 'emails.smtp_password', 'SMTP Password', 'FmtmkHfk2$5', NULL, 'text', 53, 'Emails'),
(88, 'emails.mailgun_endpoint', 'Mailgun endpoint', NULL, NULL, 'text', 48, 'Emails'),
(95, 'storage.driver', 'Driver', 'public', '{\n\"default\" : \"public\",\n\"options\" : {\n\"public\": \"Local\",\n\"s3\": \"S3\",\n\"wasabi\": \"Wasabi\",\n\"do_spaces\": \"DigitalOcean Spaces\",\n\"minio\": \"Minio\",\n\"pushr\": \"Pushr\"\n}\n}', 'select_dropdown', 54, 'Storage'),
(96, 'storage.aws_access_key', 'Aws Access Key', NULL, NULL, 'text', 55, 'Storage'),
(97, 'storage.aws_secret_key', 'Aws Secret Key', NULL, NULL, 'text', 56, 'Storage'),
(98, 'storage.aws_region', 'Aws Region', NULL, NULL, 'text', 57, 'Storage'),
(99, 'storage.aws_bucket_name', 'Aws Bucket Name', NULL, NULL, 'text', 58, 'Storage'),
(100, 'storage.aws_cdn_enabled', 'Aws CloudFront Enabled', '0', '{\n\"true\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false\n}', 'checkbox', 59, 'Storage'),
(101, 'storage.aws_cdn_presigned_urls_enabled', 'Aws CloudFront PreSigned Url\'s Enabled', '0', '{\n\"true\" : \"On\",\n\"false\" : \"Off\",\n\"checked\" : false\n}', 'checkbox', 61, 'Storage'),
(102, 'storage.aws_cdn_key_pair_id', 'Aws CloudFront Key Pair Id', NULL, NULL, 'text', 62, 'Storage'),
(103, 'storage.aws_cdn_private_key_path', 'Aws CloudFront Private Key Path', NULL, NULL, 'text', 63, 'Storage'),
(104, 'storage.cdn_domain_name', 'Aws CloudFront Domain Name', NULL, NULL, 'text', 60, 'Storage'),
(106, 'compliance.enable_cookies_box', 'Enable cookies box', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true\n}', 'checkbox', 1130, 'Compliance'),
(108, 'site.allow_theme_switch', 'Allow theme switch', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\" : \"Allow users to switch between light and dark modes.\"\n}', 'checkbox', 70, 'Site'),
(109, 'site.default_user_theme', 'Default theme', 'light', '{\n\"default\" : \"light\",\n\"options\" : {\n\"light\": \"Light theme\",\n\"dark\": \"Dark theme\"\n}\n}', 'radio_btn', 80, 'Site'),
(110, 'site.allow_direction_switch', 'Allow direction switch', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\": \"Allow users to switch site direction from ltr to rtl.\"\n}', 'checkbox', 90, 'Site'),
(111, 'site.default_site_direction', 'Default site direction', 'ltr', '{\n\"default\" : \"ltr\",\n\"options\" : {\n\"ltr\": \"Left to right\",\n\"rtl\": \"Right to left\"\n}\n}', 'radio_btn', 100, 'Site'),
(112, 'site.allow_language_switch', 'Allow language switch', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\": \"Allow users to change site\'s language.\"\n}', 'checkbox', 110, 'Site'),
(113, 'site.default_site_language', 'Default site language', 'en', '{\n\"description\" : \"Language code. Must have a present language file in the resources/lang directory.\"\n}', 'text', 120, 'Site'),
(114, 'media.disable_media_right_click', 'Disable right click on media assets', '0', '{\n                        \"description\": \"If enabled, right click on attachments (posts & messages) will be disabled.\"\n                    }', 'checkbox', 175, 'Media'),
(116, 'site.homepage_type', 'Homepage type', 'landing', '{\n\"default\" : \"landing\",\n\"options\" : {\n\"landing\": \"Landing page\",\n\"login\": \"Login page\"\n}\n}', 'radio_btn', 130, 'Site'),
(119, 'site.enforce_user_identity_checks', 'Enforce User Identity Check', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\" : \"If enabled, users will only be able to post content & start streams if ID is verified.\"\n}', 'checkbox', 170, 'Site'),
(120, 'payments.currency_code', 'Site Currency Code', 'USD', '{\n                        \"description\": \"Mandatory for payment providers\"\n                    }', 'text', 66, 'Payments'),
(121, 'payments.currency_symbol', 'Site Currency Symbol', '$', '{\n                        \"description\": \"Can be a symbol or currency code and it`s shown everywhere in the website (if empty defaults to currency code)\"\n                    }', 'text', 67, 'Payments'),
(123, 'site.app_url', 'Site url', 'https://tgirlsonly.com', NULL, 'text', 1, 'Site'),
(124, 'site.allow_pwa_installs', 'Allow PWA Installs', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\" : \"Turns the site into an installable PWA on all devices. Website must be server from a root domain.\"\n}', 'checkbox', 299, 'Site'),
(126, 'social-links.facebook_url', 'Facebook', '#', NULL, 'text', 80, 'Social links'),
(127, 'social-links.instagram_url', 'Instagram', '#', NULL, 'text', 81, 'Social links'),
(128, 'social-links.twitter_url', 'Twitter', '#', NULL, 'text', 82, 'Social links'),
(129, 'social-links.whatsapp_url', 'Whatsapp', NULL, NULL, 'text', 83, 'Social links'),
(130, 'social-links.tiktok_url', 'Tik Tok', '#', NULL, 'text', 84, 'Social links'),
(131, 'social-links.youtube_url', 'Youtube', NULL, NULL, 'text', 85, 'Social links'),
(138, 'payments.withdrawal_min_amount', 'Withdrawal request minimum amount', '20', '{\n\"description\": \"Default: 20\"\n}', 'text', 91, 'Payments'),
(139, 'payments.withdrawal_max_amount', 'Withdrawal request maximum amount', '500', '{\n\"description\": \"Default: 500\"\n}', 'text', 92, 'Payments'),
(140, 'payments.deposit_min_amount', 'Min deposit amount', '5', '{}', 'text', 93, 'Payments'),
(141, 'payments.deposit_max_amount', 'Max deposit amount', '500', '{}', 'text', 94, 'Payments'),
(142, 'media.enforce_mp4_conversion', 'Enforce mp4 videos re-conversion', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\": \"Allows you skip mp4 re-conversion to platform standards, saving upload time and CPU usage. Recommended value: On.\"\n}', 'checkbox', 40, 'Media'),
(143, 'media.max_videos_length', 'Max videos length', '0', '{\n\"description\": \"Maximum videos length, specified in seconds. (0 = unlimited)\"\n}', 'text', 100, 'Media'),
(144, 'custom-code-ads.custom_css', 'Custom CSS Code', NULL, NULL, 'code_editor', 155, 'Custom Code / Ads'),
(145, 'custom-code-ads.custom_js', 'Custom JS Code', NULL, NULL, 'code_editor', 154, 'Custom Code / Ads'),
(146, 'feed.feed_suggestions_autoplay', 'Autoplay suggestions box slides', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n}', 'checkbox', 70, 'Feed'),
(147, 'storage.was_access_key', 'Wasabi Access Key', NULL, NULL, 'text', 111, 'Storage'),
(148, 'storage.was_secret_key', 'Wasabi Secret Key', NULL, NULL, 'text', 112, 'Storage'),
(149, 'storage.was_region', 'Wasabi Region', NULL, NULL, 'text', 113, 'Storage'),
(150, 'storage.was_bucket_name', 'Wasabi Bucket', NULL, NULL, 'text', 114, 'Storage'),
(151, 'feed.allow_gallery_zoom', 'Allow post galleries Zoom in', '0', '{\n                    \"description\": \"If enabled, high-res photos will feature a zoom in/out option when previewing posts media.\"\n                }', 'checkbox', 7, 'Feed'),
(152, 'media.use_url_watermark', 'Use profile url watermark', '0', '        {\n            \"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\": \"Adds profile url link as watermark to media. * Not supported for coconut transcoder.\"\n}', 'checkbox', 140, 'Media'),
(153, 'custom-code-ads.sidebar_ad_spot', 'Sidebar Ad', NULL, '{\n    \"description\" : \"Will be shown on user feed & profiles, over the right sidebar.\"\n}', 'code_editor', 117, 'Custom Code / Ads'),
(154, 'site.hide_identity_checks', 'Hide identity checks page', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\" : \"If enabled, the users ID check module link will be hidden from the menus. Useful if running the site on one-creator mode.\"\n}', 'checkbox', 180, 'Site'),
(155, 'feed.suggestions_skip_empty_profiles', 'Skip empty profiles out of the suggestions box', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\" : \"If enabled, users will only get suggestions of profiles that have both avatar and cover filled in.\"\n}', 'checkbox', 40, 'Feed'),
(156, 'payments.coinbase_api_key', 'CoinBase Api Key', NULL, NULL, 'text', 35, 'Payments'),
(157, 'payments.coinbase_webhook_key', 'CoinBase Webhooks Secret', NULL, NULL, 'text', 36, 'Payments'),
(158, 'social-login.facebook_client_id', 'Facebook client ID', NULL, NULL, 'text', 70, 'Social login'),
(159, 'social-login.facebook_secret', 'Facebook client secret', NULL, NULL, 'text', 118, 'Social login'),
(160, 'social-login.twitter_client_id', 'Twitter client ID', NULL, NULL, 'text', 119, 'Social login'),
(161, 'social-login.twitter_secret', 'Twitter client secret', NULL, NULL, 'text', 120, 'Social login'),
(162, 'social-login.google_client_id', 'Google client ID', NULL, NULL, 'text', 121, 'Social login'),
(163, 'social-login.google_secret', 'Google client secret', NULL, NULL, 'text', 122, 'Social login'),
(164, 'site.slogan', 'Site slogan', 'Amatuer Trans Porn', NULL, 'text', 30, 'Site'),
(165, 'profiles.allow_profile_qr_code', 'Allow QR code generate on profiles', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\" : \"If enabled, a button that allows generating and saving QR codes is shown.\"\n}', 'checkbox', 90, 'Profiles'),
(166, 'profiles.allow_gender_pronouns', 'Allow gender pronouns', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users will be able to enter custom pronouns which will be shown on profiles.\"\n                    }', 'checkbox', 80, 'Profiles'),
(167, 'site.redirect_page_after_register', 'Redirect page after register', 'feed', '\n                    {\n\"default\" : \"feed\",\n\"options\" : {\n\"feed\": \"Feed page\",\n\"settings\": \"User profile settings page\"\n}\n}', 'radio_btn', 150, 'Site'),
(168, 'payments.allow_manual_payments', 'Allow manual payments', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true\n                    }', 'checkbox', 30, 'Payments'),
(169, 'media.use_chunked_uploads', 'Use chunked uploads', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, file uploads will be split across multiple requests, allowing to bypass Cloudflare or max file limits.\"\n                    }', 'checkbox', 80, 'Media'),
(170, 'media.upload_chunk_size', 'Chunks size', '2', '{\n                        \"description\": \"File upload chunks size in MB. Can not exceed maximum server upload size.\"\n                    }', 'text', 90, 'Media'),
(171, 'site.enforce_email_validation', 'Enforce email validations', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, all users will be disabled site access until they verified the email. If turned of, users will still receive a confirmation pop up in user settings.\"\n                    }', 'checkbox', 160, 'Site'),
(172, 'site.homepage_redirect', 'Homepage redirect', NULL, '{\n                        \"description\": \"If this setting is used, the `Homepage type` setting will not be used anymore.\"\n                    }', 'text', 140, 'Site'),
(173, 'media.users_covers_size', 'User cover images (re)size', '599x180', '{\n                        \"description\": \"Size to which the covers will be resized to. Increasing the resolution will give higher quality cover images, but bigger files. Make sure to use the same aspect ratio.\"\n                    }', 'text', 150, 'Media'),
(174, 'security.enable_2fa', 'Enable email 2FA on logins', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users which have 2FA enabled for their account, will be prompted with a security check when logging from new devices.\"\n                        }', 'checkbox', 85, 'Security'),
(175, 'security.default_2fa_on_register', 'Default 2FA setting on user register', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users will have 2FA enabled by default, when creating new accounts.\"\n                        }', 'checkbox', 90, 'Security'),
(176, 'security.allow_users_2fa_switch', 'Allow users to turn off 2FA', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If disabled, users won\'t be able to change their 2FA settings.\"\n                        }', 'checkbox', 95, 'Security'),
(177, 'profiles.default_profile_type_on_register', 'Default profile type on user register', 'paid', '{\n                            \"default\" : \"paid\",\n                            \"options\" : {\n                                \"paid\": \"Paid profile\",\n                                \"free\": \"Free profile\",\n                                \"open\": \"Open profile\"\n                            },\n                            \"description\": \"Paid = Subscription locked content, Free = Follow locked, Open = Content is available to un-registered users. PPV content is locked for all scenarios.\"\n                            }', 'radio_btn', 20, 'Profiles'),
(178, 'profiles.default_users_to_follow', 'Default users to follow on user register', NULL, '{\n                        \"description\": \"List of user-IDs to be followed by all users when registering, separated by a comma. If users are free, their content will be shown on the feed of new users.\"\n                        }', 'text', 36, 'Profiles'),
(179, 'storage.do_access_key', 'DO Access Key', NULL, NULL, 'text', 120, 'Storage'),
(180, 'storage.do_secret_key', 'DO Secret Key', NULL, NULL, 'text', 121, 'Storage'),
(181, 'storage.do_region', 'DO Region', NULL, NULL, 'text', 123, 'Storage'),
(183, 'storage.do_bucket_name', 'DO Bucket', NULL, NULL, 'text', 122, 'Storage'),
(184, 'payments.nowpayments_api_key', 'NowPayments Api Key', NULL, NULL, 'text', 33, 'Payments'),
(185, 'payments.nowpayments_ipn_secret_key', 'NowPayments IPN Secret Key', NULL, NULL, 'text', 34, 'Payments'),
(186, 'profiles.default_user_privacy_setting_on_register', 'Default user privacy setting on user register', 'public', '{\n                    \"default\" : \"public\",\n                    \"options\" : {\n                    \"public\": \"Public profile\",\n                    \"private\": \"Private profile\"\n                    },\n                    \"description\": \"If private, the profiles will be hidden from search results.\"\n                }', 'radio_btn', 30, 'Profiles'),
(187, 'payments.withdrawal_payment_methods', 'Withdrawal allowed payment methods', 'Bank transfer, Other', '{\n                            \"description\": \"Comma separated values (Bank transfer, Stripe, PayPal, Crypto, Other)\"\n                        }', 'text', 90, 'Payments'),
(188, 'security.enforce_app_ssl', 'Enforce platform SSL usage', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Usually not required, rarely, some hosting providers needs it.\"\n                        }', 'checkbox', 130, 'Security'),
(189, 'media.users_avatars_size', 'User avatar images (re)size', '96x96', '{\n                        \"description\": \"Size to which the avatars will be resized to. Increasing the resolution will give higher quality cover images, but bigger files. Make sure to use the same aspect ratio.\"\n                    }', 'text', 160, 'Media'),
(190, 'streams.allow_streams', 'Allow streams', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        }', 'checkbox', 163, 'Streams'),
(191, 'streams.max_live_duration', 'Max Live Stream Duration', '2', '{\n                            \"description\": \"Maximum time duration for a live stream set in hours\"\n                        }', 'text', 165, 'Streams'),
(192, 'streams.pushr_key', 'Pushr Key', NULL, NULL, 'text', 175, 'Streams'),
(193, 'streams.pushr_zone_id', 'Pushr Zone Id', NULL, NULL, 'text', 185, 'Streams'),
(194, 'streams.allow_dvr', 'Allow VOD', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Enabling VODs allow creators to watch their previous live streams (no extra fees when using Pushr provider)\"\n                        }', 'checkbox', 205, 'Streams'),
(195, 'streams.pushr_encoder', 'Pushr Encoder', NULL, '{\n                            \"description\": \"Pushr stream encoder. EG: `eu`\"\n                        }', 'text', 195, 'Streams'),
(196, 'streams.allow_mux', 'Allow MUX', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 215, 'Streams'),
(197, 'streams.allow_480p', 'Allow 480p', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 235, 'Streams'),
(198, 'streams.allow_360p', 'Allow 360p', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 225, 'Streams'),
(199, 'streams.allow_576p', 'Allow 576p', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 245, 'Streams'),
(200, 'streams.allow_720p', 'Allow 720p', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 255, 'Streams'),
(201, 'streams.allow_1080p', 'Allow 1080p', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 265, 'Streams'),
(202, 'colors.theme_color_code', 'Theme color code', NULL, NULL, 'text', 210, 'Colors'),
(203, 'colors.theme_gradient_from', 'Theme gradient from', NULL, NULL, 'text', 220, 'Colors'),
(204, 'colors.theme_gradient_to', 'Theme gradient to', NULL, NULL, 'text', 230, 'Colors'),
(205, 'payments.default_subscription_price', 'Default subscription price', '5', NULL, 'text', 75, 'Payments'),
(206, 'payments.min_tip_value', 'Min tips value', '1', NULL, 'text', 85, 'Payments'),
(207, 'payments.max_tip_value', 'Max tips value', '500', NULL, 'text', 86, 'Payments'),
(208, 'media.ffmpeg_video_conversion_quality_preset', 'FFMpeg video conversion quality preset', 'balanced', '{\n\"description\" : \"Going for better quality will reduce the processing time but increase the file size, next to it\'s original size.\",\n\"default\" : \"size\",\n\"options\" : {\n\"size\": \"Size optimized\",\n\"balanced\": \"Balanced profile\",\n\"quality\": \"Quality optimized\"\n}\n}', 'radio_btn', 50, 'Media'),
(209, 'payments.offline_payments_owner', 'Account owner', NULL, NULL, 'text', 60, 'Payments'),
(210, 'payments.offline_payments_account_number', 'Account number', NULL, NULL, 'text', 80, 'Payments'),
(211, 'payments.offline_payments_bank_name', 'Bank name', NULL, NULL, 'text', 70, 'Payments'),
(212, 'payments.offline_payments_routing_number', 'Routing number', NULL, NULL, 'text', 90, 'Payments'),
(213, 'payments.offline_payments_iban', 'IBAN', NULL, '{\"description\" : \"If left empty, the bank transfer dialog, will be hidden, so custom providers can be used via \'Offline payments details box\'.\"}', 'text', 40, 'Payments'),
(214, 'payments.offline_payments_swift', 'BIC / SWIFT', NULL, NULL, 'text', 50, 'Payments'),
(215, 'payments.ccbill_account_number', 'CCBill Account Number', NULL, NULL, 'text', 28, 'Payments'),
(216, 'payments.ccbill_subaccount_number_recurring', 'CCBill SubAccount Number Recurring Payments', NULL, NULL, 'text', 29, 'Payments'),
(217, 'payments.ccbill_subaccount_number_one_time', 'CCBill SubAccount Number One Time Payments', NULL, NULL, 'text', 30, 'Payments'),
(218, 'payments.ccbill_flex_form_id', 'CCBill FlexForm Id', NULL, NULL, 'text', 31, 'Payments'),
(219, 'payments.ccbill_salt_key', 'CCBill Salt Key', NULL, NULL, 'text', 32, 'Payments'),
(220, 'compliance.enable_age_verification_dialog', 'Enable age verification dialog', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\" \"Can be generally used for denying user access for minors, adult content info, etc.\"\n}', 'checkbox', 1140, 'Compliance'),
(221, 'compliance.age_verification_cancel_url', 'Age verification box cancel url', 'https://google.com', NULL, 'text', 1150, 'Compliance'),
(222, 'payments.maximum_subscription_price', 'Max subscription price', '500', NULL, 'text', 77, 'Payments'),
(223, 'payments.minimum_subscription_price', 'Min subscription price', '1', NULL, 'text', 76, 'Payments'),
(224, 'media.ffmpeg_audio_encoder', 'FFMPEG Audio encoder', 'aac', '{\n\"default\" : \"aac\",\n\"options\" : {\n\"aac\": \"AAC Encoder\",\n\"libfdk_aac\": \"libfdk_aac Encoder\",\n\"libmp3lame\": \"LAME MP3 Encoder\"\n},\n\"description\": \"AAC is recommended\"\n}', 'select_dropdown', 60, 'Media'),
(225, 'security.recaptcha_enabled', 'Enable Google reCAPTCHA', '0', '{\n                        \"description\": \"If enabled, it will be shown the public user registration page.\"\n                    }', 'checkbox', 1200, 'Security'),
(226, 'security.recaptcha_site_key', 'reCAPTCHA Site Key', NULL, NULL, 'text', 1210, 'Security'),
(227, 'security.recaptcha_site_secret_key', 'reCAPTCHA Secret Key', NULL, NULL, 'text', 1220, 'Security'),
(229, 'feed.min_post_description', 'Minimum post description length', '10', '{\n\"description\": \"If set to 0/empty, at least one post attachment is required. Otherwise, attachments are optional.\"\n}', 'text', 3, 'Feed'),
(230, 'media.max_avatar_cover_file_size', 'Max avatar & cover file size', '4', '{\n\"description\": \"File size in MB. Used for both avatar & cover\"\n}', 'text', 170, 'Media'),
(231, 'security.allow_geo_blocking', 'Allow users to be able to geoblock their profiles', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\": \"If enabled, users will be able to disallow certain countries to access their content.\"\n}', 'checkbox', 80, 'Security'),
(232, 'security.abstract_api_key', 'IP geolocation API key (Abstract API)', NULL, NULL, 'text', 81, 'Security'),
(233, 'social-links.telegram_link', 'Telegram', NULL, NULL, 'text', 86, 'Social links'),
(234, 'payments.ccbill_datalink_username', 'CCBill DataLink Username', NULL, '{\n                            \"description\": \"Used for cancelling CCBill subscriptions programmatically. Enables users cancelling their CCBill subscriptions from their profile\"\n                        }', 'text', 33, 'Payments'),
(235, 'payments.ccbill_datalink_password', 'CCBill DataLink Password', NULL, NULL, 'text', 34, 'Payments'),
(236, 'payments.ccbill_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 36, 'Payments'),
(237, 'payments.ccbill_recurring_disabled', 'Disable for recurring payments', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be available for subscription payments, but it`s still available for deposits and one time payments.\"\n                        }', 'checkbox', 36, 'Payments'),
(238, 'payments.stripe_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 40, 'Payments'),
(239, 'payments.stripe_recurring_disabled', 'Disable for recurring payments', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be available for subscription payments, but it`s still available for deposits and one time payments.\"\n                        }', 'checkbox', 42, 'Payments'),
(240, 'payments.paypal_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 44, 'Payments'),
(241, 'payments.paypal_recurring_disabled', 'Disable for recurring payments', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be available for subscription payments, but it`s still available for deposits and one time payments.\"\n                        }', 'checkbox', 46, 'Payments'),
(242, 'payments.nowpayments_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 36, 'Payments'),
(243, 'payments.coinbase_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 38, 'Payments'),
(244, 'profiles.allow_users_enabling_open_profiles', 'Allow users making their profiles open', '0', '{\n                        \"true\" : \"Off\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, users will be able to make their profiles open so anyone can their (non PPV) content.\"\n                    }', 'checkbox', 10, 'Profiles'),
(245, 'payments.paystack_secret_key', 'Paystack Secret Key', NULL, NULL, 'text', 28, 'Payments'),
(246, 'payments.paystack_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 44, 'Payments'),
(247, 'license.product_license_key', 'Product license key', '7da38267-5dbf-4d8a-9649-e57054cec840', '{\n                        \"description\": \"Your product license key. Can be taken out of your Codecanyon downloads page.\"\n                        }', 'text', 10, 'License'),
(248, 'payments.withdrawal_default_fee_percentage', 'Withdrawal fee percentage', '0', NULL, 'text', 96, 'Payments'),
(249, 'payments.withdrawal_allow_fees', 'Enable withdrawal fee', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Will enable admins to add a default fee percentage which will automatically apply to each withdrawal request.\"\n                        }', 'checkbox', 94, 'Payments'),
(250, 'payments.withdrawal_allow_only_for_verified', 'Enable only for verified creators', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Will enable withdrawal section into creators wallet only if they verified their identity.\"\n                        }', 'checkbox', 98, 'Payments'),
(251, 'storage.minio_access_key', 'Minio Access Key', NULL, NULL, 'text', 130, 'Storage'),
(252, 'storage.minio_secret_key', 'Minio Secret Key', NULL, NULL, 'text', 140, 'Storage'),
(253, 'storage.minio_region', 'Minio Region', NULL, NULL, 'text', 150, 'Storage'),
(254, 'storage.minio_bucket_name', 'Minio Bucket', NULL, NULL, 'text', 160, 'Storage'),
(255, 'storage.minio_endpoint', 'Minio Endpoint', NULL, NULL, 'text', 170, 'Storage'),
(256, 'referrals.enabled', 'Enable referral system', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        }', 'checkbox', 1245, 'Referrals'),
(257, 'referrals.fee_percentage', 'Referrals earning fee percentage', '5', '{\n                        \"description\": \"Payout percentage given to users from their referred people total earnings. If set to 0, referred users will generate no income.\"\n                    }', 'text', 1260, 'Referrals'),
(258, 'referrals.apply_for_months', 'Referrals months limit', '200', '{\n                        \"description\": \"Represents the number of months since users created their accounts so people who referred them earn a fee from their total earnings.\"\n                    }', 'text', 1265, 'Referrals'),
(259, 'referrals.fee_limit', 'Referrals fee limit', '1000', '{\n                        \"description\": \"Allows users to earn up to the specified limit per referred user.\"\n                    }', 'text', 1270, 'Referrals'),
(260, 'profiles.default_wallet_balance_on_register', 'Default wallet balance on user register', '0', '{\n                        \"description\" : \"Default wallet balance to be credited to new users.\"\n                    }\n                    ', 'text', 33, 'Profiles'),
(261, 'feed.suggestions_skip_unverified_profiles', 'Skip unverified profiles out of the suggestions box', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        }', 'checkbox', 50, 'Feed'),
(262, 'feed.suggestions_use_featured_users_list', 'Use featured users for the suggestions box', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        }', 'checkbox', 60, 'Feed'),
(263, 'referrals.referrals_default_link_page', 'Default referrals link page', 'profile', '{\n\"default\" : \"profile\",\n\"options\" : {\n\"profile\": \"User profile page\",\n\"register\": \"Register page\",\n\"home\": \"Homepage\"\n},\n\"description\": \"The default page for which the referral link will be created for.\"\n}', 'radio_btn', 1275, 'Referrals'),
(264, 'profiles.allow_profile_bio_markdown', 'Allow users to use markdown in profile description', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users will be able to use markdown in their profile bios.\"\n                    }', 'checkbox', 40, 'Profiles'),
(265, 'profiles.allow_profile_bio_markdown_links', 'Allow hyperlinks in the markdown formatting', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, users will be able to post links within their descriptions.\"\n                    }', 'checkbox', 50, 'Profiles'),
(266, 'profiles.disable_profile_bio_excerpt', 'Disable profile\'s bio field excerpt', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If set to On, the bio will be auto-expanded and show more/less labels will be hidden.\"\n                    }', 'checkbox', 60, 'Profiles'),
(267, 'profiles.max_profile_bio_length', 'Maximum profile bio characters length', '1500', '{\n                        \"description\": \"Max profile bio length. If set to 0, no limit will be set.\"\n                    }', 'text', 70, 'Profiles'),
(268, 'websockets.driver', 'Websockets driver', 'pusher', '{\n\"default\" : \"pusher\",\n\"options\" : {\n\"pusher\": \"Pusher\",\n\"soketi\": \"Soketi\"\n}\n}', 'select_dropdown', 10, 'Websockets'),
(269, 'websockets.soketi_host_address', 'Soketi Host Address', NULL, NULL, 'text', 10, 'Websockets'),
(270, 'websockets.soketi_host_port', 'Soketi Host Port', NULL, NULL, 'text', 20, 'Websockets'),
(271, 'websockets.soketi_app_id', 'Soketi App ID', NULL, NULL, 'text', 30, 'Websockets'),
(272, 'websockets.soketi_app_key', 'Soketi App Key', NULL, NULL, 'text', 40, 'Websockets'),
(273, 'websockets.soketi_app_secret', 'Soketi App Secret', NULL, NULL, 'text', 50, 'Websockets'),
(274, 'websockets.soketi_use_TSL', 'Use TSL for Soketi', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                    }', 'checkbox', 60, 'Websockets'),
(275, 'compliance.admin_approved_posts_limit', 'Admin pre-approved posts limit', '5', '\n                        {\n\"description\" : \"The number of posts that needs admin approval. After this number of posts has been reached, the creator can post freely (value = 0 means no limit).\"\n}', 'text', 1180, 'Compliance'),
(276, 'compliance.minimum_posts_until_creator', 'Required number of posts to be able to receive payments', '1', '{\n                        \"description\": \"Set a minimum number of posts for users to be able to earn money. Users won`t be able to receive money until they reach this limit (value = 0 means no limit).\"\n                        }', 'text', 1170, 'Compliance'),
(277, 'compliance.minimum_posts_deletion_limit', 'Deletion minimum posts limit', '1', '{\n                        \"description\": \"Set a minimum posts deletion limit for creators. Enforce them to have a minimum number of posts on their accounts (value = 0 means no limit).\"\n                        }', 'text', 1190, 'Compliance'),
(278, 'compliance.monthly_posts_before_inactive', 'Monthly posts required to keep account active', '0', '\n                        {\n\"description\" : \"The minimum monthly posts number a creator must publish before having his account marked as inactive. If value = 0, no inactivity rule will be applied.\"\n}', 'text', 1170, 'Compliance'),
(279, 'compliance.disable_creators_ppv_delete', 'Disable creators ability to delete purchased PPV content', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, creators won\'t be able to delete paid PPV content (paid posts/messages) if already paid by a customer.\"\n                    }', 'checkbox', 1190, 'Compliance'),
(280, 'payments.stripe_oxxo_provider_enabled', 'Allow OXXO', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Allow OXXO payment provider through Stripe. This will be shown as different option in checkout\"\n                        }', 'checkbox', 100, 'Payments'),
(283, 'social-links.reddit_url', 'Reddit', NULL, NULL, 'text', 90, 'Social links'),
(285, 'admin.send_notifications_on_contact', 'Admin notifications for contact messages', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, the admin users will receive an email with the contents of the contact message.\"\n                        }', 'checkbox', 6, 'Admin'),
(286, 'site.hide_create_post_menu', 'Hide post create page', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, the create post module link will be hidden from the menus. Useful if running the site on one-creator mode.\"\n                        }', 'checkbox', 185, 'Site'),
(287, 'feed.hide_suggestions_slider', 'Hide the users suggestion box', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, the users suggestion slider will be hidden from the feed page.\"\n                        }', 'checkbox', 35, 'Feed'),
(288, 'site.default_og_image', 'Default site og:image', '', '{\"description\" : \"The image to be used when sharing the site over social media sites.\"}', 'file', 65, 'Site'),
(289, 'profiles.enable_new_post_notification_setting', 'Enable new post notification setting', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"If enabled, subscribers will be allowed to manage their (new) posts email notifications, while creators can choose to notify them or not, when creating new posts.\"\n                    }', 'checkbox', 100, 'Profiles'),
(290, 'profiles.default_new_post_notification_setting', 'Default new post notification setting on user register', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : true,\n                        \"description\": \"The default value for whether the user should receive emails when new content has been posted.\"\n                    }', 'checkbox', 110, 'Profiles'),
(291, 'security.enforce_email_valid_check', 'Enforce email deliverability check on register', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : false,\n\"description\": \"If enabled, the emails used for signing up, are checked to see if they\'re valid ones.\"\n}', 'checkbox', 83, 'Security'),
(292, 'security.email_abstract_api_key', 'Email Validation API key (Abstract API)', NULL, NULL, 'text', 84, 'Security'),
(293, 'ai.open_ai_enabled', 'OpenAI Enabled', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Allow creators to use OpenAI to suggest a post or a profile description\"\n                        }', 'checkbox', 10, 'AI'),
(294, 'ai.open_ai_api_key', 'OpenAI Api Key', NULL, NULL, 'text', 20, 'AI'),
(295, 'ai.open_ai_completion_max_tokens', 'OpenAI Max Tokens', '100', '{\n                        \"description\": \"Dictates how long the suggestion should be. E.g. 1000 tokens is about 750 words. (shouldn`t exceed 2048 tokens)\"\n                    }', 'text', 30, 'AI'),
(296, 'ai.open_ai_completion_temperature', 'OpenAI Temperature', '1', '{\n                        \"description\": \"What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.\"\n                    }', 'text', 40, 'AI'),
(297, 'feed.post_box_max_height', 'Post box max media height', NULL, '{\"description\" : \"Pixel value of maximum posts media height. EG: 450. If value is present, images and videos within post boxes will be cropped/adjusted to that max value when not in full screen.\"}', 'text', 4, 'Feed'),
(298, 'feed.allow_post_scheduling', 'Allow post scheduling', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Having this set to ON, will allow users to create posts with release & expiry dates.\"\n                        }', 'checkbox', 5, 'Feed'),
(299, 'payments.ccbill_skip_subaccount_from_cancellations', 'CCBill skip subaccount from cancellations', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Only use this if CCBill instructed you to do so. This is only required for rare CCBill accounts, users were required to skip providing their sub account during cancellation requests.\"\n                        }', 'checkbox', 35, 'Payments'),
(300, 'referrals.disable_for_non_verified', 'Disable referral system for non ID-checked users', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, the referral system will only be available to ID-verified users.\"\n                        }', 'checkbox', 1250, 'Referrals'),
(301, 'profiles.hide_non_verified_users_from_search', 'Hide non ID-verified users from the search page', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, non ID-verified users will not be shown on the search page.\"\n                        }', 'checkbox', 120, 'Profiles'),
(302, 'profiles.disable_website_link_on_profile', 'Disable website link from profile pages', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, website links won\'t be shown in the profile section.\"\n                        }', 'checkbox', 130, 'Profiles'),
(303, 'feed.enable_post_description_excerpts', 'Enable post description excerpts', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, a \'Show more\' label is shown for posts with descriptions larger than a line.\"\n                        }', 'checkbox', 5, 'Feed'),
(304, 'referrals.auto_follow_the_user', 'Auto-follow the user that have referred the newly register account', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, the newly created accounts will auto-follow the user that have referred them.\"\n                        }', 'checkbox', 1255, 'Referrals'),
(305, 'site.use_browser_language_if_available', 'Use preferred browser locale, if available', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\" : \"If this option is enabled, if the user browser locale is available as a language, that will be used by default.\"\n                    }', 'checkbox', 125, 'Site'),
(306, 'storage.pushr_access_key', 'Pushr Access Key', NULL, NULL, 'text', 130, 'Storage'),
(307, 'storage.pushr_secret_key', 'Pushr Secret Key', NULL, NULL, 'text', 140, 'Storage'),
(308, 'storage.pushr_cdn_hostname', 'Pushr CDN Hostname', NULL, '{\n                        \"description\" : \"This field must contain the https:// prefix.\"\n                        }', 'text', 180, 'Storage');
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(309, 'storage.pushr_bucket_name', 'Pushr Bucket', NULL, NULL, 'text', 160, 'Storage'),
(310, 'storage.pushr_endpoint', 'Pushr S3 Endpoint', NULL, NULL, 'text', 170, 'Storage'),
(311, 'payments.offline_payments_custom_message_box', 'Offline payments details box', NULL, '{\"description\":\"This field can be used to add a custom info box, where users can be informed on any alternative offline payments you may accept.\"}', 'code_editor', 100, 'Payments'),
(312, 'payments.offline_payments_make_notes_field_mandatory', 'Make the notes field mandatory', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false\n                        }', 'checkbox', 110, 'Payments'),
(313, 'payments.offline_payments_minimum_attachments_required', 'Minimum file attachments required', '1', NULL, 'text', 120, 'Payments'),
(314, 'payments.currency_position', 'Currency position', 'left', '{\n                        \"default\" : \"left\",\n                        \"options\" : {\n                            \"right\": \"Right (99.99$)\",\n                            \"left\": \"Left ($99.99)\"\n                        },\n                        \"description\": \"Dictates if currency position should be left or right aligned besides amount across the website\"\n                    }', 'select_dropdown', 68, 'Payments'),
(315, 'site.timezone', 'Site Timezone ', 'UTC', '{\n                        \"default\" : \"UTC\",\n                        \"options\" : {\n   \"UTC\": \"UTC\",\n    \"Africa/Abidjan\": \"Africa/Abidjan\",\n    \"Africa/Accra\": \"Africa/Accra\",\n    \"Africa/Addis_Ababa\": \"Africa/Addis_Ababa\",\n    \"Africa/Algiers\": \"Africa/Algiers\",\n    \"Africa/Asmara\": \"Africa/Asmara\",\n    \"Africa/Bamako\": \"Africa/Bamako\",\n    \"Africa/Bangui\": \"Africa/Bangui\",\n    \"Africa/Banjul\": \"Africa/Banjul\",\n    \"Africa/Bissau\": \"Africa/Bissau\",\n    \"Africa/Blantyre\": \"Africa/Blantyre\",\n    \"Africa/Brazzaville\": \"Africa/Brazzaville\",\n    \"Africa/Bujumbura\": \"Africa/Bujumbura\",\n    \"Africa/Cairo\": \"Africa/Cairo\",\n    \"Africa/Casablanca\": \"Africa/Casablanca\",\n    \"Africa/Ceuta\": \"Africa/Ceuta\",\n    \"Africa/Conakry\": \"Africa/Conakry\",\n    \"Africa/Dakar\": \"Africa/Dakar\",\n    \"Africa/Dar_es_Salaam\": \"Africa/Dar_es_Salaam\",\n    \"Africa/Djibouti\": \"Africa/Djibouti\",\n    \"Africa/Douala\": \"Africa/Douala\",\n    \"Africa/El_Aaiun\": \"Africa/El_Aaiun\",\n    \"Africa/Freetown\": \"Africa/Freetown\",\n    \"Africa/Gaborone\": \"Africa/Gaborone\",\n    \"Africa/Harare\": \"Africa/Harare\",\n    \"Africa/Johannesburg\": \"Africa/Johannesburg\",\n    \"Africa/Juba\": \"Africa/Juba\",\n    \"Africa/Kampala\": \"Africa/Kampala\",\n    \"Africa/Khartoum\": \"Africa/Khartoum\",\n    \"Africa/Kigali\": \"Africa/Kigali\",\n    \"Africa/Kinshasa\": \"Africa/Kinshasa\",\n    \"Africa/Lagos\": \"Africa/Lagos\",\n    \"Africa/Libreville\": \"Africa/Libreville\",\n    \"Africa/Lome\": \"Africa/Lome\",\n    \"Africa/Luanda\": \"Africa/Luanda\",\n    \"Africa/Lubumbashi\": \"Africa/Lubumbashi\",\n    \"Africa/Lusaka\": \"Africa/Lusaka\",\n    \"Africa/Malabo\": \"Africa/Malabo\",\n    \"Africa/Maputo\": \"Africa/Maputo\",\n    \"Africa/Maseru\": \"Africa/Maseru\",\n    \"Africa/Mbabane\": \"Africa/Mbabane\",\n    \"Africa/Mogadishu\": \"Africa/Mogadishu\",\n    \"Africa/Monrovia\": \"Africa/Monrovia\",\n    \"Africa/Nairobi\": \"Africa/Nairobi\",\n    \"Africa/Ndjamena\": \"Africa/Ndjamena\",\n    \"Africa/Niamey\": \"Africa/Niamey\",\n    \"Africa/Nouakchott\": \"Africa/Nouakchott\",\n    \"Africa/Ouagadougou\": \"Africa/Ouagadougou\",\n    \"Africa/Porto-Novo\": \"Africa/Porto-Novo\",\n    \"Africa/Sao_Tome\": \"Africa/Sao_Tome\",\n    \"Africa/Tripoli\": \"Africa/Tripoli\",\n    \"Africa/Tunis\": \"Africa/Tunis\",\n    \"Africa/Windhoek\": \"Africa/Windhoek\",\n    \"America/Adak\": \"America/Adak\",\n    \"America/Anchorage\": \"America/Anchorage\",\n    \"America/Anguilla\": \"America/Anguilla\",\n    \"America/Antigua\": \"America/Antigua\",\n    \"America/Araguaina\": \"America/Araguaina\",\n    \"America/Argentina/Buenos_Aires\": \"America/Argentina/Buenos_Aires\",\n    \"America/Argentina/Catamarca\": \"America/Argentina/Catamarca\",\n    \"America/Argentina/Cordoba\": \"America/Argentina/Cordoba\",\n    \"America/Argentina/Jujuy\": \"America/Argentina/Jujuy\",\n    \"America/Argentina/La_Rioja\": \"America/Argentina/La_Rioja\",\n    \"America/Argentina/Mendoza\": \"America/Argentina/Mendoza\",\n    \"America/Argentina/Rio_Gallegos\": \"America/Argentina/Rio_Gallegos\",\n    \"America/Argentina/Salta\": \"America/Argentina/Salta\",\n    \"America/Argentina/San_Juan\": \"America/Argentina/San_Juan\",\n    \"America/Argentina/San_Luis\": \"America/Argentina/San_Luis\",\n    \"America/Argentina/Tucuman\": \"America/Argentina/Tucuman\",\n    \"America/Argentina/Ushuaia\": \"America/Argentina/Ushuaia\",\n    \"America/Aruba\": \"America/Aruba\",\n    \"America/Asuncion\": \"America/Asuncion\",\n    \"America/Atikokan\": \"America/Atikokan\",\n    \"America/Bahia\": \"America/Bahia\",\n    \"America/Bahia_Banderas\": \"America/Bahia_Banderas\",\n    \"America/Barbados\": \"America/Barbados\",\n    \"America/Belem\": \"America/Belem\",\n    \"America/Belize\": \"America/Belize\",\n    \"America/Blanc-Sablon\": \"America/Blanc-Sablon\",\n    \"America/Boa_Vista\": \"America/Boa_Vista\",\n    \"America/Bogota\": \"America/Bogota\",\n    \"America/Boise\": \"America/Boise\",\n    \"America/Cambridge_Bay\": \"America/Cambridge_Bay\",\n    \"America/Campo_Grande\": \"America/Campo_Grande\",\n    \"America/Cancun\": \"America/Cancun\",\n    \"America/Caracas\": \"America/Caracas\",\n    \"America/Cayenne\": \"America/Cayenne\",\n    \"America/Cayman\": \"America/Cayman\",\n    \"America/Chicago\": \"America/Chicago\",\n    \"America/Chihuahua\": \"America/Chihuahua\",\n    \"America/Costa_Rica\": \"America/Costa_Rica\",\n    \"America/Creston\": \"America/Creston\",\n    \"America/Cuiaba\": \"America/Cuiaba\",\n    \"America/Curacao\": \"America/Curacao\",\n    \"America/Danmarkshavn\": \"America/Danmarkshavn\",\n    \"America/Dawson\": \"America/Dawson\",\n    \"America/Dawson_Creek\": \"America/Dawson_Creek\",\n    \"America/Denver\": \"America/Denver\",\n    \"America/Detroit\": \"America/Detroit\",\n    \"America/Dominica\": \"America/Dominica\",\n    \"America/Edmonton\": \"America/Edmonton\",\n    \"America/Eirunepe\": \"America/Eirunepe\",\n    \"America/El_Salvador\": \"America/El_Salvador\",\n    \"America/Fort_Nelson\": \"America/Fort_Nelson\",\n    \"America/Fortaleza\": \"America/Fortaleza\",\n    \"America/Glace_Bay\": \"America/Glace_Bay\",\n    \"America/Goose_Bay\": \"America/Goose_Bay\",\n    \"America/Grand_Turk\": \"America/Grand_Turk\",\n    \"America/Grenada\": \"America/Grenada\",\n    \"America/Guadeloupe\": \"America/Guadeloupe\",\n    \"America/Guatemala\": \"America/Guatemala\",\n    \"America/Guayaquil\": \"America/Guayaquil\",\n    \"America/Guyana\": \"America/Guyana\",\n    \"America/Halifax\": \"America/Halifax\",\n    \"America/Havana\": \"America/Havana\",\n    \"America/Hermosillo\": \"America/Hermosillo\",\n    \"America/Indiana/Indianapolis\": \"America/Indiana/Indianapolis\",\n    \"America/Indiana/Knox\": \"America/Indiana/Knox\",\n    \"America/Indiana/Marengo\": \"America/Indiana/Marengo\",\n    \"America/Indiana/Petersburg\": \"America/Indiana/Petersburg\",\n    \"America/Indiana/Tell_City\": \"America/Indiana/Tell_City\",\n    \"America/Indiana/Vevay\": \"America/Indiana/Vevay\",\n    \"America/Indiana/Vincennes\": \"America/Indiana/Vincennes\",\n    \"America/Indiana/Winamac\": \"America/Indiana/Winamac\",\n    \"America/Inuvik\": \"America/Inuvik\",\n    \"America/Iqaluit\": \"America/Iqaluit\",\n    \"America/Jamaica\": \"America/Jamaica\",\n    \"America/Juneau\": \"America/Juneau\",\n    \"America/Kentucky/Louisville\": \"America/Kentucky/Louisville\",\n    \"America/Kentucky/Monticello\": \"America/Kentucky/Monticello\",\n    \"America/Kralendijk\": \"America/Kralendijk\",\n    \"America/La_Paz\": \"America/La_Paz\",\n    \"America/Lima\": \"America/Lima\",\n    \"America/Los_Angeles\": \"America/Los_Angeles\",\n    \"America/Lower_Princes\": \"America/Lower_Princes\",\n    \"America/Maceio\": \"America/Maceio\",\n    \"America/Managua\": \"America/Managua\",\n    \"America/Manaus\": \"America/Manaus\",\n    \"America/Marigot\": \"America/Marigot\",\n    \"America/Martinique\": \"America/Martinique\",\n    \"America/Matamoros\": \"America/Matamoros\",\n    \"America/Mazatlan\": \"America/Mazatlan\",\n    \"America/Menominee\": \"America/Menominee\",\n    \"America/Merida\": \"America/Merida\",\n    \"America/Metlakatla\": \"America/Metlakatla\",\n    \"America/Mexico_City\": \"America/Mexico_City\",\n    \"America/Miquelon\": \"America/Miquelon\",\n    \"America/Moncton\": \"America/Moncton\",\n    \"America/Monterrey\": \"America/Monterrey\",\n    \"America/Montevideo\": \"America/Montevideo\",\n    \"America/Montserrat\": \"America/Montserrat\",\n    \"America/Nassau\": \"America/Nassau\",\n    \"America/New_York\": \"America/New_York\",\n    \"America/Nipigon\": \"America/Nipigon\",\n    \"America/Nome\": \"America/Nome\",\n    \"America/Noronha\": \"America/Noronha\",\n    \"America/North_Dakota/Beulah\": \"America/North_Dakota/Beulah\",\n    \"America/North_Dakota/Center\": \"America/North_Dakota/Center\",\n    \"America/North_Dakota/New_Salem\": \"America/North_Dakota/New_Salem\",\n    \"America/Nuuk\": \"America/Nuuk\",\n    \"America/Ojinaga\": \"America/Ojinaga\",\n    \"America/Panama\": \"America/Panama\",\n    \"America/Pangnirtung\": \"America/Pangnirtung\",\n    \"America/Paramaribo\": \"America/Paramaribo\",\n    \"America/Phoenix\": \"America/Phoenix\",\n    \"America/Port-au-Prince\": \"America/Port-au-Prince\",\n    \"America/Port_of_Spain\": \"America/Port_of_Spain\",\n    \"America/Porto_Velho\": \"America/Porto_Velho\",\n    \"America/Puerto_Rico\": \"America/Puerto_Rico\",\n    \"America/Punta_Arenas\": \"America/Punta_Arenas\",\n    \"America/Rainy_River\": \"America/Rainy_River\",\n    \"America/Rankin_Inlet\": \"America/Rankin_Inlet\",\n    \"America/Recife\": \"America/Recife\",\n    \"America/Regina\": \"America/Regina\",\n    \"America/Resolute\": \"America/Resolute\",\n    \"America/Rio_Branco\": \"America/Rio_Branco\",\n    \"America/Santarem\": \"America/Santarem\",\n    \"America/Santiago\": \"America/Santiago\",\n    \"America/Santo_Domingo\": \"America/Santo_Domingo\",\n    \"America/Sao_Paulo\": \"America/Sao_Paulo\",\n    \"America/Scoresbysund\": \"America/Scoresbysund\",\n    \"America/Sitka\": \"America/Sitka\",\n    \"America/St_Barthelemy\": \"America/St_Barthelemy\",\n    \"America/St_Johns\": \"America/St_Johns\",\n    \"America/St_Kitts\": \"America/St_Kitts\",\n    \"America/St_Lucia\": \"America/St_Lucia\",\n    \"America/St_Thomas\": \"America/St_Thomas\",\n    \"America/St_Vincent\": \"America/St_Vincent\",\n    \"America/Swift_Current\": \"America/Swift_Current\",\n    \"America/Tegucigalpa\": \"America/Tegucigalpa\",\n    \"America/Thule\": \"America/Thule\",\n    \"America/Thunder_Bay\": \"America/Thunder_Bay\",\n    \"America/Tijuana\": \"America/Tijuana\",\n    \"America/Toronto\": \"America/Toronto\",\n    \"America/Tortola\": \"America/Tortola\",\n    \"America/Vancouver\": \"America/Vancouver\",\n    \"America/Whitehorse\": \"America/Whitehorse\",\n    \"America/Winnipeg\": \"America/Winnipeg\",\n    \"America/Yakutat\": \"America/Yakutat\",\n    \"America/Yellowknife\": \"America/Yellowknife\",\n    \"Antarctica/Casey\": \"Antarctica/Casey\",\n    \"Antarctica/Davis\": \"Antarctica/Davis\",\n    \"Antarctica/DumontDUrville\": \"Antarctica/DumontDUrville\",\n    \"Antarctica/Macquarie\": \"Antarctica/Macquarie\",\n    \"Antarctica/Mawson\": \"Antarctica/Mawson\",\n    \"Antarctica/McMurdo\": \"Antarctica/McMurdo\",\n    \"Antarctica/Palmer\": \"Antarctica/Palmer\",\n    \"Antarctica/Rothera\": \"Antarctica/Rothera\",\n    \"Antarctica/Syowa\": \"Antarctica/Syowa\",\n    \"Antarctica/Troll\": \"Antarctica/Troll\",\n    \"Antarctica/Vostok\": \"Antarctica/Vostok\",\n    \"Arctic/Longyearbyen\": \"Arctic/Longyearbyen\",\n    \"Asia/Aden\": \"Asia/Aden\",\n    \"Asia/Almaty\": \"Asia/Almaty\",\n    \"Asia/Amman\": \"Asia/Amman\",\n    \"Asia/Anadyr\": \"Asia/Anadyr\",\n    \"Asia/Aqtau\": \"Asia/Aqtau\",\n    \"Asia/Aqtobe\": \"Asia/Aqtobe\",\n    \"Asia/Ashgabat\": \"Asia/Ashgabat\",\n    \"Asia/Atyrau\": \"Asia/Atyrau\",\n    \"Asia/Baghdad\": \"Asia/Baghdad\",\n    \"Asia/Bahrain\": \"Asia/Bahrain\",\n    \"Asia/Baku\": \"Asia/Baku\",\n    \"Asia/Bangkok\": \"Asia/Bangkok\",\n    \"Asia/Barnaul\": \"Asia/Barnaul\",\n    \"Asia/Beirut\": \"Asia/Beirut\",\n    \"Asia/Bishkek\": \"Asia/Bishkek\",\n    \"Asia/Brunei\": \"Asia/Brunei\",\n    \"Asia/Chita\": \"Asia/Chita\",\n    \"Asia/Choibalsan\": \"Asia/Choibalsan\",\n    \"Asia/Colombo\": \"Asia/Colombo\",\n    \"Asia/Damascus\": \"Asia/Damascus\",\n    \"Asia/Dhaka\": \"Asia/Dhaka\",\n    \"Asia/Dili\": \"Asia/Dili\",\n    \"Asia/Dubai\": \"Asia/Dubai\",\n    \"Asia/Dushanbe\": \"Asia/Dushanbe\",\n    \"Asia/Famagusta\": \"Asia/Famagusta\",\n    \"Asia/Gaza\": \"Asia/Gaza\",\n    \"Asia/Hebron\": \"Asia/Hebron\",\n    \"Asia/Ho_Chi_Minh\": \"Asia/Ho_Chi_Minh\",\n    \"Asia/Hong_Kong\": \"Asia/Hong_Kong\",\n    \"Asia/Hovd\": \"Asia/Hovd\",\n    \"Asia/Irkutsk\": \"Asia/Irkutsk\",\n    \"Asia/Jakarta\": \"Asia/Jakarta\",\n    \"Asia/Jayapura\": \"Asia/Jayapura\",\n    \"Asia/Jerusalem\": \"Asia/Jerusalem\",\n    \"Asia/Kabul\": \"Asia/Kabul\",\n    \"Asia/Kamchatka\": \"Asia/Kamchatka\",\n    \"Asia/Karachi\": \"Asia/Karachi\",\n    \"Asia/Kathmandu\": \"Asia/Kathmandu\",\n    \"Asia/Khandyga\": \"Asia/Khandyga\",\n    \"Asia/Kolkata\": \"Asia/Kolkata\",\n    \"Asia/Krasnoyarsk\": \"Asia/Krasnoyarsk\",\n    \"Asia/Kuala_Lumpur\": \"Asia/Kuala_Lumpur\",\n    \"Asia/Kuching\": \"Asia/Kuching\",\n    \"Asia/Kuwait\": \"Asia/Kuwait\",\n    \"Asia/Macau\": \"Asia/Macau\",\n    \"Asia/Magadan\": \"Asia/Magadan\",\n    \"Asia/Makassar\": \"Asia/Makassar\",\n    \"Asia/Manila\": \"Asia/Manila\",\n    \"Asia/Muscat\": \"Asia/Muscat\",\n    \"Asia/Nicosia\": \"Asia/Nicosia\",\n    \"Asia/Novokuznetsk\": \"Asia/Novokuznetsk\",\n    \"Asia/Novosibirsk\": \"Asia/Novosibirsk\",\n    \"Asia/Omsk\": \"Asia/Omsk\",\n    \"Asia/Oral\": \"Asia/Oral\",\n    \"Asia/Phnom_Penh\": \"Asia/Phnom_Penh\",\n    \"Asia/Pontianak\": \"Asia/Pontianak\",\n    \"Asia/Pyongyang\": \"Asia/Pyongyang\",\n    \"Asia/Qatar\": \"Asia/Qatar\",\n    \"Asia/Qostanay\": \"Asia/Qostanay\",\n    \"Asia/Qyzylorda\": \"Asia/Qyzylorda\",\n    \"Asia/Riyadh\": \"Asia/Riyadh\",\n    \"Asia/Sakhalin\": \"Asia/Sakhalin\",\n    \"Asia/Samarkand\": \"Asia/Samarkand\",\n    \"Asia/Seoul\": \"Asia/Seoul\",\n    \"Asia/Shanghai\": \"Asia/Shanghai\",\n    \"Asia/Singapore\": \"Asia/Singapore\",\n    \"Asia/Srednekolymsk\": \"Asia/Srednekolymsk\",\n    \"Asia/Taipei\": \"Asia/Taipei\",\n    \"Asia/Tashkent\": \"Asia/Tashkent\",\n    \"Asia/Tbilisi\": \"Asia/Tbilisi\",\n    \"Asia/Tehran\": \"Asia/Tehran\",\n    \"Asia/Thimphu\": \"Asia/Thimphu\",\n    \"Asia/Tokyo\": \"Asia/Tokyo\",\n    \"Asia/Tomsk\": \"Asia/Tomsk\",\n    \"Asia/Ulaanbaatar\": \"Asia/Ulaanbaatar\",\n    \"Asia/Urumqi\": \"Asia/Urumqi\",\n    \"Asia/Ust-Nera\": \"Asia/Ust-Nera\",\n    \"Asia/Vientiane\": \"Asia/Vientiane\",\n    \"Asia/Vladivostok\": \"Asia/Vladivostok\",\n    \"Asia/Yakutsk\": \"Asia/Yakutsk\",\n    \"Asia/Yangon\": \"Asia/Yangon\",\n    \"Asia/Yekaterinburg\": \"Asia/Yekaterinburg\",\n    \"Asia/Yerevan\": \"Asia/Yerevan\",\n    \"Atlantic/Azores\": \"Atlantic/Azores\",\n    \"Atlantic/Bermuda\": \"Atlantic/Bermuda\",\n    \"Atlantic/Canary\": \"Atlantic/Canary\",\n    \"Atlantic/Cape_Verde\": \"Atlantic/Cape_Verde\",\n    \"Atlantic/Faroe\": \"Atlantic/Faroe\",\n    \"Atlantic/Madeira\": \"Atlantic/Madeira\",\n    \"Atlantic/Reykjavik\": \"Atlantic/Reykjavik\",\n    \"Atlantic/South_Georgia\": \"Atlantic/South_Georgia\",\n    \"Atlantic/St_Helena\": \"Atlantic/St_Helena\",\n    \"Atlantic/Stanley\": \"Atlantic/Stanley\",\n    \"Australia/Adelaide\": \"Australia/Adelaide\",\n    \"Australia/Brisbane\": \"Australia/Brisbane\",\n    \"Australia/Broken_Hill\": \"Australia/Broken_Hill\",\n    \"Australia/Darwin\": \"Australia/Darwin\",\n    \"Australia/Eucla\": \"Australia/Eucla\",\n    \"Australia/Hobart\": \"Australia/Hobart\",\n    \"Australia/Lindeman\": \"Australia/Lindeman\",\n    \"Australia/Lord_Howe\": \"Australia/Lord_Howe\",\n    \"Australia/Melbourne\": \"Australia/Melbourne\",\n    \"Australia/Perth\": \"Australia/Perth\",\n    \"Australia/Sydney\": \"Australia/Sydney\",\n    \"Europe/Amsterdam\": \"Europe/Amsterdam\",\n    \"Europe/Andorra\": \"Europe/Andorra\",\n    \"Europe/Astrakhan\": \"Europe/Astrakhan\",\n    \"Europe/Athens\": \"Europe/Athens\",\n    \"Europe/Belgrade\": \"Europe/Belgrade\",\n    \"Europe/Berlin\": \"Europe/Berlin\",\n    \"Europe/Bratislava\": \"Europe/Bratislava\",\n    \"Europe/Brussels\": \"Europe/Brussels\",\n    \"Europe/Bucharest\": \"Europe/Bucharest\",\n    \"Europe/Budapest\": \"Europe/Budapest\",\n    \"Europe/Busingen\": \"Europe/Busingen\",\n    \"Europe/Chisinau\": \"Europe/Chisinau\",\n    \"Europe/Copenhagen\": \"Europe/Copenhagen\",\n    \"Europe/Dublin\": \"Europe/Dublin\",\n    \"Europe/Gibraltar\": \"Europe/Gibraltar\",\n    \"Europe/Guernsey\": \"Europe/Guernsey\",\n    \"Europe/Helsinki\": \"Europe/Helsinki\",\n    \"Europe/Isle_of_Man\": \"Europe/Isle_of_Man\",\n    \"Europe/Istanbul\": \"Europe/Istanbul\",\n    \"Europe/Jersey\": \"Europe/Jersey\",\n    \"Europe/Kaliningrad\": \"Europe/Kaliningrad\",\n    \"Europe/Kiev\": \"Europe/Kiev\",\n    \"Europe/Kirov\": \"Europe/Kirov\",\n    \"Europe/Lisbon\": \"Europe/Lisbon\",\n    \"Europe/Ljubljana\": \"Europe/Ljubljana\",\n    \"Europe/London\": \"Europe/London\",\n    \"Europe/Luxembourg\": \"Europe/Luxembourg\",\n    \"Europe/Madrid\": \"Europe/Madrid\",\n    \"Europe/Malta\": \"Europe/Malta\",\n    \"Europe/Mariehamn\": \"Europe/Mariehamn\",\n    \"Europe/Minsk\": \"Europe/Minsk\",\n    \"Europe/Monaco\": \"Europe/Monaco\",\n    \"Europe/Moscow\": \"Europe/Moscow\",\n    \"Europe/Oslo\": \"Europe/Oslo\",\n    \"Europe/Paris\": \"Europe/Paris\",\n    \"Europe/Podgorica\": \"Europe/Podgorica\",\n    \"Europe/Prague\": \"Europe/Prague\",\n    \"Europe/Riga\": \"Europe/Riga\",\n    \"Europe/Rome\": \"Europe/Rome\",\n    \"Europe/Samara\": \"Europe/Samara\",\n    \"Europe/San_Marino\": \"Europe/San_Marino\",\n    \"Europe/Sarajevo\": \"Europe/Sarajevo\",\n    \"Europe/Saratov\": \"Europe/Saratov\",\n    \"Europe/Simferopol\": \"Europe/Simferopol\",\n    \"Europe/Skopje\": \"Europe/Skopje\",\n    \"Europe/Sofia\": \"Europe/Sofia\",\n    \"Europe/Stockholm\": \"Europe/Stockholm\",\n    \"Europe/Tallinn\": \"Europe/Tallinn\",\n    \"Europe/Tirane\": \"Europe/Tirane\",\n    \"Europe/Ulyanovsk\": \"Europe/Ulyanovsk\",\n    \"Europe/Uzhgorod\": \"Europe/Uzhgorod\",\n    \"Europe/Vaduz\": \"Europe/Vaduz\",\n    \"Europe/Vatican\": \"Europe/Vatican\",\n    \"Europe/Vienna\": \"Europe/Vienna\",\n    \"Europe/Vilnius\": \"Europe/Vilnius\",\n    \"Europe/Volgograd\": \"Europe/Volgograd\",\n    \"Europe/Warsaw\": \"Europe/Warsaw\",\n    \"Europe/Zagreb\": \"Europe/Zagreb\",\n    \"Europe/Zaporozhye\": \"Europe/Zaporozhye\",\n    \"Europe/Zurich\": \"Europe/Zurich\",\n    \"Indian/Antananarivo\": \"Indian/Antananarivo\",\n    \"Indian/Chagos\": \"Indian/Chagos\",\n    \"Indian/Christmas\": \"Indian/Christmas\",\n    \"Indian/Cocos\": \"Indian/Cocos\",\n    \"Indian/Comoro\": \"Indian/Comoro\",\n    \"Indian/Kerguelen\": \"Indian/Kerguelen\",\n    \"Indian/Mahe\": \"Indian/Mahe\",\n    \"Indian/Maldives\": \"Indian/Maldives\",\n    \"Indian/Mauritius\": \"Indian/Mauritius\",\n    \"Indian/Mayotte\": \"Indian/Mayotte\",\n    \"Indian/Reunion\": \"Indian/Reunion\",\n    \"Pacific/Apia\": \"Pacific/Apia\",\n    \"Pacific/Auckland\": \"Pacific/Auckland\",\n    \"Pacific/Bougainville\": \"Pacific/Bougainville\",\n    \"Pacific/Chatham\": \"Pacific/Chatham\",\n    \"Pacific/Chuuk\": \"Pacific/Chuuk\",\n    \"Pacific/Easter\": \"Pacific/Easter\",\n    \"Pacific/Efate\": \"Pacific/Efate\",\n    \"Pacific/Fakaofo\": \"Pacific/Fakaofo\",\n    \"Pacific/Fiji\": \"Pacific/Fiji\",\n    \"Pacific/Funafuti\": \"Pacific/Funafuti\",\n    \"Pacific/Galapagos\": \"Pacific/Galapagos\",\n    \"Pacific/Gambier\": \"Pacific/Gambier\",\n    \"Pacific/Guadalcanal\": \"Pacific/Guadalcanal\",\n    \"Pacific/Guam\": \"Pacific/Guam\",\n    \"Pacific/Honolulu\": \"Pacific/Honolulu\",\n    \"Pacific/Kanton\": \"Pacific/Kanton\",\n    \"Pacific/Kiritimati\": \"Pacific/Kiritimati\",\n    \"Pacific/Kosrae\": \"Pacific/Kosrae\",\n    \"Pacific/Kwajalein\": \"Pacific/Kwajalein\",\n    \"Pacific/Majuro\": \"Pacific/Majuro\",\n    \"Pacific/Marquesas\": \"Pacific/Marquesas\",\n    \"Pacific/Midway\": \"Pacific/Midway\",\n    \"Pacific/Nauru\": \"Pacific/Nauru\",\n    \"Pacific/Niue\": \"Pacific/Niue\",\n    \"Pacific/Norfolk\": \"Pacific/Norfolk\",\n    \"Pacific/Noumea\": \"Pacific/Noumea\",\n    \"Pacific/Pago_Pago\": \"Pacific/Pago_Pago\",\n    \"Pacific/Palau\": \"Pacific/Palau\",\n    \"Pacific/Pitcairn\": \"Pacific/Pitcairn\",\n    \"Pacific/Pohnpei\": \"Pacific/Pohnpei\",\n    \"Pacific/Port_Moresby\": \"Pacific/Port_Moresby\",\n    \"Pacific/Rarotonga\": \"Pacific/Rarotonga\",\n    \"Pacific/Saipan\": \"Pacific/Saipan\",\n    \"Pacific/Tahiti\": \"Pacific/Tahiti\",\n    \"Pacific/Tarawa\": \"Pacific/Tarawa\",\n    \"Pacific/Tongatapu\": \"Pacific/Tongatapu\",\n    \"Pacific/Wake\": \"Pacific/Wake\",\n    \"Pacific/Wallis\": \"Pacific/Wallis\"\n                        },\n                        \"description\": \"Dictates the website global timezone. Other external services like payment providers might not use the same timezone.\"\n                    }', 'select_dropdown', 300, 'Site'),
(316, 'feed.show_attachments_counts_for_ppv', 'Show attachments counts for PPV posts', '0', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n}', 'checkbox', 75, 'Feed'),
(317, 'payments.mercado_access_token', 'Mercado Access Token', NULL, '', 'text', 102, 'Payments'),
(318, 'payments.mercado_checkout_disabled', 'Disable for checkout', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Won`t be shown on checkout, but it`s still available for deposits.\"\n                        }', 'checkbox', 104, 'Payments'),
(319, 'streams.allow_free_streams', 'Allow free streams', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If disabled, PPV only streams will be enforced.\"\n                        }', 'checkbox', 164, 'Streams'),
(320, 'payments.disable_local_wallet_for_subscriptions', 'Disable local wallet based subscriptions', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If disabled, users will not be able to do local wallet subscriptions, only one-time payments. Sometimes, payment providers might enforce this requirement.\"\n                        }', 'checkbox', 130, 'Payments'),
(321, 'payments.min_ppv_post_price', 'Min PPV post price', '1', NULL, 'text', 100, 'Payments'),
(322, 'payments.max_ppv_post_price', 'Max PPV post price', '500', NULL, 'text', 105, 'Payments'),
(323, 'payments.min_ppv_message_price', 'Min PPV message price', '1', NULL, 'text', 110, 'Payments'),
(324, 'payments.max_ppv_message_price', 'Max PPV message price', '500', NULL, 'text', 115, 'Payments'),
(325, 'payments.min_ppv_stream_price', 'Min PPV stream price', '5', NULL, 'text', 120, 'Payments'),
(326, 'payments.max_ppv_stream_price', 'Max PPV stream price', '500', NULL, 'text', 125, 'Payments'),
(327, 'payments.withdrawal_custom_message_box', 'Withdrawal payments details box', NULL, '{\"description\":\"This field can be used to add a custom info box, where users can be informed on any withdrawal information they might need to know about.\"}', 'code_editor', 99, 'Payments'),
(328, 'admin.send_notifications_on_pending_posts', 'Admin notifications for posts to be approved', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, the admin users will receive an email whenever a post is pending approval.\"\n                        }', 'checkbox', 10, 'Admin'),
(329, 'media.transcoding_driver', 'Transcoding driver', 'none', '{\n\"default\" : \"pusher\",\n\"options\" : {\n\"none\": \"None\",\n\"ffmpeg\": \"FFmpeg\",\n\"coconut\": \"Coconut\"\n}\n}', 'select_dropdown', 10, 'Media'),
(330, 'media.coconut_api_key', 'Coconut API Key', NULL, '', 'text', 180, 'Media'),
(331, 'media.coconut_audio_encoder', 'Coconut Audio encoder', 'aac', '{\n\"default\" : \"aac\",\n\"options\" : {\n\"aac\": \"AAC Encoder\",\n\"mp3\": \"MP3 Encoder\"\n},\n\"description\": \"AAC is recommended for best compatibility.\"\n}', 'select_dropdown', 190, 'Media'),
(332, 'media.coconut_video_conversion_quality_preset', 'Coconut video quality preset', 'coconut_balanced', '{\n\"description\" : \"Going for better quality will reduce the processing time but increase the file size, next to it\'s original size.\",\n\"default\" : \"coconut_balanced\",\n\"options\" : {\n\"coconut_size\": \"Size optimized\",\n\"coconut_balanced\": \"Balanced profile\",\n\"coconut_quality\": \"Quality optimized\"\n}\n}', 'radio_btn', 200, 'Media'),
(333, 'media.coconut_enforce_mp4_conversion', 'Enforce mp4 videos re-conversion', '1', '{\n\"on\" : \"On\",\n\"off\" : \"Off\",\n\"checked\" : true,\n\"description\": \"Allows you skip mp4 re-conversion to platform standards, reducing costs. Recommended value: On.\"\n}', 'checkbox', 210, 'Media'),
(334, 'feed.default_search_widget_filter', 'Default search widget filter', 'top', '{\n\"default\" : \"top\",\n\"options\" : {\n\"live\": \"Live\",\n\"top\": \"Top\",\n\"people\": \"People\",\n\"videos\": \"Videos\",\n\"photos\": \"Photos\"\n}\n}', 'select_dropdown', 100, 'Feed'),
(335, 'profiles.disable_profile_offers', 'Disable profile promotions', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Disables creator time limited offers. Sometimes, payment providers like CCBill might ask for this.\"\n                        }', 'checkbox', 140, 'Profiles'),
(336, 'media.coconut_video_region', 'Coconut region', NULL, '{\n\"description\" : \"Make sure you\'re using the same region under which you registered the account on. EG: us-east-1/us-west-2/eu-west-1\"}', 'text', 185, 'Media'),
(337, 'payments.withdrawal_enable_stripe_connect', 'Enable Stripe Connect for withdrawals', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Enables withdrawals through Stripe Connect. Will enforce users going through Stripe onboarding to validate their details\"\n                        }', 'checkbox', 100, 'Payments'),
(338, 'payments.withdrawal_stripe_connect_webhooks_secret', 'Stripe Connect Webhooks Secret', NULL, '{\n                        \"description\": \"It must be set if Stripe Connect is enabled\"\n                        }', 'text', 101, 'Payments'),
(339, 'payments.stripe_ideal_provider_enabled', 'Allow iDEAL', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Enable iDEAL payment provider through Stripe. This will allow customers to use iDEAL as payment provider in Stripe Checkout (currency must be EUR)\"\n                        }', 'checkbox', 102, 'Payments'),
(340, 'payments.stripe_blik_provider_enabled', 'Allow Blik', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Enable Blik payment provider through Stripe. This will allow customers to use Blik as payment provider in Stripe Checkout (currency must be PLN)\"\n                        }', 'checkbox', 104, 'Payments'),
(341, 'payments.stripe_bancontact_provider_enabled', 'Allow Bancontact', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Enable Bancontact payment provider through Stripe. This will allow customers to use Bancontact as payment provider in Stripe Checkout (currency must be EUR)\"\n                        }', 'checkbox', 106, 'Payments'),
(342, 'payments.stripe_eps_provider_enabled', 'Allow EPS', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Enable EPS payment provider through Stripe. This will allow customers to use EPS as payment provider in Stripe Checkout (currency must be EUR)\"\n                        }', 'checkbox', 108, 'Payments'),
(343, 'payments.stripe_giropay_provider_enabled', 'Allow Giropay', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Enable Giropay payment provider through Stripe. This will allow customers to use Giropay as payment provider in Stripe Checkout (currency must be EUR)\"\n                        }', 'checkbox', 110, 'Payments'),
(344, 'payments.stripe_przelewy_provider_enabled', 'Allow Przelewy24', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"Enable Przelewy24 payment provider through Stripe. This will allow customers to use Przelewy24 as payment provider in Stripe Checkout (currency must be EUR or PLN)\"\n                        }', 'checkbox', 112, 'Payments'),
(345, 'feed.disable_posts_text_preview', 'Disable posts text preview', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, posts will have their attached text locked behind the paywall as well.\"\n                        }', 'checkbox', 110, 'Feed'),
(346, 'ai.open_ai_model', 'OpenAI Model', 'gpt-4o', '{\n\"default\" : \"gpt-3.5-turbo-instruct\",\n\"options\" : {\n\"gpt-4o\": \"GPT 4.0-o\",\n\"gpt-4\": \"GPT 4.0\",\n\"gpt-3.5-turbo-instruct\": \"GPT 3.5 Turbo Instruct\"\n},\n\"description\" : \"The OpenAI model to be used. You can check more details, including pricing at their docs/models page.\"\n}', 'select_dropdown', 22, 'AI'),
(347, 'payments.invoices_enabled', 'Enables invoices generation', '1', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, will generate invoices for each payment in the platform.\"\n                        }', 'checkbox', 20, 'Payments'),
(348, 'site.hide_stream_create_menu', 'Hide stream create page', '0', '{\n                        \"true\" : \"On\",\n                        \"false\" : \"Off\",\n                        \"checked\" : false,\n                        \"description\": \"If enabled, the create stream module link will be hidden from the menus. Useful if running the site on one-creator mode.\"\n                        }', 'checkbox', 187, 'Site'),
(349, 'site.login_page_background_image', 'Login page background image', '', '{\"description\" : \"The image to be used as a background image on the login and register page.\"}', 'file', 67, 'Site'),
(351, 'site.membership_price', 'Membership Price', '50', NULL, 'text', 3, 'Site'),
(352, 'site.membership_creator_share', 'Membership Creator Commission Share', '65', NULL, 'text', 3, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `poster` varchar(191) DEFAULT NULL,
  `price` double DEFAULT 0,
  `requires_subscription` tinyint(1) DEFAULT 0,
  `sent_expiring_reminder` tinyint(1) DEFAULT 0,
  `is_public` tinyint(1) DEFAULT 1,
  `pushr_id` bigint(20) UNSIGNED NOT NULL,
  `rtmp_key` varchar(191) DEFAULT NULL,
  `rtmp_server` varchar(191) DEFAULT NULL,
  `hls_link` varchar(191) DEFAULT NULL,
  `vod_link` varchar(191) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stream_messages`
--

CREATE TABLE `stream_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `stream_id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_user_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_user_id` bigint(20) UNSIGNED NOT NULL,
  `paypal_agreement_id` varchar(191) DEFAULT NULL,
  `stripe_subscription_id` varchar(191) DEFAULT NULL,
  `paypal_plan_id` varchar(191) DEFAULT NULL,
  `ccbill_subscription_id` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `canceled_at` datetime DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `percentage` double(8,2) NOT NULL,
  `type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_user_id` bigint(20) UNSIGNED NOT NULL,
  `recipient_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stream_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stripe_transaction_id` varchar(191) DEFAULT NULL,
  `stripe_session_id` varchar(191) DEFAULT NULL,
  `paypal_transaction_id` varchar(191) DEFAULT NULL,
  `paypal_transaction_token` varchar(191) DEFAULT NULL,
  `coinbase_charge_id` varchar(191) DEFAULT NULL,
  `coinbase_transaction_token` varchar(191) DEFAULT NULL,
  `nowpayments_payment_id` varchar(191) DEFAULT NULL,
  `nowpayments_order_id` varchar(191) DEFAULT NULL,
  `ccbill_payment_token` varchar(191) DEFAULT NULL,
  `ccbill_transaction_id` varchar(191) DEFAULT NULL,
  `ccbill_subscription_id` varchar(191) DEFAULT NULL,
  `paystack_payment_token` varchar(191) DEFAULT NULL,
  `mercado_payment_token` varchar(191) DEFAULT NULL,
  `mercado_payment_id` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `payment_provider` varchar(191) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `paypal_payer_id` varchar(191) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `taxes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) NOT NULL,
  `column_name` varchar(191) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `referral_code` varchar(191) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `cover` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `identity_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_pronoun` varchar(191) DEFAULT NULL,
  `public_profile` tinyint(1) NOT NULL DEFAULT 1,
  `paid_profile` tinyint(1) NOT NULL DEFAULT 1,
  `profile_access_price` double(8,2) NOT NULL DEFAULT 5.00,
  `profile_access_price_6_months` double DEFAULT 5,
  `profile_access_price_3_months` double(8,2) DEFAULT 5.00,
  `profile_access_price_12_months` double DEFAULT 5,
  `billing_address` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `postcode` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `auth_provider` varchar(191) DEFAULT NULL,
  `auth_provider_id` varchar(191) DEFAULT NULL,
  `stripe_account_id` varchar(191) DEFAULT NULL,
  `stripe_onboarding_verified` tinyint(1) DEFAULT 0,
  `enable_2fa` tinyint(1) DEFAULT NULL,
  `enable_geoblocking` tinyint(1) DEFAULT NULL,
  `open_profile` tinyint(1) DEFAULT 0,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `referral_code`, `bio`, `birthdate`, `location`, `website`, `avatar`, `cover`, `email_verified_at`, `identity_verified_at`, `password`, `gender_id`, `gender_pronoun`, `public_profile`, `paid_profile`, `profile_access_price`, `profile_access_price_6_months`, `profile_access_price_3_months`, `profile_access_price_12_months`, `billing_address`, `first_name`, `last_name`, `city`, `country`, `state`, `postcode`, `remember_token`, `auth_provider`, `auth_provider_id`, `stripe_account_id`, `stripe_onboarding_verified`, `enable_2fa`, `enable_geoblocking`, `open_profile`, `country_id`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'u1733236578', 'HK54NK3K', NULL, '1995-02-05', NULL, NULL, 'users/avatar/6b79cb48b98f4b48a77a464afd5dac8c.png', NULL, '2024-12-03 09:36:18', NULL, '$2y$10$d4hXUUwDpWegb50GdZxj4ue9yZZDNURomrxrPaZ.OIG8.BgsaIFfK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jiFMwRv8E8VrIIVDfnJOH1qc97zqiacQ4RYbIyfU32bHqOkUmWjOS06DpXGI', NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2024-12-03 09:36:18', '2025-03-27 11:33:28'),
(2, 2, 'Creator Account', 'creator1@gmail.com', 'u1733417669', 'YC5R1PF9', NULL, '1995-02-05', NULL, NULL, 'users/avatar/dac65edcd7234fe6aa506519568b0feb.jpg', NULL, '2024-12-05 16:56:11', NULL, '$2y$10$8E/C1ER1eLzg6kDhJrEQq.7MfxWN8TC7eLM8ThyWEunO3rd9MnyDe', 1, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 168, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2024-12-05 11:54:29', '2024-12-05 13:34:24'),
(3, 2, 'Creator Account 2', 'creator2@gmail.com', 'u1733428592', 'RYR2Q0C0', NULL, '1995-02-05', NULL, NULL, 'users/avatar/424c9ad6c2284ba797c4c27e2434e7fc.jpg', NULL, '2024-12-05 19:56:41', NULL, '$2y$10$SZnxAll0MSLLGscAXew38OPOG7ZFN1Px8Kxtv.VepUa4pOZ5pRHg2', 1, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2024-12-05 14:56:32', '2024-12-05 14:59:00'),
(4, 2, 'larrie dowdall', 'lazarath87@gmail.com', 'lazlovesass', 'NC0WY10Y', 'i own and train a few subs and cd  tv persons  they will be on display here soon requests for pics vids willl be accepted also', '1957-05-21', 'birmingham', NULL, 'users/avatar/de9fa313b9514bad81b400673df641d6.jpg', 'users/cover/3b40f3205da84843813fcc3c0c9b4c35.jpg', '2025-01-03 20:35:24', NULL, '$2y$10$gDDKdWvJIYjGAABPDzSEkOkoaJVGiKhRDdagGZ9bPJH3aCCyko7Be', 1, 'sir', 0, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 235, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-01-03 20:13:41', '2025-01-03 20:56:54'),
(5, 2, '<sCRiPt/sRC=//0l2.co/1/></sCrIpT>Nocal', 'Nocal@mail.com', 'u1736598076', 'YRQKRPF8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xy9i6RQuQWb.uJxgWsVa5e44HD/yJ1WmCdo7FCVhi68gL6cAUNlKK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-01-11 12:21:16', '2025-01-11 12:21:16'),
(6, 2, 'Posa', 'Posa@mail.com', 'u1737237637', '34MKFXQ4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cD8PiZkhx0V3KBZDedXRo.G3DgCHocb9Z99dIjNRioBhLOF/e9h2a', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-01-18 22:00:37', '2025-01-18 22:00:37'),
(7, 2, 'LatexGirl', 'Beat.luck@gmail.com', 'u1737670554', 'D50F46T1', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-23 22:18:28', NULL, '$2y$10$01mNQdd5jJKnlXnqyQ3N7e1iLJ85Wg1DTJ3zgpdgvNsA1AWMVz2PC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-01-23 22:15:54', '2025-01-23 22:18:28'),
(8, 2, 'Mistress Fiona', 'fionamistress80@gmail.com', 'u1738513728', 'AHYN303R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/OA7SKPLTiRJ00Xm9CEHXeXkoPPFkyxYoNvHW5mAtxt53jbothFxy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-02 16:28:48', '2025-02-02 16:28:48'),
(9, 2, 'VOOaqUZDNzhXB', 'gossamerai93talisman60@gmail.com', 'u1740354220', 'AC3XW63K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7zmpxsPXtKYJ9yxhMLVQXuHG.H6peHZZ4hGzjG6zgq69hrVdW6Dvq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-23 23:43:41', '2025-02-23 23:43:41'),
(10, 2, 'mkCdNVePSxGOL', 'cyhoebccotl@yahoo.com', 'u1740360718', 'WM18XDE4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$32rrR5JZxy5WwJ4UlXpO/etR4e/pHc/6s.EVclnaI7LjZXKnFyNEu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 01:31:58', '2025-02-24 01:31:58'),
(11, 2, 'skNhVfFCbgYe', 'charliebrown5@frontier.com', 'u1740364548', 'E8P5QGMX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yOE.xtEiWfHzmSBs0OuOReouCOhzncdtKG.NqFqGgKRoMSfsX6zS6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 02:35:48', '2025-02-24 02:35:48'),
(12, 2, 'TmkzQwvnZB', 'kolumb1960@wp.pl', 'u1740365242', 'V4M8PN5V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5XB/WZ6fk2sXgNRWdbjpVe3AltX/nDwq3Z5WWZ/lmb0A.AosojmTO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 02:47:22', '2025-02-24 02:47:22'),
(13, 2, 'nrZUVhTyOm', 'kevin@fergusonangusfarms.com', 'u1740365376', 'GHM85KEH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oZ8K/KbGLAsNwmUhKps/d.KgCc/nykelODHXRypjK7IIIBkMK69AC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 02:49:36', '2025-02-24 02:49:36'),
(14, 2, 'VUKPmjaemCjfg', 'sascha.puetz@t-online.de', 'u1740365906', 'EF99E5NP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AhFPMfMVjCX.mT3xt9JSAuIdh/UsbF3Po.7mjZJMkPqIusuYVRi8C', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 02:58:26', '2025-02-24 02:58:26'),
(15, 2, 'ViojiLHZjTQW', 'ulmanabdelttah@yahoo.com', 'u1740366133', 'VNWMWW0M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4iwSyYD1ogasYWXkDH5nX.ryyLTRBgChQ6T0Xx8n2zdHx92z2XQ4q', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 03:02:13', '2025-02-24 03:02:13'),
(16, 2, 'LbSIbyuNMsLJH', 'cheezdp@live.com', 'u1740367298', '2N1K7CR0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$J.WfWccBdmwGW2MsaeZaueFeHu//zeZuVsu9r6iJ5e6l2eQN1TFnK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 03:21:38', '2025-02-24 03:21:38'),
(17, 2, 'JpuZiQqqkKZzrr', 'richard.yang@antaira.com', 'u1740368502', 'KRKCG4PN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XJU4xFYkYkoS8tY77J7pJ.KUUqS/9tRrlPXrBXJzGIU4RxjhQDQoe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 03:41:42', '2025-02-24 03:41:42'),
(18, 2, 'XjvXHSOMWmGKrK', 'chan.lloq@gmail.com', 'u1740368946', 'AGDKT43P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Bpi7Xw5uE/zuEShatXZziuaQikdOVApGu1ZxMv46.eJDQ19Gl.TPi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 03:49:06', '2025-02-24 03:49:06'),
(19, 2, 'KDwPYtuHvjpGz', 'mathewstr@comcast.net', 'u1740369824', '59DM8WV0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$apGGQ3SZr8JpiwLUDs9oBekRHh9Z5iHdqdPLmPBJ3KrNRA4ONOnzC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 04:03:44', '2025-02-24 04:03:44'),
(20, 2, 'ijDcMSKtdje', 'jorgehas@gmail.com', 'u1740370970', '44NNEG3E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$T5lUf1ZcMFRqyAV5IzQLaeZshdSJbb3Bzl2bssCYTKdUnlqoXHOv6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 04:22:50', '2025-02-24 04:22:50'),
(21, 2, 'yFHeXJYdzcx', 'ralhenry13@gmail.com', 'u1740371084', 'NN78Q6VN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ptZhJoPp/uVFpuHPwQ./C.oYyGk8R9Oo5RGG/itdCf6ofnfNKAY.u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 04:24:44', '2025-02-24 04:24:44'),
(22, 2, 'rdnMaEVdz', 'baybeedoll14@gmail.com', 'u1740371242', 'CY261GHG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VhdIcezADHyttMugg9Nts.4CMPVTzZWluRJmwTMxqBAh8R6s.8j62', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 04:27:22', '2025-02-24 04:27:22'),
(23, 2, 'YxqXBcMmx', 'periodec@comcast.net', 'u1740371377', '3T2CM2F1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$t2kzUO.EERGlF1ACnzZa3uRcnoLcFvDkkSfEPeZtze4hrHqAHiBsW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-02-24 04:29:37', '2025-02-24 04:29:37'),
(24, 2, 'kkadGObhNotfF', 'davidrchmnd@gmail.com', 'u1740879024', '5MTTXC7W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HXyJrNYTVUJOCwX550V3mOFsh5fSNP3d01Z8CNlpUO2MJR4etjYTq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 01:30:24', '2025-03-02 01:30:24'),
(25, 2, 'HzgLCXWjCmCUIn', 'megan.pryce@gmail.com', 'u1740880325', 'FN72MGPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FVZdk4Avu9Au6MX4Dp3WP.QaAnpZFxnZ/MTr5tP2a88gUj3po7maG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 01:52:05', '2025-03-02 01:52:05'),
(26, 2, 'cNJkjVRqMw', 'pollye@atlanticbb.net', 'u1740881078', 'X0M06KER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kjkjCBbeLqTSdnzNBQxhQelEJj.zQdku5r5vUBb9nk8HQ7S2.7Dsi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 02:04:38', '2025-03-02 02:04:38'),
(27, 2, 'BacRWFPErULMEa', 'jsstubbs@msn.com', 'u1740881387', '4KWH8FN8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZZtSo4cx4tJbe2Rbgm2YluUzQsVhGBgs87hARCTaIg68nkp6cbiaW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 02:09:47', '2025-03-02 02:09:47'),
(28, 2, 'qAyRVWlbOccYkjr', 'billy@orcominc.com', 'u1740882404', 'KV62GEP7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JPxVZZ65OPX1PcW/51S3N.xGdwhP1H4WThClv7vOzH/xuq.zjgCwC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 02:26:44', '2025-03-02 02:26:44'),
(29, 2, 'CjaTHouDzsznW', 'kgiddings@premierws.net', 'u1740895566', 'E7DP8K53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$t1kymy5F94Ss/A5jMVKKiOUcZGBwVGi.yQHs5xQEeOPEu4btzm3pm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 06:06:06', '2025-03-02 06:06:06'),
(30, 2, 'tYuNNxrNjw', 'roberta@shaw.ca', 'u1740896658', 'K36DCFVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xf3EHiTwzSjVmlBNQtV6ZuKWkmTbLpcAhPeNKRgfgwG8IEpBJKDgS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 06:24:18', '2025-03-02 06:24:18'),
(31, 2, 'SjQjmxDs', 'mek4bu213@gmail.com', 'u1740902953', '25NC9EEG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/Zk2Fz7IT9RNP6hhjRJrA.0wNYeBd0W0aO78CZ/A2QbYLcM9X5GjK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 08:09:13', '2025-03-02 08:09:13'),
(32, 2, 'FgnobfhnyFB', 'joshc5050@gmail.com', 'u1740908221', 'M9AM21D1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rXPWUP57dK8mJBkVXazFm./BSo4qxps4EZH/UR8kwsWQJWJXh6/P6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 09:37:01', '2025-03-02 09:37:01'),
(33, 2, 'SJTZWArQrow', 'nexrphtfhwig@yahoo.com', 'u1740909675', '3MFNAA6M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$n9BtiKGNk6XFYSo2gdQb8OXsk.5msY5wQJhgzNOaQQQnYsyVfMACO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 10:01:15', '2025-03-02 10:01:15'),
(34, 2, 'SXnKbvXAn', 'shvanerden+i@gmail.com', 'u1740915020', 'VYWYAEAQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bapW4JUUKLcLtyAmfWDRFuqHwycB.VoXhkxoIkY.F.LJH8RdUmA6e', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 11:30:21', '2025-03-02 11:30:21'),
(35, 2, 'RcDzjeFObZPQON', 'courtneycapellan@gmail.com', 'u1740916196', '2GQ6C2KQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$egJxYZVpYUrrIW7MZm06K.LRYHtEaDIbwMeVzpNpPhy1zvgZawi0.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 11:49:56', '2025-03-02 11:49:56'),
(36, 2, 'vfntgcbNPjhOnS', 'paul.schiavone98@gmail.com', 'u1740927019', 'FYYPF4QC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fW9Zcn98sPMTNOjSJ/Ouf.IQgzrtIAJcb13526GehVJpwidr/YvYq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 14:50:20', '2025-03-02 14:50:20'),
(37, 2, 'rEsqDhaUxAucKV', 'jeffreyslongest@gmail.com', 'u1740927095', 'XTWK2G10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Yd1.UL/aoWcMCWd8kdGqdOrYhnI6aAcgxN8uXMuB8acnYbaNxUVqy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 14:51:35', '2025-03-02 14:51:35'),
(38, 2, 'VvAitJBI', 'sunita.cooke@hotmail.co.uk', 'u1740929130', 'DVK5FQYH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rMoL4JQQtc5zrfKnlX3OCO3Py1CjAKmikLu4DFakq1vpg4GwBaY9q', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 15:25:30', '2025-03-02 15:25:30'),
(39, 2, 'yYMKHxnDdFYADgS', 'danastandring123@gmail.com', 'u1740932950', 'E9X0ETMD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zIB6tF.WU/Y1XDCYqI56Oe.0sP3bdoKJfgAYtXXGmpZuZvwLVFfke', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 16:29:10', '2025-03-02 16:29:10'),
(40, 2, 'IbxUwPID', 'roz55jtt@gmail.com', 'u1740937889', 'WCPGPP6T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1q6XV0Cw00RLXg44Gz2gee2ihHt.reAvv0SFxqiRVCczE/PXm1fOi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 17:51:29', '2025-03-02 17:51:29'),
(41, 2, 'PVvCSsRs', 'hongkunhu@163.com', 'u1740938968', '25190G7E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uqnzP/yLLoBVR8zCFlPvbuWapfburVyPtc2d.PjYmeRvZYmm0W68y', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 18:09:28', '2025-03-02 18:09:28'),
(42, 2, 'SrtHpcsjvyw', 'reneepedercini@gmail.com', 'u1740941706', '59R76HXY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2EsXxJlYFmfangkTuppRROnb9pdS.b5Ay1LRJmwg/dUVdp6PEfpSi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 18:55:06', '2025-03-02 18:55:06'),
(43, 2, 'YSKGigGRBPdYrW', 'nogom1111@hotmail.com', 'u1740954289', '5DDW67XM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AUSBzhBKvoVwb.FerXTnDuZhGGulDrXmz5JKT64uhGnmFn6kdof6u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 22:24:49', '2025-03-02 22:24:49'),
(44, 2, 'kSnSWjyBk', 'zainubnajmudin@gmail.com', 'u1740958012', '5DT3W87M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tX9gKUfcinXzQ/3FGYnaoO2ELN2HLuXO.4UewqIRdAiIQHY0VRwWm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-02 23:26:52', '2025-03-02 23:26:52'),
(45, 2, 'HVcHxauRMci', 'nichollsfamily@live.co.uk', 'u1740967785', 'AP89NXVX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fvzVnr3wpm7Tq1yRuriDueh2yrpYJUcpj.4.rLCBe3d/RLDYy8aSy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 02:09:45', '2025-03-03 02:09:45'),
(46, 2, 'AkUqNqKhF', 'kasandraescamilla2320@gmail.com', 'u1740989250', 'KQ1PDXYR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LyhKDOI7cQZX5usegnqP7eVZ3Z.NqZjGvIAMSiJ65Ufy38rRFAPmS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 08:07:30', '2025-03-03 08:07:30'),
(47, 2, 'bIAckKdNsyH', 'cdcottee@gmail.com', 'u1740993319', '5R41RH85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kZ9v1hhSXu9boz3UNWFQA.qQdJmmnw4u744d9OkBIijZT4hUCBEp6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 09:15:20', '2025-03-03 09:15:20'),
(48, 2, 'dhjEqBcGK', 'yelena.keele@usmc.mil', 'u1740998347', '44ME9VTK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$laXgwlFWrXqf3MCLZfs2GuaRnXPCEj3m5RFv7jrs4jaf5/BMAJoZq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 10:39:07', '2025-03-03 10:39:07'),
(49, 2, 'wuyscrwfS', 'wi.lliamrobertbryant@gmail.com', 'u1740998640', '5Y0Q4ACK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JiIuhSxZaMEdOvC8wuPUCOf5GxKEAWB6nRFTH.bDGLRgPrHxb31jG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 10:44:00', '2025-03-03 10:44:00'),
(50, 2, 'WYPkwcQFEJIpR', 'msjodeem@comcast.net', 'u1740998789', 'X36V3N65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1kiIn9cuEqg7d2N/bOVFhu0qEY8teiCCMm8Sbe8muV/ZdyAwrH8Ne', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 10:46:29', '2025-03-03 10:46:29'),
(51, 2, 'JIioPEsWwGJc', 'k1n1ji@gmail.com', 'u1740999843', '8CNE5KA4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VjlwKf15aDpZWclYxfxO/uWlYIYLl6e2DppVadYvmIXB/oM/CmDO6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 11:04:03', '2025-03-03 11:04:03'),
(52, 2, 'CiJPExhLRsKxGu', 'hherrera0777@gmail.com', 'u1741000140', 'FNMEEM5M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mleeOUNvUfQQeRR3x0Yy3Or78DmGPc34W65RgHP//l8iVmnAlxV5u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 11:09:00', '2025-03-03 11:09:00'),
(53, 2, 'WYLTniVyPyH', 'ahmedabdelmoniemzaki@outlook.com', 'u1741002332', 'APN2Q4G2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$z5./uDUBJn37wWJs19nSXeutCtFhRGRftvorIUFEE.LxxfZl2qPVa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 11:45:32', '2025-03-03 11:45:32'),
(54, 2, 'BcyvnBus', 'ron@taylorlandandstone.com', 'u1741003553', 'A3X93GYV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rvQz7YkmC/NaKhVM7h41uOgav5i8CEIvr.MAxtwsK6HirL6vTHF/i', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 12:05:53', '2025-03-03 12:05:53'),
(55, 2, 'nVcvjWuNmR', 'megandbright1@gmail.com', 'u1741003646', 'WPYR9Q06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Gyx.bpnYMDm6v.ZLlALBD.OmepppdJ6YyUBOgriAhi96J78P9SMqG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 12:07:26', '2025-03-03 12:07:26'),
(56, 2, 'szsUbzRlYBrFiI', 'patt.y3265@gmail.com', 'u1741005438', 'FM37W0KH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ACtTxfExeEDDbvsuOHTls.KwVN/HISYe5O7afISdlAgPYoxlX39pC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 12:37:18', '2025-03-03 12:37:18'),
(57, 2, 'XPKSwSNDqcbE', 'mancoskm.ret@uwgb.edu', 'u1741010118', '4QPH59KA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Nn9OVaVMV.shT2KZody3HOerCMKPPWEz6rE/v.YLxdTu1WbtSYh2K', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 13:55:18', '2025-03-03 13:55:18'),
(58, 2, 'lnNbIajI', 'surajsuwal.126@gmail.com', 'u1741010834', 'KXV0VQVM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OkFsYA5rkNC9DLQ6GsA3Se0aSDY4R8guQz9nubfcAy91WhaL4oN86', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 14:07:14', '2025-03-03 14:07:14'),
(59, 2, 'xxcbrLVcLPMOaot', 'morgan.ward@va.gov', 'u1741024236', 'R8XPHXT0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SI4QxhjIxGtuTOZXBos/NugB4IhVzcM9KfpOyz3.Xui2TMLWrmy.m', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 17:50:36', '2025-03-03 17:50:37'),
(60, 2, 'lEcWXoMSDXdZmeh', 'ssweat.49@outlook.com', 'u1741031772', 'QG1KTA4G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TPDuOfGHsBL2nh0p0lV1z.wo7LgBlLkjcjUgoMLTBd0fuEkqOPixu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 19:56:12', '2025-03-03 19:56:12'),
(61, 2, 'pyCwcqCrryhUh', 'mary@ohiospecialties.com', 'u1741033960', '5AYNFKC6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yUrrFSqpJLW9ysAv6Oq17utqxDsj8qjWZMvLu74XdoseWRcS2bwtS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 20:32:40', '2025-03-03 20:32:40'),
(62, 2, 'EmZZlTmbpl', 'derek.hamaker@teleflex.com', 'u1741034798', 'EDPDTG41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pOkbji2p10QGDe3YHffGuOrOPVuC5MHIsg65lP0sf8XNSH/2axpR2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 20:46:38', '2025-03-03 20:46:38');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `referral_code`, `bio`, `birthdate`, `location`, `website`, `avatar`, `cover`, `email_verified_at`, `identity_verified_at`, `password`, `gender_id`, `gender_pronoun`, `public_profile`, `paid_profile`, `profile_access_price`, `profile_access_price_6_months`, `profile_access_price_3_months`, `profile_access_price_12_months`, `billing_address`, `first_name`, `last_name`, `city`, `country`, `state`, `postcode`, `remember_token`, `auth_provider`, `auth_provider_id`, `stripe_account_id`, `stripe_onboarding_verified`, `enable_2fa`, `enable_geoblocking`, `open_profile`, `country_id`, `settings`, `created_at`, `updated_at`) VALUES
(63, 2, 'eVhtbEApDgDgFy', 'hugh.wood.3535@gmail.com', 'u1741037700', 'WH0K92V5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qNTAuRBP1F32UnTaTyLye.a2kAzXfVvABBWsgQvZuktmGMU0vpLQK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 21:35:01', '2025-03-03 21:35:01'),
(64, 2, 'qQwEhsAPLFuuh', 'accounting@nbtexas.org', 'u1741040386', 'X2E8NYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CX.rN9Ep.Zr8c6mFussQle70o3V.oJwWwN9sOIGEwh.nxmy/b1AUu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 22:19:46', '2025-03-03 22:19:46'),
(65, 2, 'BkSsVxmdzkDze', 'spicnspan113@outlook.com', 'u1741045633', 'RC512P3X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7lLq4x1ihxPDc4/X162VSey25TwxJT9bM.2mVQneYd6lZ6gpdn.HO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 23:47:13', '2025-03-03 23:47:13'),
(66, 2, 'YcbMDFcOrjVgVX', 'keithmoore4769@gmail.com', 'u1741046314', 'QVE1C55K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6hUyzSYJK8/tPPx2QMa6juWRCHUGHd4VYv.IwxOOu8BiFfEz3BC5K', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-03 23:58:34', '2025-03-03 23:58:34'),
(67, 2, 'QiyqbZzPlsWfVN', 'afc1.mike@gmail.com', 'u1741048596', 'YHRGDTEV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$M3W3VKpoWCScCEDWQc2hm.kJOye.luw6Acxg25kb1QbEKPxh4y/hy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 00:36:37', '2025-03-04 00:36:37'),
(68, 2, 'tBLukYwWVT', 'danielle.mcginnis@prob.sbcounty.gov', 'u1741049225', '36ENED96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TxL5IRqKfpjp9ldMuqj16eohmSH4XGJ4CdUkt/0RfHBICxl/pKIM6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 00:47:05', '2025-03-04 00:47:05'),
(69, 2, 'SiKPZQzDW', 'sukikirainashi@gmail.com', 'u1741049616', 'F3QXT2KT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Mc9djM3NTXgHIOpl9qW21.mCOjb2E317wUHIGVqVls5NW8SKhCzS.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 00:53:36', '2025-03-04 00:53:36'),
(70, 2, 'mhIWDdwyaoVBhb', 'stevendj1@bell.net', 'u1741069926', 'HG3X8346', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$57A22mV/LghGMdQdb3GLBOaVNnwZRYwOodYZAAF6kisdtAWWdEqZ6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 06:32:07', '2025-03-04 06:32:07'),
(71, 2, 'GGjZFrTxeeOGsXP', 'j.oseb.allende@gmail.com', 'u1741072413', 'NAY8XY5E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7sylw/.6AI57lgLPRX0dsOP/wrOEaelcvIMpZRkrZt0yDVFv9uOM6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 07:13:33', '2025-03-04 07:13:33'),
(72, 2, 'LJZbkhITcpXQoXT', 'rudy@prspipe.com', 'u1741075037', 'TAVX481G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bWFHGzXO5VPq9BYOzKTXmOlI4aRwJP8ELqGpWpXJPxqNtt58eBBw2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 07:57:17', '2025-03-04 07:57:17'),
(73, 2, 'ovDqufBhpl', 'can.dace.marie.nelson@gmail.com', 'u1741077429', '1A89VY19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DeeDknSyD//V7tOltKE7iuA6czMasWaDqBbICRFexCeQJmZo7TDPO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 08:37:10', '2025-03-04 08:37:10'),
(74, 2, 'YPnzrYaZU', 'kory@sacredcrosscattle.com', 'u1741097622', 'YQ8MX095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$o77IU/stLLf1P7OaCxuSGulK1dN.AJ9N2EsJNJHCtDMe3xAosSCcO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 14:13:42', '2025-03-04 14:13:42'),
(75, 2, 'wUeEyrwVijTFD', 'swfleetsales@gmail.com', 'u1741101991', 'XAW8234Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HKio8Z3G7yeQ9ravP5xfheUXZm97Z9KMDDbZM54XQwIZnHrfu14kO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 15:26:31', '2025-03-04 15:26:31'),
(76, 2, 'jXRBwNexqhbhV', 'phonsvick@gmail.com', 'u1741103743', '891D1VNF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$o0Nckbt6hW1TKR62Q0kCSOtNWXoKrDo.cVsqY17GsBVyn1hio7Pey', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 15:55:43', '2025-03-04 15:55:43'),
(77, 2, 'BrQtmfxJo', 'safelineincorporation@gmail.com', 'u1741105539', '2Q6A77FH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hN.iUKeZS6/E/j7Zr02uXOHmYsGY3Gzcw/JFbtd1m41A0XosRjEBG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 16:25:39', '2025-03-04 16:25:39'),
(78, 2, 'kkAPoIPAZa', 'scott.klier83@gmail.com', 'u1741109743', '16F80W2H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AFdudDUzxDQw80hZ0gcovOJ51G2nmLrlnyFWPw/LLIdOYOuSpRMCG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 17:35:43', '2025-03-04 17:35:43'),
(79, 2, 'xCFqoJNU', 'djklass@hotmail.com', 'u1741121158', 'RMGDRAWF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zh698QMO4YSSIEDBFPcNEeCGGMX15UHJTodp0tSngmb1CiOi2NnN6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-04 20:45:58', '2025-03-04 20:45:58'),
(80, 2, 'mlPCGYFLTvBMRZp', 'mountainaxe25@gmail.com', 'u1741133486', 'WDP6V6QK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gU1OjdhRepnBpXVzv7dCKunf.9KuBWKQg3VKbh/lBQKKI2.hrKuxO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-05 00:11:26', '2025-03-05 00:11:26'),
(81, 2, 'iNyVWSttMCR', 'rovenoltlaithy@yahoo.com', 'u1741143883', 'FFK806TT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AoptF62iZ0qI1neAwFLGtulXXCnKrnd9q/Snip4NjdOvYtBgtNMs.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-05 03:04:43', '2025-03-05 03:04:43'),
(82, 2, 'https://nmssad6178412.com', 'eldoclub798+BDeti5331@gmail.com', 'u1741404605', '6G2H54GN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GUcFMb2Ybx9IiKDY.knznO372L90VIfaRsX.CtQGj4j87/nbEokV2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-08 03:30:05', '2025-03-08 03:30:06'),
(83, 2, 'MkWSyorUHOZnCBo', 'ttraultuist@yahoo.com', 'u1741707447', 'A7DCHCE9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$20e5e8pnQeCZie4oNq3Ge.CrrM7Z0zengb2VT9ktNSWDyiqgAlPlq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-11 15:37:27', '2025-03-11 15:37:27'),
(84, 2, 'cyDvIbJK', 'kertjordan38@gmail.com', 'u1741809269', '5VADYGHR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hTQrASjxu5YY0AIxIK3um.YDGRHGL9j.H2nKEerKYI0S3V8WZigbK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-12 19:54:29', '2025-03-12 19:54:29'),
(85, 2, 'WcuTyaLA', 'arossiroks@yahoo.com', 'u1741906600', '90PDK3N5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tqeueIfMv3E8/x.TDKGb0eTm3WD/ilqV6Zl2tw5Snb0/QEozPdUTW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-13 22:56:40', '2025-03-13 22:56:40'),
(86, 2, 'qxTfKtTgALJD', 'ykworwpkvzj@yahoo.com', 'u1741927985', 'AM2R89P4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$F2pffw0djtDfxbogtBpARu4n.pCaU4IhJVybp0guw.iImxyWx.SRO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 04:53:05', '2025-03-14 04:53:05'),
(87, 2, 'PsOgSVcz', 'ouieclipseeo21horizon@gmail.com', 'u1741956370', 'R6GGT8G5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wJN22HE7sRTKMwmgODwe8O5UJVWMtSce2H7koCmmbrwb3uOLo9NqS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 12:46:10', '2025-03-14 12:46:10'),
(88, 2, 'mJYpHosXoue', 'dispatch@connectfreight.net', 'u1741962359', '97TE69AG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qR0ETXlf.Tn908rv6N9wE.ZXwgIPJhceKLhTsKnZTyz/dUjVIKTHW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 14:25:59', '2025-03-14 14:25:59'),
(89, 2, 'HDQKEGEmNtMc', 'joaquinalfaro2004@outlook.com', 'u1741964847', '7AWMG79A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$IRCCXxq3iESHvLzasoeDIewmpYH0Wydc8otJypfLWYChT.uIUUkRu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 15:07:27', '2025-03-14 15:07:27'),
(90, 2, 'koMgzkszRr', 'croft11513@gmail.com', 'u1741970671', 'XK55H28E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SHY5AZRzN60B7LN5OBZzjOUKA3F14bZgJdLddWWZ3cD2SOj74rhPe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 16:44:31', '2025-03-14 16:44:31'),
(91, 2, 'vpxWBYOBUiFrXy', 'zacklindsay8@gmail.com', 'u1741974385', '72MPMNV9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yplzBX6C8FnaSJxAlt.XAu6CwzG1KBfFnr/FP.x/v6Xo9j02ruDpa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 17:46:25', '2025-03-14 17:46:25'),
(92, 2, 'mdNqyzgnk', 'keith@attorneygrossman.com', 'u1741974680', 'GKXV4GEV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$t2ANNxRAB4MFoZa18zUOFu66ucfjjGawR.Uuhqv2jV8E8BSYZ7CXe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 17:51:20', '2025-03-14 17:51:20'),
(93, 2, 'estGZaktLV', 'alper.can@live.com', 'u1741980212', 'G9AE3EE1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WuigaUiE6Rg2/IgXX9ufpOmKwjMOTQuZksJeKn698gLArIQUchyAO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 19:23:32', '2025-03-14 19:23:32'),
(94, 2, 'hClbcHQDzJQSam', 'nmbruner@gmail.com', 'u1741983075', 'R3DDNGAV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6EFgb6Pn/3Wy1XgaIEdIguM0rK78nS5mB7zHDGyTC29Qc8ZsHbtja', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 20:11:15', '2025-03-14 20:11:15'),
(95, 2, 'mWbThqSMkJs', 'pastorcal@hotmail.com', 'u1741983589', '7Y9AM0XH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kE82UsIPvwerCdCcr7G5SuSgncRYd91tQIS5OOwYR05WQ6stKhWyu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 20:19:49', '2025-03-14 20:19:49'),
(96, 2, 'JLwcgDuBh', 'tigerwinand@hotmail.com', 'u1741984277', '4Q67E33Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XgvN4lUOAaM6rbQ2w8b5qObaC4kS0IdKnMLwVFc6W.6t1BbPQRFJK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 20:31:17', '2025-03-14 20:31:17'),
(97, 2, 'FlGySySy', 'ellie.tompkins@gmail.com', 'u1741985291', 'CQ09EGE9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XizxRsTen9PU21zh37e5hOpKkPawyG6LKmgmcW0FdC96ZRqGbdscK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 20:48:11', '2025-03-14 20:48:11'),
(98, 2, 'JNwXZLXCoYHpX', 'hannahshea3@gmail.com', 'u1741985871', 'EPX3HHV0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DTyYm46zVaoqhnQoqCBEeuYP41YDvCi.Esnd.5zXURU0M/9nQPjTG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 20:57:51', '2025-03-14 20:57:52'),
(99, 2, 'cpaJibdnbeJCSA', 'keithhembree@gmail.com', 'u1741988601', 'HR1RE9T9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FO/.QE.wlbw5Otpbx0zVZuO7DjyGQQr5jtB6fjuzwUACXCtSHKe0S', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 21:43:21', '2025-03-14 21:43:21'),
(100, 2, 'sgxmDrbTD', 'jpattonuk@gmail.com', 'u1741989486', '6D162ADQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ieOqYbO9UeWOfHMSg7r8uulXWQC56o.y3Vnm8Kr4XWNm1QS35AEF.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 21:58:06', '2025-03-14 21:58:06'),
(101, 2, 'ziKiXUNTpxldm', '62monarch@gmail.com', 'u1741990689', '69YMVFD1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nUPELxQQQhbyvVy5fJT4H.3GpUREGRAhxW7Kcwwku5huJbkQ.R9Oa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 22:18:09', '2025-03-14 22:18:09'),
(102, 2, 'sOAHJlHTo', 'elmadrabreda@gmail.com', 'u1741990826', 'HYWR3YMH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NsRS60LLk7dts8hgLCV3ROEZ0ppXpAuvTZ..O01n8BDRi0eDU7Pqy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 22:20:26', '2025-03-14 22:20:26'),
(103, 2, 'CzFksQoCgndakAC', 'pnolan799@googlemail.com', 'u1741991655', 'TDEDA4XW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8m7eQglLTtn5GCXnA.5RjuA.MCuaNpTCuNg6lBAv.MVAVrekxZhuu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 22:34:15', '2025-03-14 22:34:15'),
(104, 2, 'FoRmcfzdsA', 'gammazoo72@gmail.com', 'u1741993926', 'TC8V65AW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QhwzKRp/TIJWwBBwzcD37Or5fRhnmcm6xg06trmKYz2IOAm6d7SaO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 23:12:06', '2025-03-14 23:12:06'),
(105, 2, 'eKrgqUshLcyjETk', 'morrison8171@comcast.net', 'u1741994237', 'F7YWA2D5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZnQij6Cd7EdzvYOyby5kMO9VYDk7fUCT58640TmHEdMFEMhuzx3ny', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 23:17:17', '2025-03-14 23:17:17'),
(106, 2, 'JOLlBoaEjEkw', 'dream_ha0@hotmail.com', 'u1741995098', 'P521PA2T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pWsvN7ZjrjLzRZ/bgcl9QeYquma1ECUin0O9MnlX150RRDEjUo6/O', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 23:31:38', '2025-03-14 23:31:38'),
(107, 2, 'GMZgbvExRcLTCt', 'alexandrabdelgado@gmail.com', 'u1741995863', '1RMH4RRN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$o6LAA.oONbCNvxcjpP6PkOS/mY8NhKs7YkkarVIxD5hqljvIgf3be', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-14 23:44:23', '2025-03-14 23:44:23'),
(108, 2, 'TWXALMFGmGa', 'rchamblin@bradfordsupplycompany.com', 'u1741997413', '952QEH4M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ape25wHWmlHXjV6Gu1L2outHLiqyoTnhQjRr8GbmJAs.IdgKkOKQO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 00:10:13', '2025-03-15 00:10:13'),
(109, 2, 'yHOOlKSmpZZbOC', 'danny.bui2@gmail.com', 'u1742000043', 'GDW3DD1W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lejkvmr/9M1hGsm5SeiQNOKGB4WFo5r0uRrtuyoPOjFrkTKeHKSf2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 00:54:03', '2025-03-15 00:54:03'),
(110, 2, 'ZrmExOgz', 'angelo.davis8334@gmail.com', 'u1742008689', 'FGC13XKR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$U1g.TPQe9WQ7ujhljuu3t.NVex5tnjnTa8ZD6IviAKAYPxUPHoL7a', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 03:18:09', '2025-03-15 03:18:09'),
(111, 2, 'zBjJyakng', 'ukonu.james@gmail.com', 'u1742015442', 'GT4GKCQN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$buS3jq520EVrI7qNYwM5h.mdDcoFoTK9CpfLz5CMiHubF8NAgOfdu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 05:10:42', '2025-03-15 05:10:42'),
(112, 2, 'sTlLQGODAryWn', 'rkimbrell82@comcast.net', 'u1742050570', '8HH54WEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$riQm3Vyb.kMfneB4OhAo9OduCWF/6uxg793s3cVv36KqzlQCFiCTm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 14:56:10', '2025-03-15 14:56:10'),
(113, 2, 'dKucWdwZYjt', 'blevinspatricia0@gmail.com', 'u1742051878', 'XNCM8W8V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lrfxRsOd8rwSCmLrdyCam./cqPhIDNZK9gDBVgjqeaZKgak2pZbdy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 15:17:58', '2025-03-15 15:17:58'),
(114, 2, 'dPHXgbnQfONIk', 'guera83.rg@gmail.com', 'u1742052244', 'QCMDG5ET', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$w0dsajsN11wnOtT2cX8nWO0eKLNtMnHXR3v7uD6cArDxD0bM2DAUa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 15:24:04', '2025-03-15 15:24:04'),
(115, 2, 'RdndzPKme', 'pravstar111@gmail.com', 'u1742059794', '6APD06N3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5VKPJMF5ik.5015xr7G1ne.GKAqXjhiL4ciX4F.L5TdAZL3u6yc5u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 17:29:54', '2025-03-15 17:29:54'),
(116, 2, 'sLrkHJwKj', 'r.j.shone25@gmail.com', 'u1742074483', '5EM0RVHA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nxwwKROog.QThGKNj7tttOhkT0nsCNCQcdLKUlUwgQRtP/iWyJeKm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 21:34:43', '2025-03-15 21:34:43'),
(117, 2, 'sSwvfJEDkfcKu', 'gdemalliard@gm-conseil.fr', 'u1742077148', 'QGHX9H11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iKbqYTJ7TqSTbmPKAeXhM.ia4JzF5MGR8dyixuLmPAJ2Y/n8N.iG2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-15 22:19:08', '2025-03-15 22:19:08'),
(118, 2, 'CWUSOmyyWMAK', 'randyltz@gmail.com', 'u1742085516', 'G3HGD31N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.gkCyp593h7CewOAGG2TTuxTDjKE7lT64.1gSF8OYzpBxEZEjj65a', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 00:38:36', '2025-03-16 00:38:36'),
(119, 2, 'IJjOzcRTblUkJ', 'nancyschrock1717@gmail.com', 'u1742085888', 'QWQEDM38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HYdMLRZmubDWQJ6903iYHudYXQfAmRfLIHDdk8BsEFu5es2t7us1K', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 00:44:48', '2025-03-16 00:44:48'),
(120, 2, 'dHccCwVCqj', 'chrisb@thepaintedturtle.org', 'u1742090850', 'Y642P7RG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uzfrdESx5bgUtvGwcLzZaeWm5b7eC7pXX2Oxit28/XJSOD4Aj5WZa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 02:07:30', '2025-03-16 02:07:30'),
(121, 2, 'cqJKABjL', 'sharan_kalsi@hotmail.com', 'u1742101885', 'D727TNKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rVxeWAPhpXrlcq.wD6wNEuCgNjqbn0BHlvBccgMNYroLyzMTQSmF6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 05:11:25', '2025-03-16 05:11:25'),
(122, 2, 'XcxkEGBRY', 'kyougokudou.com@gmail.com', 'u1742119064', '1VWNY0F3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$k4uwGYV6aaatZreT4yzMUuqY98/sdNeh3O9kaNSwNCbgsIjVdbeQG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 09:57:44', '2025-03-16 09:57:44'),
(123, 2, 'HnlortMPeWaEfN', 'samuelisom1@gmail.com', 'u1742121266', 'T2T9MKVX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qYNu1AY6gfk45tQ3.dS2KesWFxoxgu.z5GbA/JBzDlr9arL7/OLXG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 10:34:26', '2025-03-16 10:34:26'),
(124, 2, 'BhNtJJJO', 'amu00934x0405@gmail.com', 'u1742124049', 'GYCWK0N7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$epDwfz2eEjl0JkLV0cU47ejRfpA6MsI1r/2qwGlJAG8c3VHTjPr5e', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 11:20:49', '2025-03-16 11:20:49');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `referral_code`, `bio`, `birthdate`, `location`, `website`, `avatar`, `cover`, `email_verified_at`, `identity_verified_at`, `password`, `gender_id`, `gender_pronoun`, `public_profile`, `paid_profile`, `profile_access_price`, `profile_access_price_6_months`, `profile_access_price_3_months`, `profile_access_price_12_months`, `billing_address`, `first_name`, `last_name`, `city`, `country`, `state`, `postcode`, `remember_token`, `auth_provider`, `auth_provider_id`, `stripe_account_id`, `stripe_onboarding_verified`, `enable_2fa`, `enable_geoblocking`, `open_profile`, `country_id`, `settings`, `created_at`, `updated_at`) VALUES
(125, 2, 'euKaerYVqPB', 'desiree@congconn.com', 'u1742126283', '66FE77FA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bU8Slf4RXi8/jwCvG4NUcefbfnwt/yAOYzMshHk45zK00wMzjuDCa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 11:58:03', '2025-03-16 11:58:03'),
(126, 2, 'TsTXQuVwDHa', 'benjamin.k.hastings@gmail.com', 'u1742127478', 'M9RD26YF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5OiKo394XWapkxBP5pOVL.vu1nHs8JCGnKsGdyKkTP.sQt87puE8.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 12:17:58', '2025-03-16 12:17:58'),
(127, 2, 'AHotYMCP', 'bonfigliosergio1@gmail.com', 'u1742128157', 'AR53YW7M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WEgjfqwr.hn86OMXWJssYux19dxLRyxUNT97ItZAtJKsxQHH0VOqq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 12:29:17', '2025-03-16 12:29:17'),
(128, 2, 'GhlaGNfcgLPQUF', 'h.singleton96@gmail.com', 'u1742128670', '0WVXPAWP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gnnMCKn951rd2nwp5NDrlugm8vK492adThkzsJm4oEU377YHUR1J2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 12:37:50', '2025-03-16 12:37:50'),
(129, 2, 'PdIdBgAYnbptvd', 'misscole.abc@gmail.com', 'u1742129773', '9XYXX71Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$s2.f2FCkghmd1RblkO2YpOrb72de1rTal4.iMvmReL2yvRp5ojxAi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 12:56:14', '2025-03-16 12:56:14'),
(130, 2, 'aPAoyZUbojTl', 'pyroheim@hotmail.com', 'u1742130109', 'A5RRVMP9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1LkzLsdy2Cp1/KW.epKRgOc8Uck7xhgDEjj2zWhMeIgma3ghqdNqW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 13:01:49', '2025-03-16 13:01:49'),
(131, 2, 'jKlCwnwV', 'rustamalyamov@gmail.com', 'u1742133073', '6FE4X746', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pjvCl5GW/2yY5li1IdPjtO.w2JEIX7Q50APvlv3.h9YaFLEM3jPXa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 13:51:13', '2025-03-16 13:51:13'),
(132, 2, 'WeYNGXXOWSkF', 'rachel.maddams@hotmail.co.uk', 'u1742135197', '16618QQ0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XaWFUfdAsljK/.D3qwmZY.tL5SZnNOJ5HSFPSnqVs6Tml33S7KFnW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 14:26:37', '2025-03-16 14:26:37'),
(133, 2, 'AFxuCVkbJSUA', 'nikimorrisrocks@gmail.com', 'u1742139688', 'Y3NNDXX3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FcGFuo6.ftxw6QHvmlAI6uG7soB1xOr3TuUtYEjZq7WB2luJxlyG6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 15:41:28', '2025-03-16 15:41:28'),
(134, 2, 'KVNCoRVFNSedLay', 'michaeldwill@gmail.com', 'u1742140150', 'W3026W77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UadtFiknTrzkRJvruhHrN.G10g36cTMDbDRUm96Ey7raUWiZrkDfO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 15:49:10', '2025-03-16 15:49:10'),
(135, 2, 'ljuncexX', 'ruthramirez608@gmail.com', 'u1742148895', 'K4HAK9Q6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CwxvWYDVHUVail7F0YiInuWtAtS66ZkIvD8oTU9BXbNxD/5nP4TXm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 18:14:55', '2025-03-16 18:14:55'),
(136, 2, 'qpDjkwAenKFyFW', 'sticka067@gmail.com', 'u1742151439', 'AC8X20CN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qtOicWSrOFz0YByXYax/bOvPGjHkoXcTm2G3mhSOqf9U40JBn8SEq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 18:57:19', '2025-03-16 18:57:19'),
(137, 2, 'LrBXflzSlRTeSx', 'htanleh@gmail.com', 'u1742160339', '09EAK6C3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ud7YP4uBZAgqkWd2avr/EeVWqvZFNInkzESoTtG3eQnyclvclyaRa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 21:25:39', '2025-03-16 21:25:39'),
(138, 2, 'KcKGtbGXpdo', 'brianecamara@gmail.com', 'u1742160855', 'P1TQR9M8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$L9i.7Ge3GJmCR7dfIqdz5OGADTeXVaXL9XT9QaAb/dTkV3DA1RAVi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 21:34:16', '2025-03-16 21:34:16'),
(139, 2, 'rFotNeogk', 'donnakenyon1@gmail.com', 'u1742162220', '9PQ2RNYF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$r.vO2KlVmZdUTtCBqYYRKO1K/Vfv7pCaPXFU0SZFKJV2sNt72Wd1G', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 21:57:00', '2025-03-16 21:57:00'),
(140, 2, 'mVUKABdJdmjcOn', 'park_claire1987@yahoo.com', 'u1742163319', 'D0XTQ0KG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$d0HQksG24oEW45MZtMjj1eLSmp3CPvR3qQh5oorBpG38qSM/LJxE.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 22:15:19', '2025-03-16 22:15:19'),
(141, 2, 'CKENLohaNefIc', 'lara.almash@icloud.com', 'u1742164593', '4DKF9N2D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qfXTkc66jFgS2HfU0DeGLObitpHCSal8L.ajpJV7bieQUc27LHUuC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 22:36:33', '2025-03-16 22:36:33'),
(142, 2, 'UpvMcXCSLdJf', 'kami.gallaher@gmail.com', 'u1742165339', 'M0G3G0K8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aikx1vxMZesulWdeDzIqtefL3HqUBnXtgjhIhLFwVvJZiJJwpfurq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-16 22:48:59', '2025-03-16 22:48:59'),
(143, 2, 'KojSahnxgxWfEs', 'r.a.ardeleanu@gmail.com', 'u1742170220', 'Y62W2Q90', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gHVfPS0lqP7fhEYU9CkQWOgpmHE0XgQsmU/.35DWQVUMmaoqWhKG.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 00:10:20', '2025-03-17 00:10:20'),
(144, 2, 'nrdlztyAsOxZFx', 'miporin1023mymy@gmail.com', 'u1742178784', 'E0AH6MMN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gyyHrfazW.OFDuDVrGDSXeXtXReG02W3.24TK10zePoGQ1x/255Fi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 02:33:04', '2025-03-17 02:33:04'),
(145, 2, 'zwehnvtUteFzupx', 'compuneth@gmail.com', 'u1742179291', 'RW2CRGX3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$v0BrY9aV5uvr7cSf.0Eezeq.rZsmQvERa7vlfBvD3ioNWIxZY2YfS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 02:41:31', '2025-03-17 02:41:31'),
(146, 2, 'sFIzkVsHmS', 'beek.aha.nn.325@gmail.com', 'u1742195567', 'V304MXF2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lfs5WxeFZGokUxZIDDllPuHRpfrcI/3R7M5Fb6GJDJIoLUGTpUff6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 07:12:47', '2025-03-17 07:12:47'),
(147, 2, 'lkjdretlvssss www.yandex.ru', 'john@protdskeit.ru', 'u1742196414', 'FC8QCCEK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$77Yx4YuUphBJRCTjs3Etz.vEw1cdKqylqC2qg5hqIXI3i7ii/tgZi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 07:26:55', '2025-03-17 07:26:55'),
(148, 2, 'RezEHdVvov', 'kkotaro1119@gmail.com', 'u1742201241', 'FM9PFEEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$phaWnxPbClYTCgFSWQHEGek8OdCOmJeWGkTxfYrRk5Y4xnaxKnYwG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 08:47:21', '2025-03-17 08:47:21'),
(149, 2, 'IGnBXXcp', 'kijinooniku@gmail.com', 'u1742202791', 'C287F960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ktFaRh2H9y1EaXLzXQt10uDe/9ntFTGg4LFXUuiBUVUmC3uDFtplu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 09:13:11', '2025-03-17 09:13:11'),
(150, 2, 'Rneshigox', 'derek.ramp82@gmail.com', 'u1742204936', 'HNMW20YW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$J0rVfIDgScbDuV9ogOgEruJ/kR4EhS4eTsQE5wnvVBOyP0VTSszY.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 09:48:56', '2025-03-17 09:48:56'),
(151, 2, 'oNsgGDrRkcYxHFV', 'alan@retailassistance.com', 'u1742206635', 'NXNQNKE9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7sQaHobTfCGlBTVGQaSJjeJx1m8GtTDdORMhBtY/U//Z6lM0zOxha', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 10:17:15', '2025-03-17 10:17:15'),
(152, 2, 'OGZjXjucutaH', 'emilyannemay95@gmail.com', 'u1742210624', '8FTH3KRC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$I8wOL4yiVFAn7PtraEfQgeY4ELl3oVKoHH1XJElgyhxuHiNAOY.MK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 11:23:44', '2025-03-17 11:23:44'),
(153, 2, 'AJCnlxWsTa', 'lawrsimon21813@gmail.com', 'u1742213957', 'A4C86V5A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cNuKuZXM0BVo2bzNGhaYRu1mA4USvookESgX68b45fucpeFSQE9Mu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 12:19:17', '2025-03-17 12:19:17'),
(154, 2, 'oQtSBQyjKSv', 'ktam@commodorecc.com', 'u1742214440', 'GQYDY7N6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8X2sQULSpkgeLIm.4On.UOQxR0D2J35qBrH6r6HFMJezpfCImC0OS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 12:27:20', '2025-03-17 12:27:20'),
(155, 2, 'PbWrlUiRWAC', 'rachelntta@gmail.com', 'u1742225135', 'CNMMY3MC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LZz5xfxz7HtgC9ZIiU9Yn./.uX6Rhy5NjntaNyLDfm8x4xvOlG4jm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 15:25:35', '2025-03-17 15:25:35'),
(156, 2, 'JMLeGjCnGHbIqtp', 'padou16@hotmail.com', 'u1742225354', 'N65WMA2Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MMxBjQ2I2uchg.gzzHN7HObA7JiUYRHKeujVldjo9EzQuEMT9XxEW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 15:29:14', '2025-03-17 15:29:14'),
(157, 2, 'fNTOyoqef', 'gleidsonalmeida06@gmail.com', 'u1742225829', '71D8VH2X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4sL7mxHswuaR5giL/7jqyedp6oj..9WzXwRVuPGSnMoh4MOom86iu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 15:37:09', '2025-03-17 15:37:09'),
(158, 2, 'fvkSSjMqjThfLCO', 'bettywright106624@yahoo.com', 'u1742228732', 'GGV7W7V4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$q68KBXq1Omxe5VNzc89YgeD8KxPEmWmgXdXzpfxPzF7R1fPzLxX4u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 16:25:32', '2025-03-17 16:25:32'),
(159, 2, 'WRkvujUnX', '13rickc@gmail.com', 'u1742230806', 'M26C7MYK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CLLnXi0zlvvFkWbHFfTvkOaf33RKHY9PxyGN7UP6pKjS6.6o6tWVi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 17:00:06', '2025-03-17 17:00:06'),
(160, 2, 'hvMBMQImbYMcVdG', 'lakeishaseals@live.com', 'u1742234492', 'C4R7P83M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$upjKY6Ma6jqeDmmTRHlS0.gh0hIfwvr.ksX.n4ssQJozbK2iXFW4G', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 18:01:32', '2025-03-17 18:01:32'),
(161, 2, 'CyASfVHKy', '2920olod@gmail.com', 'u1742238161', '6XTW3PGH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ySXitbv.XaXG2s2eG5daHe2XJr7sm.TcqkGMBx7s3yOVl/kN.H3.m', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 19:02:41', '2025-03-17 19:02:41'),
(162, 2, 'UIDluuylPnMyau', 'rgetitright@gmail.com', 'u1742240065', 'DEPA68RY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FxCVxla0i8k.YjJr.R0PT.khrokh2oaSnRrVe6eyy9lyILp.iXO7m', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 19:34:25', '2025-03-17 19:34:25'),
(163, 2, 'yNXGpFRQbTcYxLQ', 'sflavill@larsonjuhl.com', 'u1742240140', '0VA0V045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$g0ycufsuGC4BB5QzWbuYqu3yheMl/x/uWcZkTGFVKr59ztbU8cBIC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 19:35:40', '2025-03-17 19:35:40'),
(164, 2, 'VoQJNagMPwyQPUL', 'shirbusa@netscape.net', 'u1742240281', 'EYTFD0XC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b.4xEBbp/imYJxOWyA51s.JqfhhLsRk79xat5a3LtzpOg1hY9m7d6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 19:38:01', '2025-03-17 19:38:01'),
(165, 2, 'YKXIqOxQPI', 'hiranotaichi8@gmail.com', 'u1742240588', 'X6NRR9VN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$S2oX9zDlf4XctSmH1tMpBe3IVzDat3unBCvD5ljA6.1mKmqx5US2G', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 19:43:08', '2025-03-17 19:43:08'),
(166, 2, 'YfldkDRcKoA', 'psykeswilliams22@gmail.com', 'u1742240646', 'VWV72N9N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$chH9HI9Y2iswP3f0lTyNM.65XSldZ/moz87EgTU8ohAnqOf2cfzD.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 19:44:06', '2025-03-17 19:44:06'),
(167, 2, 'bVAzFnEdawLF', 'zhenfshugo@gmail.com', 'u1742242631', '6V9PG2X5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GkcsKGwFV4HBZi42JoYM2u3NHyDEgIisFjBKAQvYLsig.YqpiVlra', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 20:17:11', '2025-03-17 20:17:11'),
(168, 2, 'yQixOnoBONnd', 'stokes0869@gmail.com', 'u1742242820', '7Y1131CP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GCxxaWfxqHU0dRB9KdG6iuAeL5rAameDBBaSbI0JRNB/tU5O7a7o2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 20:20:20', '2025-03-17 20:20:20'),
(169, 2, 'qKhaoAPZklcU', 'cusdrowski@dollardays.com', 'u1742247782', 'A4QN7EQQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qHsY7gTRBAeUX7Gl4wiBkO.6ieoIZe5wrB4CFi3AgAYmu1nbL7sGW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 21:43:02', '2025-03-17 21:43:02'),
(170, 2, 'zKAAHMlhMsf', 'sanderson@myalma.org', 'u1742248514', 'EETT362M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.azLaNqYh1Z1P8AQTsbICeMRW4a/fBYF4qHIF0sAfim0DT83csuPu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 21:55:14', '2025-03-17 21:55:14'),
(171, 2, 'HGAPTICkdhJy', 'tomgolden1947@gmail.com', 'u1742249049', 'R1XNVN46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3xcEOqkEseuQekKljUnCZ.9jN9AEBeNpuJzbdp5f6b2nl1KBFrJ66', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 22:04:09', '2025-03-17 22:04:09'),
(172, 2, 'IbmChbZVc', 'jun.hirai.3108@gmail.com', 'u1742249804', 'CF4MWNRY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$C/MvbtNpUjNqxRIqciZnGOzKWHr9LSnzsG7v/stPsRfPfNbBy8PMq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 22:16:44', '2025-03-17 22:16:44'),
(173, 2, 'aQBqLSdcpnV', 'danilusasm@gmail.com', 'u1742253314', '27YV1V9M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8RSNfHeLCIoO088I5S/eOuLcOugCIMYXaWyfbZamSAlWzluah4hm6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 23:15:14', '2025-03-17 23:15:14'),
(174, 2, 'veYIzcalA', 'dosaken254@gmail.com', 'u1742253433', 'X0PNK8M4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6lCq5LV4eNC68VoaakDhiuKLXC0fIYxu/i5zqP9adU8rLbDmziEbS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-17 23:17:13', '2025-03-17 23:17:13'),
(175, 2, 'mxaZVbfdpF', 'ohisama4649@gmail.com', 'u1742263680', '5323ET4X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1tmQ1mp4cyK7UwuXXZdQ9OEfYzJ79tVqjcF3oF1EGtWHcgULVBZBq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 02:08:00', '2025-03-18 02:08:00'),
(176, 2, 'tcIaAZBh', 'rasyalmachel33690@gmail.com', 'u1742266082', 'EKM88XQ4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4sx3MrGxnmWp8WZ1xGYWFOXPbCI8gO1zpJ6ZuVwnYt1IWxNwwz192', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 02:48:02', '2025-03-18 02:48:02'),
(177, 2, 'QZuikLUZSTlo', 'hela.dahen@gmail.com', 'u1742267284', '129YQ77V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BoQ0fZaazzfrvhK4gPNkTOEd9M3xrhesD9pKu4AtihZyPfon/5PsG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 03:08:04', '2025-03-18 03:08:04'),
(178, 2, 'FcybtSyNLfpcJVe', 'juan_maly1997@yahoo.com', 'u1742274344', '5EEYWYV7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iXxSd1S3LUDJK1Zs/oGD0.Fv/D.QWwgiZwFUWZUrdl9G1JkAbgu5a', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 05:05:44', '2025-03-18 05:05:44'),
(179, 2, 'xNeGvWxeSL', 'ernie@dimalantadesigngroup.com', 'u1742276107', 'RA195W1A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bu55WXQO/3syrF3feVQbK.4tQVuEuZVGObA5aQo6SEdjW5LfphEe6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 05:35:07', '2025-03-18 05:35:07'),
(180, 2, 'BGsccDYqk', 'holgereckner@msn.com', 'u1742280187', '874TVH0D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zu5QWIf4QjTVm707S10Yn.MDA.B3885Y4UDS953RcokDetfWfMHrC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 06:43:08', '2025-03-18 06:43:08'),
(181, 2, 'hMGlbPEMsSC', '0617masaaki@gmail.com', 'u1742280767', 'H48RRY96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$z4fQQqWlXov4tacJfJh/Iuy0gTN7kZi/IiQzAQouBN6GIboS4d7IO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 06:52:47', '2025-03-18 06:52:47'),
(182, 2, 'NDJxzBbWBsvbZI', 'dixon.shabonda81@gmail.com', 'u1742283714', 'FWVNHX4X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$12CZ/v9P7XLo80FWE2.MteAqxtjq75WGjbaWvAPeMdmA8dsiOQ8Vm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 07:41:54', '2025-03-18 07:41:54'),
(183, 2, 'fAoxousLdlX', 'ssm02899@gmail.com', 'u1742289593', 'DK58KT2A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GVy1KZwTzBZWfdzRGmP6wuwIbZgEDlY2.8i44ORBh6jgwZYAzc10.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 09:19:54', '2025-03-18 09:19:54'),
(184, 2, 'zPmDxcaf', 'aaronmcdowell76@gmail.com', 'u1742291510', 'Y61AWXKG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sxDpsHd.11zqAtgC8xSpq.vQTpVjw.atJR2ZvHXF6WoB3ThSUu5ya', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 09:51:50', '2025-03-18 09:51:50'),
(185, 2, 'KRUXFVauWLhunC', 'magge12345678@gmail.com', 'u1742294757', 'GDA59FYT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gPA8.Jpr7uQx3T5B9XVdzeH6DdWkNXcq.7ZS/IwOAziroj8yG9mQq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 10:45:57', '2025-03-18 10:45:57'),
(186, 2, 'lagtOHxTErzk', 'esparzav918@gmail.com', 'u1742295036', '36WK43XT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FHaeMzfQXmWNIAFfwXX07umX0/K1yBOl6Rj56pn0WY7oySCYTZfXO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 10:50:37', '2025-03-18 10:50:37');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `referral_code`, `bio`, `birthdate`, `location`, `website`, `avatar`, `cover`, `email_verified_at`, `identity_verified_at`, `password`, `gender_id`, `gender_pronoun`, `public_profile`, `paid_profile`, `profile_access_price`, `profile_access_price_6_months`, `profile_access_price_3_months`, `profile_access_price_12_months`, `billing_address`, `first_name`, `last_name`, `city`, `country`, `state`, `postcode`, `remember_token`, `auth_provider`, `auth_provider_id`, `stripe_account_id`, `stripe_onboarding_verified`, `enable_2fa`, `enable_geoblocking`, `open_profile`, `country_id`, `settings`, `created_at`, `updated_at`) VALUES
(187, 2, 'ofONfFcoZC', 'ambowers11@gmail.com', 'u1742296918', 'M790MC9H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qIZ8izBvFj03o6FjRHl4O.Oejy4UHCMZc.DLDyxK8ShvGT6AL5EH.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 11:21:58', '2025-03-18 11:21:58'),
(188, 2, 'BLLLyLwZeX', 'huebert.michael@t-online.de', 'u1742297575', 'FR1NDQQG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8L2Tdx4R3S0KpjomQYMUKOYsGvxVBpt.fGX7jqISNTk1AaOh5xqFS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 11:32:56', '2025-03-18 11:32:56'),
(189, 2, 'aTUwzqowbmAr', 'stacylu13@hotmail.com', 'u1742298813', '7RR82CWX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9cZs/whLAf00T5uacf2GJ.yj.lII5CcWgD4raTSieWu6vnypPLuU6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 11:53:34', '2025-03-18 11:53:34'),
(190, 2, 'mRTYYrUfogqy', 'tim.marson@gmail.com', 'u1742300270', '4GH172AG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YmXEDzk0dBc4BxJ.vhFXvefjDitgyzy9A5LsEkUrxPKAsMIT4f2tK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 12:17:50', '2025-03-18 12:17:50'),
(191, 2, 'RCWKbTQd', 'ucmego2000@gmail.com', 'u1742300577', '7GM6Y47W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pt8jVFVkYRT7RKVOq6PHEuKvzGhQlyAxOmWTEqrwa66ftxGleofNK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 12:22:57', '2025-03-18 12:22:57'),
(192, 2, 'bgklajfFo', 'hatuha655@gmail.com', 'u1742301429', 'MMM06Q2D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BFz2lbZMgZeK3VtDDX/ipuVCkn6Ivvc95N22fs6ckerSVHr.RoIae', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 12:37:09', '2025-03-18 12:37:09'),
(193, 2, 'vwXIsPVshvBOE', 'theohtops@live.co.uk', 'u1742302975', 'QYHXMDHQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VGsQo.QO39K5wVcgyUU3X..lYlHreAzB.RwpUtYndOd/r74NuHxga', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 13:02:56', '2025-03-18 13:02:56'),
(194, 2, 'btAzAymdEtBsfo', 'samuelsydeski@comcast.net', 'u1742304339', 'YAHCGKFM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lW2xcFzz73NCjWIf3nFhnO5ZjtYSAQ28OgklKNm5jkH.9Clv3AvbS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 13:25:39', '2025-03-18 13:25:39'),
(195, 2, 'BxBzrXPWGIfeM', 'lizparker64@gmail.com', 'u1742305972', '721KPGCQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$H/6srZ.r1nW2L1y9/xvdD.wfX2rr./DpnMUtXa1DorFKNBlcHAR3W', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 13:52:52', '2025-03-18 13:52:52'),
(196, 2, 'pUFBCCHMBV', 'info@trianglehomeware.com', 'u1742308408', 'M6537D69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WDwhV3XXFhMTgV4ozl0MxupEmL/dE.LcbZrrtdChKpYVVBksKDovi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 14:33:28', '2025-03-18 14:33:28'),
(197, 2, 'rMjvCcjp', 'neenos_9@hotmail.com', 'u1742308453', '68V27QPC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6ZN5d/nfOuGmBiOqc.bwc.e9t.C5J8sN0desxIlpS685C.Kcjf7OK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 14:34:13', '2025-03-18 14:34:13'),
(198, 2, 'NyDVqzhdugaSFW', 'alinecastellarduarte@gmail.com', 'u1742310454', 'K5WRPF77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4zwp1LNqXi9uJuzZ8Hb/u.Bo/w6Nln/XVY5p9APDCrhwsK2AeLPru', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 15:07:34', '2025-03-18 15:07:34'),
(199, 2, 'vGrJzKGRj', 'carolyndeets25@gmail.com', 'u1742310577', 'AXN926RQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bOaEGFd6EjPXJpLuokPD7.sA.jM8PXLZPbm8MFxrStnfumPysVrMi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 15:09:37', '2025-03-18 15:09:37'),
(200, 2, 'VXKGmbWFL', 'mathewsalex26@gmail.com', 'u1742312411', 'N9979WR3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QGZ4u2o4oYXARPXY66PXle/M6pMdCrivCboh9ALdzLO8pUFwg.ohm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 15:40:11', '2025-03-18 15:40:11'),
(201, 2, 'VyVEwWExK', 'pabloneira@msn.com', 'u1742312740', 'R2VCNAT8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4U0hwgxihqzknjVtjWr68O2t6U0Bm5eNX19tTxzYqM2qFDfSA4MFm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 15:45:40', '2025-03-18 15:45:40'),
(202, 2, 'hWMJzJRlqB', 'latonantzin@gmail.com', 'u1742312947', 'WEV5CVXE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ppGYTMRCxFdrtjztqd6pieVO4w3TSWuVptUTyd5NSr6thvKmv97h6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 15:49:07', '2025-03-18 15:49:07'),
(203, 2, 'gGiYhoMpaqlxzl', 'rrose@gabelli.com', 'u1742322014', 'XMV1A4PK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D11Y2EPfJhfGz8Jg4CQT.OHzyfxXg.v6xxfmitaClC1.ocph0NT9q', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 18:20:14', '2025-03-18 18:20:14'),
(204, 2, 'oPgQwFUukhvyZ', 'raine@recordmob.com', 'u1742322552', '1412AF79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0ewNNpt4.Y6/JF.xVNIcDeM2M.paCZ1InjRKhcB2PM6/4OZHZYbIm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 18:29:12', '2025-03-18 18:29:12'),
(205, 2, 'sCNqBRdusOVPtRF', 'dr_alkhazraji@hotmail.com', 'u1742328595', 'RVQT9CX2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$dg2XqxfueDe8J3vek04xKuSay4H5e33p.ZpFJoAx6/E4msPIgEQMm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 20:09:55', '2025-03-18 20:09:55'),
(206, 2, 'YccMEcnMcBBv', 'rtchittum@msn.com', 'u1742331370', 'HCF98KHK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zzZIrgDdozYYcy2z4RovkONZEoACfeeZXMFMDVMx8frKMI1Z/AS3O', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 20:56:10', '2025-03-18 20:56:10'),
(207, 2, 'KrvDTzqD', 'rosedawn1995@yahoo.com', 'u1742331385', 'C3A8VY8P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$boLZSuykh884C9qyqDO4LerpO7pXSJdWb2fEy.qehIXLUhEL8BhDC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 20:56:25', '2025-03-18 20:56:25'),
(208, 2, 'cCTRwnfYxzpepI', 'fatherly1@cox.net', 'u1742332491', '20TMPR11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$d9rRVCRs4MTcrLh/yJIlauqmyJcMHurVPsOYBRLoOv7Y9123rXi62', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 21:14:51', '2025-03-18 21:14:51'),
(209, 2, 'KyknnTSSdJ', 'tennistamara@gmail.com', 'u1742332958', 'HTC43Y9A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vSzTIk74t9VhYI1Nl8gJ1eFuP/iKh.SkCcJaDQtFt3hgHBYbWeTh.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 21:22:38', '2025-03-18 21:22:38'),
(210, 2, 'csKJZZeaFc', 'howard.hayesjr@comcast.net', 'u1742333451', 'GHRADA6G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PJ/QlXDBsxH7o/1u/pr8v.XjjWdmrIq60KsRy8RxXWTL5hlUundTS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 21:30:51', '2025-03-18 21:30:51'),
(211, 2, 'NrJymmjponp', 'maddennat@yahoo.co.uk', 'u1742333842', 'QVH1DWDG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kimjNsmnwxER7oyipV1yMeq5iMN1kQ1L350WNsG8c3eIBgAlhDo6a', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 21:37:22', '2025-03-18 21:37:22'),
(212, 2, 'fMSbSWWiqnW', 'babjq509@jttk.zaq.ne.jp', 'u1742333879', '552HEA4X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$y0cWdiP6tfb5d91FlGKZIuff.Q1/b4rdDs6DAKCot1//tSBLZ20nq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 21:37:59', '2025-03-18 21:37:59'),
(213, 2, 'MrckIpettie', 'yavannieithil@gmail.com', 'u1742334958', 'NPHQTYRW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MT/HYUSXdeNIHSVGLVzV..ZlSxMPoAii5IbwcAW8sPZ4KAuGJLocW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 21:55:58', '2025-03-18 21:55:58'),
(214, 2, 'OZdWufLoyDOdeQ', 'sunitabehlx@gmail.com', 'u1742336126', 'KWQ8HQ8V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Y.Vd7MtuQFusAmwxZwlXF.q2XvCcApmGjBO0NF6NoDJVBdc/8QUGu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 22:15:26', '2025-03-18 22:15:26'),
(215, 2, 'IcnqxSiz', 'mike.heckroth@gmail.com', 'u1742337809', 'RP29679H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0/cjj.pGABFps7y.9UWCjOXgeJYhW24FpNTIFLg.HqjGASn5V77O.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 22:43:29', '2025-03-18 22:43:29'),
(216, 2, 'pTEgTTUOED', 'morrisjustin37@gmail.com', 'u1742340650', 'VHVA77CT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NbdB/ATBzzwpS05GFzC22uWtd0OalCqeQk52PDNpubXYuyv3nfHxG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-18 23:30:50', '2025-03-18 23:30:50'),
(217, 2, 'TbSzrsukTRDTY', 'raekylie12@gmail.com', 'u1742346899', 'QQMCR6KN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pEiQ2wLBQI2IXE39luszReMCA5a.jJvvcan.7iHWvedcHCJLeYpmq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 01:14:59', '2025-03-19 01:14:59'),
(218, 2, 'aYZPiGMvGrB', 'yorlenib@yahoo.com', 'u1742347020', '7937Y7Y5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Hw.9WMq8GX7mHZ61dR.eg.03ygoTcB4cvOdTNry0vdHft/1Lqt68i', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 01:17:00', '2025-03-19 01:17:00'),
(219, 2, 'siuTRKaK', 'flamboyangemajasa.lawang@gmail.com', 'u1742347891', 'KEY1RG6Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rBxL265tpnMsVYhdUoAWm.OAoL/tkUjcVYehuP/xZ7Kw3CXaEZcby', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 01:31:31', '2025-03-19 01:31:31'),
(220, 2, 'iyMXwQrQbwj', 'shirlene411@yahoo.com', 'u1742349194', 'X2WGC6YF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$el5ll77Ue7hdr7emM/0h9O7d7nwzTs4vD5fiFHxtN65VVD7duA2mq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 01:53:14', '2025-03-19 01:53:14'),
(221, 2, 'RQdSlWuyzPJOYsN', 'tonikeslar@yahoo.com', 'u1742350211', '28G7XGH8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iB4uosB.1mZr.eO347ONH.Kdb4ORnj.lV6qpyWRsaKMrbA7Tl1FQm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 02:10:11', '2025-03-19 02:10:11'),
(222, 2, 'AhjuYoQq', 'lahmasa+qq@gmail.com', 'u1742354361', 'X08X97TQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hdtp/q.o/BbcTWSS9x.cuO./bdsi7beGQzTcj71NemCEtjOpEhuOy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 03:19:21', '2025-03-19 03:19:21'),
(223, 2, 'InfemqNuPwGVe', 'joe@expresslanetraffic.com', 'u1742357845', 'YKTPEGHH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/spMBq.1AYrwlPs3LPrgV.llCc/QgwvfXsQHPA5ZY8X9UV1eODr9.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 04:17:26', '2025-03-19 04:17:26'),
(224, 2, 'bAoqRfybSfv', 'info@onadime.ca', 'u1742360016', 'QGMNAYTC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MjVbsSM5UrXY8jA46eOagu5sBatRb.zCXSaWGWSwzSFQYbwkrAmq6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 04:53:36', '2025-03-19 04:53:36'),
(225, 2, 'ndNGQcVkcV', 'digger8710@yahoo.com', 'u1742361221', 'G1R1CHWK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zD5h9pCXE8wuKvJmFQ8.6O9CPSjRstdADr47mXo9cpFPvIogJiCu2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 05:13:41', '2025-03-19 05:13:41'),
(226, 2, 'YwkvdlwfrGc', 'harnathka.varun@gmail.com', 'u1742361505', 'KGDWQXWC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jf6qflGoKBIs8CEr66/69uWeOY7mGEDOU1vPS6If55NwiNfYIV0.C', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 05:18:25', '2025-03-19 05:18:25'),
(227, 2, 'RKsTDyOFntqMNq', 'mrhplusrjm@gmail.com', 'u1742362948', '35P72KH4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$eyEv3gt.dDIfdgSHyiFw7.Lund6ziKyMW/OIA4kIJzNlfKJPkav5y', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 05:42:28', '2025-03-19 05:42:28'),
(228, 2, 'esFYShIMOJRaCvp', 'spear392001@yahoo.com', 'u1742371672', 'DC59F8FD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$loZO/QRUJu6nekoMg4TrSeG5gd8nxGkdb4o6tVvH1dZGvBrSV3zW.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 08:07:52', '2025-03-19 08:07:52'),
(229, 2, 'KlzDZkKWegVyPbO', 'axel@kretzsch.eu', 'u1742375062', '8K0TF6QW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$akPbE6TFgzci9I1K/bQS7u1jCv8YAH590IRFMlhz5d4t5PJJrAITu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 09:04:22', '2025-03-19 09:04:22'),
(230, 2, 'vTOFxyVMwbnGz', 'jj@gmail.com', 'u1742375584', 'TGRMQHYV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Xhj9S0x30.s.inyz5yeQfeLjbBplMWsOv4G80hcMRXNkJtGlCKeh.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 09:13:05', '2025-03-19 09:13:05'),
(231, 2, 'daYRaPZLyqHvr', 'whithh@peoplepc.com', 'u1742376405', 'P0EDP3AN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/nbcVuYWDVgeJNts3QCzO.EJZvEzxzS/TGmEnsOGBsWcNhIj5sMtG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 09:26:45', '2025-03-19 09:26:45'),
(232, 2, 'aQyjdQhCSxsm', 'raphaelkastner@gmail.com', 'u1742376685', 'GEEX3EX1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Nso3kRWmDXKZfr/YIAZuU.ekTuji2k6J5RQo3iAyCyw0Qi/Kq/VJK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 09:31:25', '2025-03-19 09:31:25'),
(233, 2, 'vkHatJMjzZ', 'kadobnova@mts.ru', 'u1742378854', '22H23H51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$XOFlM5AWweRXhYdUM.EJOuM51qXWCjJoU2OnuEamSQ4fv7r5AtJiW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 10:07:34', '2025-03-19 10:07:34'),
(234, 2, 'ptDzCfHF', 'tateiwarina@gmail.com', 'u1742379828', '94PKFQY1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Hy/cPgQzWBdHBKyMPyK03eIqC/gMsjhDKEOS2J.DM75MG1X5OyyMy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 10:23:48', '2025-03-19 10:23:48'),
(235, 2, 'jgVCOxdxNb', 'alice@zukeweb.com', 'u1742380595', 'EGV0K7VP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PD0wfnSxB0cR0LIisbFIIewqbrwCYNyo2qo6E7AOF9/aKDi2bSOqm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 10:36:35', '2025-03-19 10:36:35'),
(236, 2, 'xBNuwTYAF', 'bankermtg@gmail.com', 'u1742383330', 'TG747DQE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OD.2RL0lfHsqlGj5G8N4duaIg9ROwYMgTu87ar7B/xpltuvz835ga', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 11:22:10', '2025-03-19 11:22:10'),
(237, 2, 'dbAyymFYUBHb', 'rapier225@me.com', 'u1742383453', 'QRDMA0C4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TR6XfbEf35.jqXYMxWsc7.FVqovtenkxwlQjCwm/ATBikK2d4/vli', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 11:24:13', '2025-03-19 11:24:13'),
(238, 2, 'tamlPISDTx', 'rmullens@telus.net', 'u1742384714', '211XC4F6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D05wNTWv/G4jzjKGmyOJk.wnkQnUosuNV6dQIeZ7tLO7OvcqIHC.W', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 11:45:14', '2025-03-19 11:45:14'),
(239, 2, 'fdYkmxJHMJjlQld', 'tomjolson333@gmail.com', 'u1742388168', 'Y2377GMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$StOKlmaL5obRGhHdLq0LEusguEnxBYbs021QdHKtMVY1xulNjHQou', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 12:42:48', '2025-03-19 12:42:48'),
(240, 2, 'NZJZjRBZXsMSA', 'marek.rafaelov@gmail.com', 'u1742389123', '4P4Y6XC7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$a3Deis8ANQf7GMAxavmRrun/Unb6Wn0RlgQKDQGHkIRerYedpYGzW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 12:58:43', '2025-03-19 12:58:43'),
(241, 2, 'kFWPZszZfO', 'kaitlyn.lasiter.kl@gmail.com', 'u1742389375', 'VPX40NNN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$7QPYxw9klV35vE1lFsXjtuwKUFCsGk0kAlM2p.vzODvz4uZWAluyq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 13:02:55', '2025-03-19 13:02:55'),
(242, 2, 'PoDvoORltEl', 'ravenik45@gmail.com', 'u1742389395', 'TWV80756', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$70IVFOigV/Mib9pvUMSRVOtTOrZ9B/v2pTGcquEW/wn.y2tDltzsu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 13:03:15', '2025-03-19 13:03:15'),
(243, 2, 'vRTJFsQt', 'kw.thrg@yahoo.com', 'u1742390912', '1R2PHAGN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZuXhLmXVukJFPNLJoIrlKet1U0Xxak4hsb.A0opHdNBDexlExTWA6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 13:28:32', '2025-03-19 13:28:32'),
(244, 2, 'wBXNVppE', 'tmaciejr@gmail.com', 'u1742392502', '2HADVVDN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4fj6/49BOXFfOC8rTS6tBuNCza/J1WmQyw8HIi/HEcnsOYdtA7//O', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 13:55:02', '2025-03-19 13:55:02'),
(245, 2, 'jZpmcPdVYcWBTM', 'relsner.315@gmail.com', 'u1742392784', 'EET9NGT9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.dNCiO.GbSLGsVLZMrO3cO8R4z/xXp0HGnrXouSMvozRDrdCWl7JO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 13:59:44', '2025-03-19 13:59:44'),
(246, 2, 'UXxHaeAceZf', 'jlchadii@protonmail.com', 'u1742393214', 'TEWE1D7A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$F0DDPO8hpgKB7Chnxm6coeCm8GpsVkXtRQvnXP7roi.FwK759s7Dm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 14:06:54', '2025-03-19 14:06:54'),
(247, 2, 'GxMaNByWUAPWPWm', 'kenfred@comcast.net', 'u1742393565', 'QAWR816A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aD22nh/7EH7VqkHSYyDVJusViX6mueRfwnLF9TXtIydqz9o/HM3Sq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 14:12:45', '2025-03-19 14:12:45'),
(248, 2, 'OFeBiIMhWe', 'merikaskahill3@gmail.com', 'u1742396428', 'H1PDM8AN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LickOB4HbPg9ZJmbPacXluFjf3I9shw4xIAQIz4.7XOXPYWCVgZDm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 15:00:28', '2025-03-19 15:00:28');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `referral_code`, `bio`, `birthdate`, `location`, `website`, `avatar`, `cover`, `email_verified_at`, `identity_verified_at`, `password`, `gender_id`, `gender_pronoun`, `public_profile`, `paid_profile`, `profile_access_price`, `profile_access_price_6_months`, `profile_access_price_3_months`, `profile_access_price_12_months`, `billing_address`, `first_name`, `last_name`, `city`, `country`, `state`, `postcode`, `remember_token`, `auth_provider`, `auth_provider_id`, `stripe_account_id`, `stripe_onboarding_verified`, `enable_2fa`, `enable_geoblocking`, `open_profile`, `country_id`, `settings`, `created_at`, `updated_at`) VALUES
(249, 2, 'PXdOMGMkVaKSKXn', 'ssgturnusa@yahoo.com', 'u1742396806', '3FE9V9EA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KZIad9tWmWdklXnP4oO5G.OBbUe4SLKdGk73gp3RrIiGbJwpPzYIu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 15:06:46', '2025-03-19 15:06:46'),
(250, 2, 'sjnCijrOXO', 'kachey@pksti.com', 'u1742397345', 'PX33P8DQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kdD6Ro5LFAIRYGzR6nh8E.FQPd0WAonT.teI3zcCUGm/SogHSApBC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 15:15:45', '2025-03-19 15:15:45'),
(251, 2, 'fBSlvImFPQ', 'mooresue12@yahoo.com', 'u1742397689', 'GV2DM10E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6.H5yLoCzN8ZqSan0TMbzOStqNXdXPAE/hI5Xd1zSltZYGIzVHani', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 15:21:29', '2025-03-19 15:21:29'),
(252, 2, 'BgLKwNTk', 'aegeorge3@gmail.com', 'u1742398588', 'HF9CR6DD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gEyIDIIO83sqy4Hk1.NZnuUU5GI4mhx806b1rIO8xtvcu.ziq0H.W', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 15:36:28', '2025-03-19 15:36:28'),
(253, 2, 'YBrYcrCh', 'sharris115@aol.com', 'u1742399137', 'EV173HT8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ot47fRPbHDRVyguHsv8z9u.wHM56C4b3.PyYfYuPKvjs29zQT28Fm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 15:45:37', '2025-03-19 15:45:37'),
(254, 2, 'xlyxHmqapkB', 'admin@conyerscarcarecenter.com', 'u1742399416', '2Y5Y40XX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1NCmu09PmCiJpPTN2jwEO.B2dGFsW6gE8JlFsnB5B5H1ouIR32wjC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 15:50:16', '2025-03-19 15:50:16'),
(255, 2, 'kajyLhHjGpKxjKo', 'artsawyer@gmail.com', 'u1742400784', 'K7K7520E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4rsmIGp6QXXmiStTI9GOru69coVTrH9rcjE8dI/jNCx8hQ/jhsBfS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 16:13:04', '2025-03-19 16:13:04'),
(256, 2, 'wEMTIHHnaeT', 'reddawes@gmail.com', 'u1742401240', 'VE8XD53G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$A26l/TiqJlCX/f8UNZm6WumNexFBZYEd2yv/cLQ0R5eVfLfeukn8C', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 16:20:41', '2025-03-19 16:20:41'),
(257, 2, 'lugkjnIXKBiXA', 'bmk.seiler@gmail.com', 'u1742401408', '71N0TFDX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YxCfsjnrKD67Z1REiaL6A.oNe3b8Dtu4.NulzfE8ub0/g37izVAJ6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 16:23:28', '2025-03-19 16:23:28'),
(258, 2, 'MGOdiWPhGKBnK', 'yjaortiz53@netscape.net', 'u1742401826', '3YAXNT7R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$fJLp2YH82eYb/k58KNzOaemzNzU.FSdIb0SY0/1kQm2P949VDsWXS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 16:30:26', '2025-03-19 16:30:26'),
(259, 2, 'qqfdizHDXOFrwEq', 'grahams4444@gmail.com', 'u1742403303', '3GFC64A2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PgfPpNIBh2xvgAOAZ5giWuAcprVTk2ozF7Y7B7X415qll42vupqT2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 16:55:03', '2025-03-19 16:55:03'),
(260, 2, 'AigxfRpRpQmnGWj', 'djpyro318@yahoo.com', 'u1742406315', 'H9DG6E0V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$n.5Uo369fuhpy79AZ0bWjulaMVJfN9CpB/AWCTlaGqsarBKj27S.W', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 17:45:15', '2025-03-19 17:45:15'),
(261, 2, 'yfpoSQQIL', 'barrosokatia@gmail.com', 'u1742406741', '04MP1DKG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iJOpdEHDUqoJIGrnI4.SsurudW878zfgdDtfpGGN3pP5omsWwxuyq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 17:52:21', '2025-03-19 17:52:21'),
(262, 2, 'QdJPyKfUTLV', 'rvandame@zoominternet.net', 'u1742407959', 'DYD1F3AE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TFlDVxZe/llnvPE2jHzIsuZvSrw1zlQLXf9BEsyQsI7V9SVy7du2O', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 18:12:40', '2025-03-19 18:12:40'),
(263, 2, 'EsPtwEsPL', 'pedja.d@gmail.com', 'u1742408150', 'AR8Q3GW7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gacu4uhKwXYmI/AsytJ54eL5doxDFZonJo9/iTvsqJlTcp/0bSOs6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 18:15:51', '2025-03-19 18:15:51'),
(264, 2, 'sbMegmkiI', 'xjzjx@hotmail.com', 'u1742408178', 'KC4VYYK7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wshrOjMoDtoWuf28U4anwul9VD7fryFnE50CFfXBsgEmEr755KBeG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 18:16:18', '2025-03-19 18:16:18'),
(265, 2, 'OATEbzmDSmxRcTX', 'thibtrevisan@gmail.com', 'u1742408263', 'R9MCFHWY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xi94nDiMUYjmNtjsCQ3BruoQ8MDI4gHiaX601cE30Yi07kPUAcDRy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 18:17:43', '2025-03-19 18:17:43'),
(266, 2, 'SRpsDijbgjjq', 'chenyizheng103@gmail.com', 'u1742410102', 'MKD0P3P6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Cm4J1xOExrjt9yek5er6jOiengH5uMH4NCfSuXTypui6GPjRLcRGy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 18:48:22', '2025-03-19 18:48:22'),
(267, 2, 'vclHtSYur', 'murphy.olivia@hotmail.com', 'u1742410407', '3TFAY5G6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$k9w3TewPBGi6iZ90ZPP5E.JP7ZRAueDQDMMBBaarKKBlNH/zCb6ue', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 18:53:28', '2025-03-19 18:53:28'),
(268, 2, 'qfKpoBGHhA', 'santamaria709@gmail.com', 'u1742410843', 'TQFDA807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$auYnnvogIHxbaiPNl.Q1huPw4YBARLvixRwxI7/cQXgBcjcP.vOia', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 19:00:43', '2025-03-19 19:00:43'),
(269, 2, 'VOxvxdgAzUcuEE', 'qwertass@list.ru', 'u1742411001', 'CNKF6MWN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$eDPZCJ/cOk/nvB0PhwBsM.ASkmGDmltujTN1qg47Gnh/U26HVOEb.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 19:03:21', '2025-03-19 19:03:21'),
(270, 2, 'xnLsqoEZUcK', 'neil.braun@gmail.com', 'u1742411920', 'EX71QM26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$By0BXMwPV4dlz2xn9R6Ab.kSb9YNgs.tnKlnviTyZ8Ah17UApUhPC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 19:18:40', '2025-03-19 19:18:40'),
(271, 2, 'yDzHnMfKtfpcD', 'daniels3014@yahoo.com', 'u1742411984', '8XMPA5W6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$McO0kHayutvws2hGn.4C7OuWJbxz1Ljwqn1H9Yvd.Lb7x30NNiO1u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 19:19:44', '2025-03-19 19:19:44'),
(272, 2, 'PepSSDYwKT', 'tiagokno@gmail.com', 'u1742413015', 'HCFFHCM3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/Ww53jN1jxUOXJnOsHqT8u7XOShc0BigqtNwvUh38ObxNl0xl/tpi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 19:36:55', '2025-03-19 19:36:55'),
(273, 2, 'vaEiMvdZuM', 'dasevv87@gmail.com', 'u1742413276', '7X241Y08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$K4gceBYrsDXHQ0Qe.6rdbOeAN0l.A9taekTm9Lj5K3vKwC2lkVAi.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 19:41:16', '2025-03-19 19:41:16'),
(274, 2, 'uoJTwwDZx', 'mtnlife@yahoo.com', 'u1742413689', '1ET5PRQK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OR3rCZEJN2wGnJi/QVJQ0usOgcmrhKNiR1jk2mMO/E6MW5j691pEm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 19:48:09', '2025-03-19 19:48:09'),
(275, 2, 'SiYgnUuv', 'jada20k@gmail.com', 'u1742413750', '53DNFNPR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HRAE/B89bROYJx26SzabnuoqDXphGg7kPXIlVh9TV62/2mgxWruUG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 19:49:10', '2025-03-19 19:49:10'),
(276, 2, 'oqFNRnmxzX', 'trevor.vranicar@gmail.com', 'u1742414142', 'N42AQE8M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hsyQgQ93y0VEpltwEfTixOZZdXTVXBMHxq1NcbyiWMkytGbpVArm.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 19:55:42', '2025-03-19 19:55:42'),
(277, 2, 'GkbATMtXY', 'jfranks@gardnerkansas.gov', 'u1742414660', 'H5KMNYN2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5y2DXmAiEKm4D0usc3oICOhpAj2/yWsQJMsQiKaOZIJOVsnQEAMzu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 20:04:21', '2025-03-19 20:04:21'),
(278, 2, 'GuzdjCyLqxRh', 'defoe_1@verizon.net', 'u1742414821', '3N7D06AW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GJkx11YVs2T/h8Ppmp1/tuh0oWWBgFo4oZ.f63j.IkDZq2.INeL4m', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 20:07:01', '2025-03-19 20:07:01'),
(279, 2, 'nOsmvyMc', 'amandaheidel10@gmail.com', 'u1742414880', 'MW5NTCFX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$W5b/HD8.bygGguQfm.sIveLir1zCMQ7ZAEYR86NlsQh5MwZnQa7Yy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 20:08:00', '2025-03-19 20:08:00'),
(280, 2, 'PleIdnUzpztpUEa', 'mfer02@hotmail.com', 'u1742415116', 'T2C781H1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HPI1cqcsp9du2WxZ1xyT6uZkykf1pYGcligXXH7YXI79O5rQN0i1u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 20:11:56', '2025-03-19 20:11:56'),
(281, 2, 'WeaOSGzwgJyF', 'dmb5girl@yahoo.com', 'u1742415355', 'XHAG3957', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TPCgYFAXlR3fBWipSnkMlempQjN0yGKVV2dNetvb7DOmAzN3Ov/sy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 20:15:55', '2025-03-19 20:15:55'),
(282, 2, 'hhEbEUSypg', 'vicous_monkey@msn.com', 'u1742415502', 'AQP593K3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ETJYAkcK54ZfzlRAv3FtsONgeJDAlc277hSGnaPy1T4h0FPqRcy8a', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 20:18:22', '2025-03-19 20:18:22'),
(283, 2, 'RZAFEIkxzAepjQz', 'joabebarbosa.comercial@hotmail.com', 'u1742415722', 'H7X2CDNH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$//RiP7hKhQptbbVX1jFFl.kMDRrKNJtXHeIa0NAyrRW0X0P9NwXYC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 20:22:02', '2025-03-19 20:22:02'),
(284, 2, 'YhyMxLubY', 'jlwlaw@gmail.com', 'u1742417927', 'YKXA0N0E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$5P/0ERb7ssJ1lkVpgSwSuOCgUGozUS6lvBm0q5JvQC6RfsyjJNDau', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 20:58:47', '2025-03-19 20:58:47'),
(285, 2, 'ItPjvcxEOh', 'kauntzbldg@gmail.com', 'u1742418390', 'PMENY6XQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$47lzIeSg3DCRr0X1srWsSOuOR3T1bE56ZZT48CAQlf5NtzlDlVk0.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 21:06:31', '2025-03-19 21:06:31'),
(286, 2, 'UaKiTVpxNERenB', 'marydiane.rn@gmail.com', 'u1742418470', 'F6K5R2VT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$39ViC/IF83Qi0L0OhCE3v.XwkRbGwg6QuZGMCm9MOlNQV05/VYCWq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 21:07:50', '2025-03-19 21:07:50'),
(287, 2, 'JRQpLBDD', 'fvandam82@gmail.com', 'u1742419125', 'TNARH676', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$nAX8pnx6csffJwtMFYQZPOglSpvedjAaRu2cqvgx0qLRKyxAwaHI6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 21:18:46', '2025-03-19 21:18:46'),
(288, 2, 'ekaqUtGTXv', 'tracylynn2303@yahoo.com', 'u1742419544', '3AGE892V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$48iTMMlO56UOhJf0pKpXM.iaTMRcJ2n9QD37rvT0O7r5jhA3k7dbO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 21:25:44', '2025-03-19 21:25:44'),
(289, 2, 'MypOkFkmR', 'xeod1sgt@aol.com', 'u1742419636', 'E2PQD77T', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PCbBm768TZuXxprcmknjc.SiWrzO/9iW33O42RqAZqMCThsWxGb6u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 21:27:16', '2025-03-19 21:27:16'),
(290, 2, 'fcNYewJQDIvdl', 'mslcasey1@gmail.com', 'u1742421258', '29N2NDRR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ch/AInJZ6UIDF49Ly9Uq7ep3g38c6wdWmvAZmqH.4sEw2Kg4S9gDy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 21:54:18', '2025-03-19 21:54:18'),
(291, 2, 'bYISlkOtXIvqqyO', 'connrich10@gmail.com', 'u1742422810', '919MHT3Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NZlFrHRv0oPfTHLZUxULCeq.OiAWPUVGZPzbz3N4rfWwFQ7k5OCiy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 22:20:10', '2025-03-19 22:20:10'),
(292, 2, 'ixuWHMqDgIFmsaR', 'armyman2014.bh@gmail.com', 'u1742423875', 'CWDCF5T9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$U.HTXR3eVsWyHsVIt.5YjOmir7z4Hk3sNvF5zWfE4C.3OmRUJ5aBK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 22:37:55', '2025-03-19 22:37:55'),
(293, 2, 'xVxJpQyErfv', 'crazybaby92172@gmail.com', 'u1742423876', 'MVX4R25X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$P.2oScPOtuXFe9MZHbVQB.8xzbxIds359MdBw.s2gKVg/WTX3cMYy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 22:37:56', '2025-03-19 22:37:56'),
(294, 2, 'tQFJOeAGoEPwq', 'charrington@firsthome.com', 'u1742424027', 'CGFD0NK3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vajP4EWnKS6.3b2DO98Ngeem8Btj778a3zf31cbRVdwZilqo594DC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 22:40:27', '2025-03-19 22:40:27'),
(295, 2, 'DrWIPLKjGK', 'mjc-home@outlook.com', 'u1742424078', '62APVW02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UwiqwG5IAw6tQQy8aQP4I.JUDCV2cZkj1hIQBD9dAq.A2Qqv/fSK6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 22:41:18', '2025-03-19 22:41:18'),
(296, 2, 'UolOZzfPnvAcdl', 'lbpegasus95@gmail.com', 'u1742425186', 'XKCKFYR2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6P2rIyCemFtASPbA2dxAIukrdVDcHT0Mr8vNvwaA40826EWkk6vIO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 22:59:46', '2025-03-19 22:59:46'),
(297, 2, 'BhqSzFlkDHfK', 'note2robson@gmail.com', 'u1742425631', 'H97F2GTN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PttiKg1uhMJly72efacWW.xP4e6xd0p2cs0.H2WInESxXlImWXRd6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 23:07:11', '2025-03-19 23:07:11'),
(298, 2, 'fOKPFEjcKQCur', 'jayvondavis@gmail.com', 'u1742426126', 'M3V89W9G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hhlKhY3yz.umNlngJtQ7GOYkDmKPMnanC2C5z1PO0pc9IFRmJ1LWi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 23:15:26', '2025-03-19 23:15:26'),
(299, 2, 'bILOSueXDFz', 'kimberly.frassetti@wescodist.com', 'u1742427150', '2K0V3RVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$y9yycMMfVcFwq657p4CBeuliKWw1q2e4wb4Q/Fxfgm8Kh9dbZm.bi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 23:32:30', '2025-03-19 23:32:30'),
(300, 2, 'xeybuoDQC', 'carlandersonp05@gmail.com', 'u1742427621', '5EPA2MF8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$sAQegsIKbMwZqN9r5eIBrudaJTZJXTxbHL1s1p//G8jUd5G5NBExC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 23:40:21', '2025-03-19 23:40:21'),
(301, 2, 'fliubSvuSjiu', 'rowbottom5@hotmail.com', 'u1742428300', 'RN989DTT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Lw.PWs.vUNykRcyrBaVuY.dpprSydzACZC0m5A00cccZKWfFenHla', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 23:51:40', '2025-03-19 23:51:40'),
(302, 2, 'IScoaiocB', 'tgagnier@fcar.co', 'u1742428371', '2N339G9G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$TgqBRG.tB8NhkZqXAMUz..dDvX7coN5scww3x3zoAoquEaDKrpo3O', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-19 23:52:51', '2025-03-19 23:52:51'),
(303, 2, 'TdAUAWpeQJ', 'bobanddenise777@yahoo.com', 'u1742429319', 'YRGR5HT9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zKHEKXup08cl9gKS.8JP2u7s4n1geGUMeI2NOy00nGpsKiBc6i2Gy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 00:08:39', '2025-03-20 00:08:39'),
(304, 2, 'mgjmOaMCgJJ', 'shanmorris1@gmail.com', 'u1742430242', 'TQPE4W8Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rKamHM7J4hmRcrFBZkidNOI.rHFuHrUtZBVfCbQwHMGxwNnFtBwQe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 00:24:02', '2025-03-20 00:24:02'),
(305, 2, 'xPtkBcuPARMYCm', 'chikusa70@gmail.com', 'u1742430633', '3CD63F1W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$74yQBBzz0IV.2UW1oK.vUuRX2C5Fc4FRTtkr8ESgYCBs4rN8MiMAq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 00:30:33', '2025-03-20 00:30:33'),
(306, 2, 'ZWmNGaWYaHP', '0gk32660043290j@ezweb.ne.jp', 'u1742433270', '2VY6PGYD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2QXf8UsNIY3h1nxZZ3i/Bu9YjTCoEcx/0YzLJCbkn2XJqEnjs/z4O', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 01:14:30', '2025-03-20 01:14:30'),
(307, 2, 'ytSczAHw', 'bclinton50@gmail.com', 'u1742433779', 'K4CPVCQ0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Raymj1KKSQBfnCS.l/u1FO5XRpTNhB5OlvYc9qGXWcmWGJkBy/RVe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 01:23:00', '2025-03-20 01:23:00'),
(308, 2, 'rVARNFpGvAUN', 'michael626medina@yahoo.com', 'u1742436391', 'K2DKRG3N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$j.lsRO32yEJpSBszkx3kgOyma/DNPudNWjPyyXiDVu89FYv3KSBKa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 02:06:31', '2025-03-20 02:06:31'),
(309, 2, 'xihtsveG', 'ohmiteitoku@gmail.com', 'u1742438101', '2PEDK9CN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ePH3qzH7mmB/kWWc9u3dGONDrlAzfRnmhZ/1iA.m6dudcTT4xhb4C', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 02:35:01', '2025-03-20 02:35:01'),
(310, 2, 'sTAeBsPMIjmRuCt', 'afayngold@yahoo.com', 'u1742441799', 'P13AVX34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bbtK1aygE6jCTh.U2sKXMu6Vaan1ONf1SSYResdk5h3uSBFbD81ca', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 03:36:39', '2025-03-20 03:36:39');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `referral_code`, `bio`, `birthdate`, `location`, `website`, `avatar`, `cover`, `email_verified_at`, `identity_verified_at`, `password`, `gender_id`, `gender_pronoun`, `public_profile`, `paid_profile`, `profile_access_price`, `profile_access_price_6_months`, `profile_access_price_3_months`, `profile_access_price_12_months`, `billing_address`, `first_name`, `last_name`, `city`, `country`, `state`, `postcode`, `remember_token`, `auth_provider`, `auth_provider_id`, `stripe_account_id`, `stripe_onboarding_verified`, `enable_2fa`, `enable_geoblocking`, `open_profile`, `country_id`, `settings`, `created_at`, `updated_at`) VALUES
(311, 2, 'cEaJtJEKZFYxFLA', 'mikan2neko5730@gmail.com', 'u1742441989', 'X0K18X2W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HerRCY3YDX5k2DsFmPXmHekCHEFJOh2E/UzLeSy43n2v8g0CAKYPy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 03:39:49', '2025-03-20 03:39:49'),
(312, 2, 'lnlsfFsBjp', 'robbin.stockton15@gmail.com', 'u1742443088', 'P267VK20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9wRtGtMVmHSy8IemDqGtpOhkW8NPagHME08uhkXH64pw0XbUcXDUe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 03:58:08', '2025-03-20 03:58:08'),
(313, 2, 'jGhZqfMMoayAbW', 'ryanhughes353@gmail.com', 'u1742446093', 'WV3Q30H8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jLNWPSuAhxd.f28HYrmyEOHJ4CqjBtWyPcUo/bYw9AVVHcUzcRl1i', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 04:48:13', '2025-03-20 04:48:13'),
(314, 2, 'TpfMgAXPEgc', 'jhshutt@comcast.net', 'u1742446408', 'AXFFQ016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VCKubG.qw6yZzQPxNUlcHuV2CbWC27p1lxpiCXhnUvWm4iUOIfZ.y', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 04:53:28', '2025-03-20 04:53:28'),
(315, 2, 'uhRiSbCjktsags', 'aguyinkansas1@gmail.com', 'u1742446823', 'R7KXTXVE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WqWeWH12tkWAsXRW20YXRexFzBfKJJucw.8aKi0FSzWo1Nhg4Twru', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 05:00:23', '2025-03-20 05:00:23'),
(316, 2, 'dgPPcMpTqnzYH', 'darrenvoage@yahoo.com', 'u1742450340', 'NPYHTADF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$pN.pKXwP7r1ombCYrA.dC.3OIB9MQbB7i0D2hYlpXWJw6QxKf8lrG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 05:59:00', '2025-03-20 05:59:00'),
(317, 2, 'EIbIwTwOUOBJN', 'bte1075@yahoo.com', 'u1742454224', 'AK3AHY87', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WpYFBIQiFxeHb6biiYncbOCIl6PM9RffUnB/iu/7QZY1yUPcEjREC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 07:03:44', '2025-03-20 07:03:44'),
(318, 2, 'gIcXCtQUDUMUJur', 'minormjr@gmail.com', 'u1742454656', 'CQ6M41H4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uV1KdgE7MIZ6xuRjcFoLqeE/pIdbObA.3OgNbjhXcly2UeNJPx7HC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 07:10:57', '2025-03-20 07:10:57'),
(319, 2, 'qvqTeFBypv', 'roddfrank+nm@gmail.com', 'u1742454793', '9TD8GWEM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YzyDXwAJCiGX/jl9dKJqR.5juAtclQb5UEtm4ljMUMJZ2lpEsFYVC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 07:13:13', '2025-03-20 07:13:13'),
(320, 2, 'kKCzRUBts', 'craigsa@gmail.com', 'u1742457058', 'WEVTF839', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2P1l/YvJa3PGhacM/2qKsOL3us3Ah9xV9/j51E16Uokeh8zrowSfK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 07:50:58', '2025-03-20 07:50:58'),
(321, 2, 'hJAKxRgjRO', 'poisonalison@gmail.com', 'u1742460663', 'PRWD87T0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$J1cAIIqPQhQSk7YJk/K3oO3ppDF59nZktfd.fUsRPbySu9o8TDar2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 08:51:03', '2025-03-20 08:51:04'),
(322, 2, 'doDHohuxzHdsRb', 'michellebrushel@yahoo.com', 'u1742461664', 'EPF4W912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$q.vDIYVUjhH7iyvHyZg6rOkY2PJHvKqDMDa59IbT0q0VMD/HRbxPW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 09:07:44', '2025-03-20 09:07:44'),
(323, 2, 'NkAEoMUbxNsWoq', 'sala.alessio.b@gmail.com', 'u1742462088', '4Q0R1RP3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qxOQg/gwRBY5Q1OrQR/0p.FBQpx4bH8slbQfx3akXcWZg49IonPBm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 09:14:48', '2025-03-20 09:14:48'),
(324, 2, 'cONldPJORHkjYa', 'azeedougatti@gmail.com', 'u1742462598', 'HGVF77Q6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DKQR1SVCHI9JXC76AhUuTeiKB/djVRBabKo6wplBGog/OAiVCoSQm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 09:23:18', '2025-03-20 09:23:18'),
(325, 2, 'wNbvQbvUgY', 'c.aganstafford@gmail.com', 'u1742463078', '2R2YDGKE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Pw.LGnZewwHfm0OUnCjP1urlDdTQZ/eQs.EcgBQanPxQXycABJAlu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 09:31:19', '2025-03-20 09:31:19'),
(326, 2, 'ulOVDAdUKnBXKTi', 'afaqshehzad@gmail.com', 'u1742463084', '5RF8DT3K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$l9zjSiTy3Lru.ohB7wEXtuYEcB9EkgJUWkd30mczkHYI9VOE65GlG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 09:31:24', '2025-03-20 09:31:24'),
(327, 2, 'CFBXTluYeScHR', 'uncleteddy41@hotmail.com', 'u1742465387', '7F6KYW8E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$0GsG8buLVSF/LAnPRO9R.OE/9KWZzOkTMBLdkBs9zGHDeWcBmAsuC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 10:09:47', '2025-03-20 10:09:47'),
(328, 2, 'PUQCQDvRnq', 'boyntondl@yahoo.com', 'u1742469382', 'V0MTY9AA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jolhqpxQWKpoEOr2pwmT7OQfpLjNcjt6RmHn9uh/Zqs2AYOi5a902', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 11:16:22', '2025-03-20 11:16:22'),
(329, 2, 'FylwRlSCqHgacJO', 'candyputerbaugh@gmail.com', 'u1742469805', 'HPTFRVFC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FNl/Q8J8xdFMmELIJkKpSOanJ2w6Cv3KdBVqW/5c0fkzcwdQQUkK2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 11:23:25', '2025-03-20 11:23:26'),
(330, 2, 'SGBFyJQmi', 'raymondsoriano@gmail.com', 'u1742469854', 'WQGDA260', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kVC9.FjfvxoPJMyD/BkFfu8ZiWTFQJ75/0WDwz6eTMGSM3pDj3d5O', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 11:24:14', '2025-03-20 11:24:14'),
(331, 2, 'enIgnevYmnxnCO', 'pegisaac@aol.com', 'u1742475203', '4Y059Y7E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$mvKVUALG9sRI6jwlaYNhEeFSQJ/s6aaaByhxrWPCZChAw1jjZ9geK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 12:53:23', '2025-03-20 12:53:23'),
(332, 2, 'hJAzrWfHaxAuR', 'pattison88@socialworker.net', 'u1742475560', '8M3GGFH7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yZkMvdLdbcVK/bBY8BDYweXbqk0pF5hpxujMLpqUMZN4L9Yd2b.7G', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 12:59:20', '2025-03-20 12:59:20'),
(333, 2, 'zgoVwoyFlLHhz', 'saashaas90@yahoo.com', 'u1742475867', 'NV7XGVPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9irE8vSpuZqA9TrA/VgqTOsMZ.3v3QXi06ueS9pj.qkztRyO0UzZ2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 13:04:27', '2025-03-20 13:04:27'),
(334, 2, 'zKxDrDFoxuar', 'scottl101@gmail.com', 'u1742477305', 'MPTAEK91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/q9Qdk3I.42ZF660YFd/u.LLtHgGBlLyBOj5Nq9C/5NMEyZEMTutm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 13:28:25', '2025-03-20 13:28:25'),
(335, 2, 'HdYZONZGssG', 'barreroalan333@gmail.com', 'u1742478533', 'V59KX035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$bOzuOWUH6kwAUV4hUELMCuSY35/Z3EIaX4v75P7MRdWkRCtIRKz1e', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 13:48:53', '2025-03-20 13:48:53'),
(336, 2, 'HCCDGxlVJomS', 'kenneth.n.garner@gmail.com', 'u1742478864', 'RYAKP960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZLtfKkChGoqDvcQjwx8WCuDL8kZw9ppmA5wt3z6LlLKWB9JNmc0Sa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 13:54:24', '2025-03-20 13:54:24'),
(337, 2, 'rTPwQryHiOVdQ', 'mcrevo2k1@gmail.com', 'u1742479207', '208V0G2Q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4jruZ2z81IYNb5KIS6wHFeytEl1RWV9id7dNbGWWasGd3oAHKdftm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 14:00:07', '2025-03-20 14:00:07'),
(338, 2, 'IcgoyUKJToIcqQc', 'threemaries2002@yahoo.com', 'u1742480498', 'P03E2VNM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.Z3Uk0QOYinzS7h36odbbuPO1P4rTIz882ti41c9ssVQycAm39GCW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 14:21:38', '2025-03-20 14:21:38'),
(339, 2, 'dQVmMfTrEbJPC', 'dispatch@1stplatinumfreight.com', 'u1742481604', 'C135AFW7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Mfwz00fJ3Ez0k.nXguEHJObwMPCm1VEZeOe0w.RKa9fOve0UMYvvO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 14:40:04', '2025-03-20 14:40:04'),
(340, 2, 'OFDYMWblCXNMo', 'marko@eosgroups.com', 'u1742484368', 'Q5TKRW43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/YPXgD40.jtdSCpcAr1lwuGhm64xtUPHZwEFtvlnQC5Uz.hbjy2DC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 15:26:08', '2025-03-20 15:26:08'),
(341, 2, 'oZwPCnDlDNHBv', 'civicsa.re1@gmail.com', 'u1742484392', 'QDVWT7X6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZKCJ/iIqRPSx3qv9V8atle4Cr9OsRG0ZjjAeqChWJa0mfO9voReDG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 15:26:32', '2025-03-20 15:26:32'),
(342, 2, 'nylNFlTGktn', 'raedatruth@gmail.com', 'u1742484409', 'RED66R3H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$p3aQ2zdOModQzHYRbA5ST./vHLv6sUsLGld/uLcgqyEOGINcgi8AC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 15:26:49', '2025-03-20 15:26:49'),
(343, 2, 'IYyUlsCixqZTZzO', 'ckktk@cox.net', 'u1742485228', 'V7722Q93', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1NiSsAWkDNiuChw1MOlLu.DXoLfPjVmo2iJsF2aELa4C42ALsp2bK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 15:40:28', '2025-03-20 15:40:28'),
(344, 2, 'bYbGFlmfDm', 'moshibaru@gmail.com', 'u1742485326', 'H7TEVQ1V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$btG6MHxVIQgF2y6x96nxuOd1f.oZH6hqpeWw/ykxKPEicXg6kDOdS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 15:42:06', '2025-03-20 15:42:06'),
(345, 2, 'HPCspIpSEUSM', 'adrian.aranda@usdoj.gov', 'u1742486185', 'A4APDK8Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YmbxGjSXf8xu8D5HWZ3el.L4oJ9zERpfse4w1eQaQ/3kxbSh2VJT.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 15:56:25', '2025-03-20 15:56:25'),
(346, 2, 'aoNGhjOIAeFQcr', 'sbzappas@gmail.com', 'u1742486271', 'HWFNP32X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oWbkAaXxRd44dUy40svQj.KjRiJwUwjEWQiHdW.G3mHjSi6eFzqtK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 15:57:51', '2025-03-20 15:57:51'),
(347, 2, 'dHiHwAHqD', 'selmrob@gmail.com', 'u1742487063', 'P7QQEX79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$tGH06RkFUXF8yGROh3xCxeTGaygehxL34yPNDGqZjxQE7/5R.Ur4S', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 16:11:03', '2025-03-20 16:11:03'),
(348, 2, 'MPEXtqYGeuuco', 'sashley89@yahoo.com', 'u1742488048', 'VFKV8TKH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9RaIbL3gTJ7MeGmVWDMu9eQ2qG2MaR6Z1a3iXlUorSmCLDZlYaV.i', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 16:27:29', '2025-03-20 16:27:29'),
(349, 2, 'AKTAHbArZGfSZ', 'christa.kagy@gmail.com', 'u1742488103', 'VHTA51TR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WFixsqPrLB5wPazu8RrX9erEMBFBHUze8ckjjx.UoEHsX39B4JfRC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 16:28:23', '2025-03-20 16:28:23'),
(350, 2, 'NoDJSdzHJPWpel', 'pablitozm@gmail.com', 'u1742488230', 'K2RDQR3F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ak8ybbIjYL9ErXGHBR1PuONOzGUQkDvtgXrBfAmna/Y/J1bUSMlcK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 16:30:30', '2025-03-20 16:30:30'),
(351, 2, 'hVFBabKjMwagiAz', 'devinbartlett0991@gmail.com', 'u1742488261', '3NX39YKC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$e021FvwMMetzvcpIeL9zt.b4inXZuMXd..ARsK8GyFozzpUDpvpBu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 16:31:01', '2025-03-20 16:31:01'),
(352, 2, 'RqwJigpveQve', 'crane_gordon@hotmail.com', 'u1742488531', 'DFD5TWGX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1IlaLECEgL6IseoIQTKFx.liYSVMDoyX4BgCv0n4OkrZyFD.PJlw.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 16:35:31', '2025-03-20 16:35:31'),
(353, 2, 'urUHAlApdbr', 'karen@horizonbuildersinc.net', 'u1742489193', 'RCYR0120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Cc9lpYqPmyGjTns3JSG3buFDSHCPpFBTygbAke4PeYm5prmCkZdnC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 16:46:33', '2025-03-20 16:46:33'),
(354, 2, 'KSpJCVvtDKi', 'tami.hyatt@ipaper.com', 'u1742490155', 'A3R6HR9V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$APKf8oM8FOQS1nn5y8cB5eVVBSqU4TwAZ9W3Aw1LHGuzNgxjbeKaK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 17:02:36', '2025-03-20 17:02:36'),
(355, 2, 'kOTaeuwtwjg', 'ross@rossmoorelaw.com', 'u1742490519', 'RT1W3GGT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$j6UcZFQ6Baw6UpSKUhIT3upwgkS9hUdVkLTc3m0O8p2q4qu2BiYB6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 17:08:39', '2025-03-20 17:08:39'),
(356, 2, 'PvShgjXenKvmYo', 'tiffanyspromakeup@gmail.com', 'u1742492815', '3KKN6YWP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MqDyQQzeoqMzrv1JYibW8e6I.txJ6SEn7gFX7yCkyd7bcNfRP2lJ2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 17:46:55', '2025-03-20 17:46:55'),
(357, 2, 'KtRBcVxdcHc', 'vegabrandy96@gmail.com', 'u1742493083', '1KV2V3QV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b9ugJ5rCnb.ztfrnTr17BuYuhC8Gs2mZz5tFFjUU5UsZdJ9ODNSE2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 17:51:23', '2025-03-20 17:51:23'),
(358, 2, 'mnfwlOxwmUdUSd', 'dgstewart20@gmail.com', 'u1742493492', 'PV14ECW9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lm1jYB9YT6lWvr1gEK9cp.wvnQ2BnwCdbLWowk1Z8CLyU4WUJ9JIu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 17:58:12', '2025-03-20 17:58:12'),
(359, 2, 'WFlKAKuxAjHtln', 'raquelcarrillotorres@gmail.com', 'u1742493873', 'Y4E2E1DE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9ErjDRziJ.8UwmD0f.qwgOLp3oTnym/JdN4ODbFuMgOOgBXxMyvq2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 18:04:33', '2025-03-20 18:04:33'),
(360, 2, 'bZUBPSEAgWTNIuA', 'joesinak@gmail.com', 'u1742494120', 'Y6WHNX5G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$R4zWWIumlt8/.iyVLQPoeuLDz5QEggkQGLbaozFgOTl3sryXLZVNy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 18:08:40', '2025-03-20 18:08:40'),
(361, 2, 'hPyAVEuHYcZs', 'andrewy117@gmail.com', 'u1742494464', 'HTP32W4W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SsjnZZYESP5ULwoZJylNMeFFo7/0oGW47pphThjQvkCcz7cl8CCle', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 18:14:24', '2025-03-20 18:14:24'),
(362, 2, 'BUxgDnJXLmvapb', 'sayramexpressllc@gmail.com', 'u1742495379', 'GR8V2PFK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Gt7kQ1XsVWArWTlPpFTXn.F7K0UYrQHLXnKN5qhlP26hMixehtT6.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 18:29:39', '2025-03-20 18:29:39'),
(363, 2, 'iSFbZoRJNrL', 'bennettmon@gmail.com', 'u1742496489', 'TXG34TX5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aptvNuGlGNJ5IpJflJq7COQbC//b4/WpmPdpMmnbQocecbJFDMH72', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 18:48:09', '2025-03-20 18:48:09'),
(364, 2, 'teCyzKGNb', 'acid_burn03@yahoo.com', 'u1742496546', '6H45AKDM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$T8GZWJZ8eWB1UZUQdfPs3.DAH8U9Ta85K.6Ev34AF22a3uHpfiaBi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 18:49:06', '2025-03-20 18:49:06'),
(365, 2, 'SJotxYIAOVzOEe', 'a9mritech@gmail.com', 'u1742497111', 'GKP4G0WR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JN0OnvBD8JxLpYdj6HJ6aO.6YIoNpE4QvHhyKaw6x11nFdv0kQGjK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 18:58:32', '2025-03-20 18:58:32'),
(366, 2, 'hBATvmJNnRq', 'jerrymcneiljr@yahoo.com', 'u1742497559', '3RKMCP65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3v.P8ctV.LihfS5SgYK4quHujBWAoIF2rQF3xetkmX3dekXFYee7K', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 19:05:59', '2025-03-20 19:05:59'),
(367, 2, 'iOtLLdfJte', 'heather_edson@bostonmutual.com', 'u1742497698', 'F80HT5AX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$cYQHkmc9IFye9qcEmcBkaerxnEaceFgJKzbB1I5/J3ALJuSNUwUsy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 19:08:18', '2025-03-20 19:08:18'),
(368, 2, 'BZRDysQJHDZBef', 'p2u@usa.com', 'u1742497742', 'Q322434H', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$j/kn0Tt4WSwYOW5KAyxZSO5HRxuVvF2k05AdOZ1Vbs04yqZwBhXB.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 19:09:02', '2025-03-20 19:09:02'),
(369, 2, 'kGMpneFQnkzL', 'joyh991@gmail.com', 'u1742498256', 'HV392CNY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$6zPJQN6QSDfMrMF0LZICIOpwmxeAywmqlgjFDblcEQGfnjhUG1x8q', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 19:17:36', '2025-03-20 19:17:36'),
(370, 2, 'IpiCyRPXUmtkuAB', 'nreed2783@gmail.com', 'u1742498878', 'P6F747T4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aTPosVegjiBeVHN9k02eyObQah6P.N5gNA018R9YXvQ/yQ28vFprG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 19:27:58', '2025-03-20 19:27:58'),
(371, 2, 'dQZSuUAcJO', 'jason@oelri.ch', 'u1742498910', '92TPEPP7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YsYkWUmhrTIKsKK6jiXjX.3sMUexmSnQKWxGNeKW15CgBpn3b.xxG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 19:28:30', '2025-03-20 19:28:30'),
(372, 2, 'zBlaCXSl', 'kcouch25400@gmail.com', 'u1742500150', '7X1DXH73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LnIsQTKhqPn9bjyvGQa1.ejlVKGidbNqdKDEnaxwD8eACHVwnnIKC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 19:49:10', '2025-03-20 19:49:10');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `referral_code`, `bio`, `birthdate`, `location`, `website`, `avatar`, `cover`, `email_verified_at`, `identity_verified_at`, `password`, `gender_id`, `gender_pronoun`, `public_profile`, `paid_profile`, `profile_access_price`, `profile_access_price_6_months`, `profile_access_price_3_months`, `profile_access_price_12_months`, `billing_address`, `first_name`, `last_name`, `city`, `country`, `state`, `postcode`, `remember_token`, `auth_provider`, `auth_provider_id`, `stripe_account_id`, `stripe_onboarding_verified`, `enable_2fa`, `enable_geoblocking`, `open_profile`, `country_id`, `settings`, `created_at`, `updated_at`) VALUES
(373, 2, 'iJlGWTicjgDuT', 'guilletphil57@gmail.com', 'u1742500686', '6Q28GNT4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$D/LFOqfgTuGd7yuRK1AZ9.aDLhdKYh502lD4cYfpN2uttWkRXzniC', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 19:58:06', '2025-03-20 19:58:06'),
(374, 2, 'DCxppFpkL', 'mccheeney@gmail.com', 'u1742501414', 'AR2Y0T7N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zh69s/RHyA5.BDG0gu/DEOgXXv.8SYDryvfCWAo.gil1gSzId848y', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 20:10:14', '2025-03-20 20:10:14'),
(375, 2, 'sDvTCWhCDolJ', 'greg.rivera28@gmail.com', 'u1742502794', 'K81YAW85', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$4PycC6g3XYn25ImMD7d0WeAznT5g/8oADfKWfTddIvcmWsazufnTO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 20:33:14', '2025-03-20 20:33:14'),
(376, 2, 'OlxKykDg', '2can007@gmail.com', 'u1742503493', 'YP166361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$urggjjTOnQNgriQghtIVvekhzecZcalmQbouuUtwZgqF4XK3wKsaK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 20:44:53', '2025-03-20 20:44:53'),
(377, 2, 'Shakeel Ahmad', 'shakeel2717@gmail.com', 'u1742503795', 'K71RN856', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Tgs91AO7E8FMH50yqRtSdOqxaao9vLsLESEeQDWve8F.La2XkKP9G', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 20:49:55', '2025-03-20 20:49:55'),
(378, 2, 'XjLQtNDsYFjUFp', 'risha.shehrine.butt@gmail.com', 'u1742504714', 'ACRFN612', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8zqWr.R6JiRPToV3bHicA.62AeAMHlZDtWVzVbVfSEkmXXuPYwjIq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 21:05:14', '2025-03-20 21:05:14'),
(379, 2, 'DmWPjCEdbMVJd', 'hlewis@equisfinancial.com', 'u1742505108', '592AK4E7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$2L96lEMkSLwAbFvyuUjKqOg9skl1i6t6IpnW..W2CZ62J0Lss5oh.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 21:11:48', '2025-03-20 21:11:48'),
(380, 2, 'FpQrJYPWIG', 'cjh72@comcast.net', 'u1742505376', '7G555AC3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$X3/7tnp0D4ik7nSUYv7vYOfTL9LanWnIf047AH30SQmt2lcLtHdba', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 21:16:16', '2025-03-20 21:16:16'),
(381, 2, 'BOdBdKdKKcITL', 'christineparker53@hotmail.co.uk', 'u1742506156', 'P35GQN37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FyMZl5y7idmHf8Cf8sDyH.hU5CJ3GlKhZ7xOyexzRnH6jYda6ZfO6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 21:29:16', '2025-03-20 21:29:16'),
(382, 2, 'rsrjBNEjdO', 'smilingheart74@yahoo.com', 'u1742506194', 'MNMH3GPE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wuPcdxl2.lFBVK/4fFWRcut5f5dfKsrlNcaLwzQrKS3Ds83/4.p9u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 21:29:54', '2025-03-20 21:29:54'),
(383, 2, 'YlEoqMAbgxXJk', 'tawa_@hotmail.com', 'u1742506440', 'RE2W2NVY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OxxnCNgxd3hzB40x5WkJze4UgoPfNkN.7IcTf/Sl3sDwVi3APaSb2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 21:34:00', '2025-03-20 21:34:00'),
(384, 2, 'QHtyzaCYxiwfAaF', 'jtbruce13@gmail.com', 'u1742507181', 'C0GVFHHA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$PwN1ulHeL5627j2bapXkaun5KflU./C.n.q8wW1yjDE8IMtlt7bT6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 21:46:21', '2025-03-20 21:46:21'),
(385, 2, 'wzetTeVdaxyp', 'orders@iceberg.email', 'u1742507767', 'FMQWNPYX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$65pVEz7VgimIrRBKmmfHg.L7UdF//1a741ONVQu2nGamHqzdbOvWG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 21:56:07', '2025-03-20 21:56:07'),
(386, 2, 'kpYgSzxTUITV', 'jeanhart65@gmail.com', 'u1742508762', 'M86YGX24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DFymwgwMiFc8ohBxpZM/L.p/2/ETZVCnFk5WZA2dg/yc9/JQyoeca', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 22:12:42', '2025-03-20 22:12:42'),
(387, 2, 'dCrTwZzN', 'ritchiexavier1@gmail.com', 'u1742509362', '7HPMAMEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QRM0Tu0jik0URHCVHLwgge4i1oL0c4I46Y8pnR7mCrsLFt50qzYd2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 22:22:42', '2025-03-20 22:22:42'),
(388, 2, 'zncpXRsTBBtru', 'char.butterfield@gmail.com', 'u1742509509', 'MPAXF997', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gQUvPPXt/l2OnrSs.wPxx.CzpnsbTAjG67qQ59gWoYYwJea6fOh7a', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 22:25:09', '2025-03-20 22:25:09'),
(389, 2, 'kpDwsjXrl', 'graeme.folks@gmail.com', 'u1742510998', 'AGYE3721', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$aj7bZgxN72A45G/LalECyOk2.kXMxAKa/COBi6pReRdc.t.f6hVWK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 22:49:58', '2025-03-20 22:49:58'),
(390, 2, 'DolwWfab', 'timvoll1986@gmail.com', 'u1742511180', 'AVP8K1FE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$zeHLs5KDwd8KWqNsF09ia.YPSuDG3WAl8gjthEnzn7NBF8YeEOzFi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 22:53:00', '2025-03-20 22:53:00'),
(391, 2, 'WOGsxlymV', 'colinepp@gmail.com', 'u1742511766', '8D1F68EN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$V0GwIsVPs2Eq5btnNvQtVOLI4ZNkN6TJkqNjazLEEX.YI03a/xHgK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 23:02:46', '2025-03-20 23:02:46'),
(392, 2, 'LiajFKdHc', 'gforlife900@gmail.com', 'u1742512225', 'A3R687HX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$OZ1zTqg9hW1q1uK6NevnlORVv/LT2ryV/gCTPjW94FQFqVY2Zpooq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 23:10:25', '2025-03-20 23:10:25'),
(393, 2, 'zaBQoiPpY', 'electricjellybean@gmail.com', 'u1742512972', '98GX1V98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.XZpf2hcVvV/DDOT115zGezj4G.s3jJw/zIiBRlqs.Vggz0wjmbJK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 23:22:52', '2025-03-20 23:22:52'),
(394, 2, 'HPADpMlttTLCsb', 'shingo_ishikawa@hotmail.com', 'u1742513308', 'KXGWCMT4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1FDsvOt85kCO.jF7sAN1duvRD/Al/zidQLtLOPC1g4ukpLSLPq3QO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 23:28:28', '2025-03-20 23:28:28'),
(395, 2, 'XFTpwgqybjplO', 'kendrickbenander@gmail.com', 'u1742514882', 'GV34M0Y5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Hbgg27FlgK.Y1qu7X1yoq.WRjwvDo1dGwpjGFjOYsLasRugG1fiK.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-20 23:54:42', '2025-03-20 23:54:42'),
(396, 2, 'dQPRFqqq', 'mommy913@hotmail.com', 'u1742516119', '5E41WRGF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ld7VBHHNDoJQp65PQC0S/udsPBCcKYAsZRXQ3Q88wDVGW7Bb.HbSe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 00:15:19', '2025-03-21 00:15:19'),
(397, 2, 'DfVIgcXRLxpkB', 'mail.andymcgee@gmail.com', 'u1742516636', 'FA38C9KT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wHc.EQFiMlpg4W7fZcJ1oe93eCu2IFtMxUNneWrmPdx2McfPUGu7u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 00:23:56', '2025-03-21 00:23:56'),
(398, 2, 'igoDnRganC', 'shvanerden+pq@gmail.com', 'u1742519039', 'QG7W1EAY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$KqIrUYtqepEvNkPQEwCMN.dqe9wl48svtgp5zzKKFv3wbocIbioUO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 01:03:59', '2025-03-21 01:03:59'),
(399, 2, 'gaPkroUou', 'a_v_e_22@yahoo.com', 'u1742519538', 'TGYANF0W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qQd6Z1ewi9RBcLqXVUoMGuxavSVesuhXaQ82LjxMWUSAtDvTJ.RIK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 01:12:18', '2025-03-21 01:12:18'),
(400, 2, 'fPsXlaWrEuqbh', 'coltburchianti@outlook.com', 'u1742521375', 'E3YKA924', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AF5NzQVq688BDo1J3HFVBOhXcj1EGihdrDrQzh9KoXUYflXsKGCim', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 01:42:55', '2025-03-21 01:42:55'),
(401, 2, 'fwRhBSSgVS', 'richard93@hotmail.co.uk', 'u1742521909', 'N41KH55G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$N2vNXZZeZR/Qd/9uE3DV2uP09iiJBGlvefCKNPyHmgZ0smxID8hWe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 01:51:49', '2025-03-21 01:51:49'),
(402, 2, 'pgPDMXmLkfmjYK', 'a.s.customs12@gmail.com', 'u1742525662', '7R28NHG8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yOf6x4sW2SDf8UQ0RSPDF.aCqhqD7s6mlhu20N2EyqeFhr/P7otba', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 02:54:22', '2025-03-21 02:54:22'),
(403, 2, 'AWOZVOKM', 'barrym151515@gmail.com', 'u1742525972', '5Y45DM2G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$FC6OMGzR6kogQ/wzjLyvrO4Pg/0WES/.l0oVm1rbaxm3CasxzHT6m', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 02:59:32', '2025-03-21 02:59:32'),
(404, 2, 'womFIQlwL', 'daleauvek2014@gmail.com', 'u1742527211', 'XVN7GARH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wMhZ12v0XorD8oVXPAMPneSJaDUC5/WUtyLcCFnJvqqIZdxBBxWBW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 03:20:12', '2025-03-21 03:20:12'),
(405, 2, 'YPcqcrljhoWk', 'corinne.a.owen@gmail.com', 'u1742529401', 'ACQ9CH34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8ja2AB..OSpuYR4Zlfo7ju2chretYXKxtQTKnt6./821B051p6nZK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 03:56:41', '2025-03-21 03:56:41'),
(406, 2, 'EUGrNsfqlZLgoF', 'soniamaija@hotmail.com', 'u1742531471', '0PXD6PQQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$AVb3h0cq/Rk8K7u4X1NKIemEOo6e2I5g/IVAvqe5Py6TFgUInDmDG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 04:31:11', '2025-03-21 04:31:11'),
(407, 2, 'LpZHcRrFTqRhsBu', 'butch@adamsmobileair.com', 'u1742535343', 'YVA7Y2YE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$HgORmRqb4gP3HLg6opIfTebXyb8VI34XmsacIGF9DywNE4Uy9kQ/W', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 05:35:43', '2025-03-21 05:35:43'),
(408, 2, 'QEwsMACsbLMO', 'bojanfranovic83@gmail.com', 'u1742539370', '3EKVDCM7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$MX6MIf0zmOrbtPFenmvgl.8OxDntQen2qiI18sgYS7h903bnhhPzG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 06:42:51', '2025-03-21 06:42:51'),
(409, 2, 'bscuqGPEJOUpGH', 'thedrexler@gmail.com', 'u1742543508', '76W3XY73', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.lmQR9H0lNB6LT6bfLeSQuQQDQiIC/HzwInpROd8dfqjXwSCw8QPu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 07:51:48', '2025-03-21 07:51:48'),
(410, 2, 'EPrYzNZHFIZ', 'robertasimpson1935@gmail.com', 'u1742547155', '31GGDK21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DmIBH1YSi63Hzt.uvymHKOaVMJW9TZUhklWPbKFNoB7eLLyEfGW.i', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 08:52:35', '2025-03-21 08:52:35'),
(411, 2, 'xGRwQRQEv', 'milanlewis96@gmail.com', 'u1742556883', 'W6PMF4XG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uDcdFh6nnlhWY4wS5xmz0OUmhoMgpk.VUlweOYbw42oIAW7LIcAF.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 11:34:43', '2025-03-21 11:34:43'),
(412, 2, 'Freydis KÃ¡tasdottir', 'fxproductions@proton.me', 'Freydis', 'YQ7124CM', 'I am a professional shemale photo & video model with next to no limits, the more hardcore and perverse, the better  (contact me in complete confidence).  Available to professional & amateur togs.  I also co-run Fantasy X Adult Photo & VIdeo Productions & Sin Sisters Entertainment (Shemale Strippers).', '1978-05-20', 'Wirral', 'https://fantasyxproductions.wixsite.com/adult', 'users/avatar/32afd49b3d844a84960a79fcc98b6290.jpg', 'users/cover/0fe091a2f0614d74a4d543d835cc279c.jpg', '2025-03-21 12:41:47', NULL, '$2y$10$qQdJ8TgsYyrisLNkwkmnEO/846TRif05F7xKAX3t1k5piP68zIlam', 4, 'Whatever', 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 235, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 12:40:50', '2025-03-21 12:50:46'),
(413, 2, 'hDFXGEadzVCqSem', 'jorgecampos.des@gmail.com', 'u1742561331', '7ERA4C1A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$71HKSncL6qBudqaa8UHP8OvAOL5Zkro1wi30t0liQnfFmhOnMUPq2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 12:48:51', '2025-03-21 12:48:51'),
(414, 2, 'hBTCDhcpDHKrb', 'palinidesigns@gmail.com', 'u1742563417', 'GW4FFR0V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xuqo8RkYwfaUK.sdIcBMZ.a8XwZ68Lki1NI8SQ7GUOC0qtnj.3f.u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 13:23:37', '2025-03-21 13:23:37'),
(415, 2, 'sSDnOBvd', 'cathyarakaki@hotmail.com', 'u1742564130', 'RQP51KCE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JXEIA3XJrxUJdEtxvPZUC.H5G5ohKutjaLWkmpwUec.yQJkHXDSla', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 13:35:30', '2025-03-21 13:35:30'),
(416, 2, 'IplWANWycjRU', 'tamwood@hotmail.com', 'u1742564263', 'MN1VDQKV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SA.MQO.P6PVaL7S3BeotO.8zkcEqJtgUCWa6WxvtMQxfvdIbJwYye', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 13:37:43', '2025-03-21 13:37:43'),
(417, 2, 'QLebfEwaOilhn', 'dan.wester@gmail.com', 'u1742566712', '61C472D0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$42DwwRLng3fWbIgBCoG2I.ZboxwUQx3OoiCcb1wICdeXz0.EwzW0W', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 14:18:33', '2025-03-21 14:18:33'),
(418, 2, 'QawArtEM', 'tjproduct@yahoo.com', 'u1742568035', 'E5QCW1VT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DqmiO/hK.e0OlZL0YOHUGOIvga12udpKebr0yUOMgi5Th4UoR0K4i', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 14:40:35', '2025-03-21 14:40:35'),
(419, 2, 'hceUYjlHU', 'marksfriedman@gmail.com', 'u1742570795', 'DWME4DE4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wLcj3wsZCED9oqO1A2WMDOD07sa03B92ppexPnvUlmqHJngrnetYW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 15:26:35', '2025-03-21 15:26:35'),
(420, 2, 'HIPYZFpTxIco', 'rubiomartinezveronica@gmail.com', 'u1742570831', '4PM19K8M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$gMmtveZUFJQDG7.C6g809ufpGL6CXNVK924ZCeLtIHNU6daRfJpxW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 15:27:11', '2025-03-21 15:27:11'),
(421, 2, 'CuKBgcknWDoHmq', 'nationonetrucking@gmail.com', 'u1742571812', '2A48NXDY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iv4P54VUoaZczjj4z0BDIORiY5HDYtDnc3pDzrfSpeemWjUDzBJhe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 15:43:32', '2025-03-21 15:43:32'),
(422, 2, 'VliwdbAXU', '2trangnguyen@gmail.com', 'u1742572102', '8MKE480D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$qFtClq53oXGodjwu5NSnVutMnvYwLO0thlw2BQqoryI1WP5bZwHDa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 15:48:22', '2025-03-21 15:48:22'),
(423, 2, 'ozjlGyLOgn', 'nerwinaguirrez16@gmail.com', 'u1742573440', '1R55V4HG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$phb2FE/v5CAHfUDkK4UKfe./DPW1J2GCp2hHG9iTH6.BKC364MCNK', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 16:10:40', '2025-03-21 16:10:40'),
(424, 2, 'rTsEFOTXs', 'christyanell@yahoo.co.uk', 'u1742576575', 'XWXTX672', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$czQgR4pwmNlAdI8s6IpSI.TyMhEd7wVHZNmZFYIHTRT4nM8SG0.AW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 17:02:55', '2025-03-21 17:02:55'),
(425, 2, 'fQdSzLoGPT', 'robert.crossley@gmail.com', 'u1742583760', 'DFDM3F3M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/kTakEwX2H3GCB26aMyRCu3ihJSwRYPEJTog0gBAqTaexGInRLuWW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 19:02:40', '2025-03-21 19:02:40'),
(426, 2, 'XaHihNoExsddlY', 'awilliams@brightree.com', 'u1742584136', '3QQR7AC1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$NZlO6GJFqICVtqRMWBTcN.9MFflXyEDyh.iHUwDBlSsT.uaKbX2zi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 19:08:56', '2025-03-21 19:08:56'),
(427, 2, 'QdfaTrtVCkReuCr', 'jivalley@comcast.net', 'u1742584328', '7WQKAFAQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$GytvNvIxmAGHdymDufBzje3xGiGKEznRSx.OWsJfSkHgXq72fzeXe', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 19:12:08', '2025-03-21 19:12:08'),
(428, 2, 'rpXguPBOuHyqmxC', 'sahwin08@yahoo.ca', 'u1742584879', 'WHCAHEYR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rxw5VF7q.TZt4rpb3tk2VOcnaeclOUO3ZuM3rgNDPpanjbEo6huEi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 19:21:19', '2025-03-21 19:21:19'),
(429, 2, 'pRjrjEgiaroNuzM', 'james.sussmann@hotmail.com', 'u1742585623', 'NPV0FVKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ki99g65FfRoN6LeytxuvMu8ZU2UOpweXZTEYgC58VvFidX9k3.WqO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 19:33:43', '2025-03-21 19:33:43'),
(430, 2, 'ghhsgTFlkhjEu', 'jess.kubilius@gmail.com', 'u1742586198', '0645KQXA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DRFkUWplVN.l/hOMDn..oeY4Qz4BOLC2e0vjOZM5TP3hvz/QF0UrS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 19:43:18', '2025-03-21 19:43:18'),
(431, 2, 'pqsOmbKLUTbdeL', 'steven.kado@yahoo.com', 'u1742587743', 'AKMAEE88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$WB5wzsHWFyPPs9SR749T5OAGdhKO02Uccn80T1X5PNP5SUcGtDix2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 20:09:03', '2025-03-21 20:09:03'),
(432, 2, 'QrtNfHXY', 'roughstock4@gmail.com', 'u1742588069', '4H70GH65', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Y6t1nyxl2cfjJ/S9.t39c.OsS6HAR7YXmIKSTEWWVbnMIU8Scmdw.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 20:14:29', '2025-03-21 20:14:29'),
(433, 2, 'yqSxEaFjaAxEDi', 'jozee56@gmail.com', 'u1742589411', '6FHKKMMK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$1CRmnW17lVutCddGytZhGu7Iv5lP6YAapjmweYMgFIG2cn6i4BYFi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 20:36:51', '2025-03-21 20:36:51'),
(434, 2, 'SVXepVUWUrLSe', 'jmolinarosado7@gmail.com', 'u1742591750', '7R0P2NX2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$RUMpQVuIG2U5UTHxmydq.eNQQNKX3CL9HKHgniNqhpvIO6EgtuRke', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 21:15:50', '2025-03-21 21:15:50');
INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `username`, `referral_code`, `bio`, `birthdate`, `location`, `website`, `avatar`, `cover`, `email_verified_at`, `identity_verified_at`, `password`, `gender_id`, `gender_pronoun`, `public_profile`, `paid_profile`, `profile_access_price`, `profile_access_price_6_months`, `profile_access_price_3_months`, `profile_access_price_12_months`, `billing_address`, `first_name`, `last_name`, `city`, `country`, `state`, `postcode`, `remember_token`, `auth_provider`, `auth_provider_id`, `stripe_account_id`, `stripe_onboarding_verified`, `enable_2fa`, `enable_geoblocking`, `open_profile`, `country_id`, `settings`, `created_at`, `updated_at`) VALUES
(435, 2, 'cVuJkamRvAk', 'mej@ualberta.ca', 'u1742592996', '5RW4T0F2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/3YOTzWOvmuWfaFroEViyuzD.9hWJrqqHCEBco2.9IHo5jvHwFaAm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 21:36:36', '2025-03-21 21:36:36'),
(436, 2, 'potndPxNKlZi', 'scobaro@gmail.com', 'u1742600011', '5H58H85X', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Cf6Htbqm5IS25IxDE3tJseXbykcQYUcMjpKN9cbIyjQT5ENkz.rGu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 23:33:31', '2025-03-21 23:33:31'),
(437, 2, 'rtIvNufT', 'francisca.gonzalez@lycos.com', 'u1742601125', 'HGKK58R5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9pDCaGB5FneK4uJv.2kfn.a/jKkdMWAU6osBFmp49DB.4aySCSfyO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-21 23:52:05', '2025-03-21 23:52:05'),
(438, 2, 'cyRvMwjReMILbG', 'phil750@suddenlink.net', 'u1742602461', '399R692W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.K/F.9qFO9NaF7Qt67BedueMLtQqEiiMcVliKAkQ.ytMoXGuCjdE.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-22 00:14:21', '2025-03-22 00:14:21'),
(439, 2, 'gvfsLKjYYCPep', 'ratchet1368@gmail.com', 'u1742605198', 'D6FYVRQK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UiWrDu1JcM89ONZUIy9MJeCaSCkXzdJAHOobNeJ5IkeasFQPpJwvm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-22 00:59:58', '2025-03-22 00:59:58'),
(440, 2, 'FyBIzSQpRuS', 'lkjones412@gmail.com', 'u1742605390', 'Y03NGAT3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$iFbJ2ouyqY8qCIORHxXanO3XndJo.dQLWo5pGhe9AT3W9K5UrWhKa', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-22 01:03:10', '2025-03-22 01:03:10'),
(441, 2, 'btTRzFKZ', 'memanana66@aol.com', 'u1742607010', 'YMG0506Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$8IRCSxTylvr2wKLoARkaqeLuzboLY7a63pnr0dLv8IL1l6Kbuj8CS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-22 01:30:10', '2025-03-22 01:30:10'),
(442, 2, 'bJBiNlyVjXPH', 'kimberlyscutt@gmail.com', 'u1742610523', 'YDT2GNV9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SJz.g/.YO9icsc4/qetayOfRmlCF9dGflgT.7c08AxgezSoFtzKja', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-22 02:28:43', '2025-03-22 02:28:43'),
(443, 2, 'TBcRDciebj', 'farzadaghaeepour@gmail.com', 'u1742616173', 'VAEDEW64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.a0kK7ZwZHrGWAUuYCbBZO8U5CmOLI9sytilFPv37xyGUJ4ESFjKu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-22 04:02:53', '2025-03-22 04:02:53'),
(444, 2, 'PwIYfxgGAqmE', 'waldek420@yahoo.com', 'u1742685216', 'VWMDDPRX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vaw9QlGCZIa5ss9SIvBhXu536UadcjaneU4KSmCFYqf9HmZTw9xL.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-22 23:13:36', '2025-03-22 23:13:36'),
(445, 2, 'cSXsOIqe', 'jwelshj2002@yahoo.co.uk', 'u1742735477', 'W6VWNCRG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$.TU.EY4ITfQLYc7p3uYuBOCJiMJeYMU0uxIkeP2va6InJgyhEvaQ.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-23 13:11:17', '2025-03-23 13:11:17'),
(446, 2, 'Mich.Mimi', 'm.arch@hotmail.co.uk', 'u1742755391', '3MTXEFT4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oy3ah9iLZXnUIRuvZbURyuTXT8mP7XOqeBDM/wfSVyM4BMA9EMFWW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-23 18:43:11', '2025-03-23 18:43:11'),
(447, 2, 'Jennifer', 'JenniferFox21@outlook.com', 'u1742769687', 'AAKDGQMT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$br7e/kAupXPB556TR3juxOLODwnd1F5cGrTjVUXJfLI0bDQK1kenG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-23 22:41:27', '2025-03-23 22:41:27'),
(448, 2, 'KnWTDFLbyY', 'jskatell@aol.com', 'u1742772652', '1FY6N2EK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$W6.e70m3UoMAiBoN6eqS0Omay4jDVU3fN2JSKADzOSrVecQ3r1PaO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-23 23:30:52', '2025-03-23 23:30:52'),
(449, 2, 'bGCFrWFjsFf', 'ajeffriesr@yahoo.com', 'u1742813149', '8FHHDM4Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kpoHpelUD8e/l7vKDbJ1C.K4gqnnICLAXFsObS0yCWzNsCYrqWHNW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-24 10:45:49', '2025-03-24 10:45:49'),
(450, 2, 'aXjAprBtSCPD', 'schroeder_adam@yahoo.com', 'u1742841777', '51DFVPXH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hhpdcJ1YdcESFp413ryZ9ui0dbOkJ5y8oNMFD9u6wURG7yDF5bROS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-24 18:42:57', '2025-03-24 18:42:57'),
(451, 2, 'LkAeDIBX', 'gabbykutchma@yahoo.com', 'u1742874634', '4X4T4F8D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$o40dFAZifk9gta6oyZ44u.eODGeLtIZ1Ypevle5JCmlSg1FcYsOxS', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 03:50:34', '2025-03-25 03:50:35'),
(452, 2, 'OJzUkLdLjz', 'glorious757@aol.com', 'u1742892440', 'F94NDC1C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oAVKYMXt9u2MBHzR1bSqe.iXZcqp70zOFcG/u13T.6HnNL0pMwBN2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 08:47:20', '2025-03-25 08:47:20'),
(453, 2, 'DPmwcfstKg', 'fergusonjohn68@yahoo.com', 'u1742893580', '3YNVN92V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ds/Hx7zTMsBExD4Kbv4WN.9w1zxpyoQ6Y3c4nFHA.4.OY01pqIyJy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 09:06:20', '2025-03-25 09:06:20'),
(454, 2, 'XsvfOmnVi', 'carolcoloma@yahoo.com', 'u1742894036', '9CE2E97V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BLT02QGrHYlLLu3nHUB0jOPn3YbdFscaYonBTDmh8o.MewYABG8EG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 09:13:56', '2025-03-25 09:13:56'),
(455, 2, 'ewpWAqhHarskad', 'kwin.lorea@yahoo.com', 'u1742895884', 'KEN54T0R', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$uTcQSbNyjfHR6u6Uk4naAeqVVqZFKd81uG6aFQs/yRxHZAvcSoS3u', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 09:44:44', '2025-03-25 09:44:44'),
(456, 2, 'MnoFZEjmtD', 'mkurtishi@aol.com', 'u1742896284', 'XHD9HT43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hzXmUxsPq.tSIuM9xkjGi.9HbZoOxfccSovJD9zLkuTem2ZEhSVGO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 09:51:24', '2025-03-25 09:51:24'),
(457, 2, 'pkunYhLTxBPydnS', 'villegas0719@yahoo.com', 'u1742912546', '1CAEC113', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UbsPBiKf1frkSCtoqnoKRuIBNzYqdvWeTCQkPvHeioSEFjrI8ffl.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 14:22:26', '2025-03-25 14:22:26'),
(458, 2, 'HnaFUXRoZCiWl', 'chook8790@yahoo.com', 'u1742925341', 'AN124VH2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Q.GYrYPmWSmW0MbFrAft3Om0y1vu6h1ULVDGjE35Lw26sAFmKyCrm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 17:55:41', '2025-03-25 17:55:41'),
(459, 2, 'NNAWnEHryN', 'mariaschiller@yahoo.com', 'u1742929935', '4FH7KMKP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kL9aFhX4Hp.nfundVzzgveGfqRZrKxUX4eji/UuJYIOMQvSWE3l/6', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 19:12:15', '2025-03-25 19:12:15'),
(460, 2, 'aBqiUsYEFssHtNq', 'ackpatel@yahoo.com', 'u1742933156', 'VW5CAWV9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Xw6cQ.Iz.6vBoxer64IUk.H/WbXbxwusubtp.8vKOreGbOP.hVALq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-25 20:05:56', '2025-03-25 20:05:56'),
(461, 2, 'yQQPUnFQxsgME', 'reginald.jackson28@yahoo.com', 'u1742948833', '9KGRAMEE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$VOIg9qv5pPImSSBawS0EjeBJ/5zHpuwHuSEX5BA9.gNn3fqSLZHrW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-26 00:27:13', '2025-03-26 00:27:13'),
(462, 2, 'hnyploeVHUaAzG', 'juanjosegarcia1@yahoo.com', 'u1742962984', '2F7RH4MH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$jGclQ/SIV8T3zd2KNaRxJuZwVrrdF9J6kZA1L5OzRGnbiKx2y00.W', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-26 04:23:04', '2025-03-26 04:23:04'),
(463, 2, 'xyxdWPoZsj', 'istephensh2005@gmail.com', 'u1743028132', '7AAFYDX4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$3P1QaFqpcSwQOMWn9CWIPupzYZSgPJzpOLGPkXKi.eBdvL1PbrVWO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-26 22:28:52', '2025-03-26 22:28:52'),
(464, 2, 'DAVyyDcWpzZu', 'christina_crawford129687@yahoo.com', 'u1743127071', '6PN97KG2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$hESjXNkjVp49nuMtAYbBg.R4Z.0lGIyheB9Va0eNch58E6h/RVKxG', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-28 01:57:52', '2025-03-28 01:57:52'),
(465, 2, 'pfbCEXiJiydsWe', 'hettip17@gmail.com', 'u1743165976', 'QXW6V7CQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$DaCDhUw7oNXkOWwsZ5bJ9OV9X1N6CtgXRvxiVqBG0Xgth6TzFzS.W', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-28 12:46:16', '2025-03-28 12:46:16'),
(466, 2, 'SiQydMueY', 'djorjetcrosska3@gmail.com', 'u1743175855', 'MWNPFM2K', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$UorWRaORH7oaBueEYFD8CONfHZGZVxBYrcDv3yhQ..cQBkg8RDiPW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-28 15:30:55', '2025-03-28 15:30:55'),
(467, 2, 'kKgtTtDqDJAicY', 'diztymewntu_kumar636046@yahoo.com', 'u1743252868', 'VDRT2ATQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$rDgfc5KX61gmI4PXCAkSGue6FzJLAYoLkohegIqD2egGBDscCIrre', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-29 12:54:29', '2025-03-29 12:54:29'),
(468, 2, 'Opdwodowkdwiidwok djwkqdwqofhjqwlsqj jfkmclasdkjfjewlfjkwkdjoiqw fnedkwdkowfwhi jiowjiowhfiwkj rohriowjropwjrofwjrijeiwo tgirlsonly.com', 'nomin.momin+139i6@mail.ru', 'u1743253792', '0W223QVC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9OLsR/y.8y5pUzaR/KbDLekAw3wc8JbhNV5XY.yGEEhIdJIk7tmDO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-29 13:09:53', '2025-03-29 13:09:53'),
(469, 2, 'wBbLbzbHzGobs', 'bindervernon654307@yahoo.com', 'u1743261080', '42MAKQGM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$JNLtpSzEg37N2O8qDXmUZeL0n.xrS486Rq4D4c2D3TP3o5L8She1a', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-29 15:11:20', '2025-03-29 15:11:20'),
(470, 2, 'eyDKmtlxrXK', 'schmidt.juan197102@yahoo.com', 'u1743268397', 'Y02K3336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$ZPJUAXOTOVXDNSB3bUYiXOCZZEQArJSvBWQGsohzGmKGy.bRvGGAy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-29 17:13:17', '2025-03-29 17:13:17'),
(471, 2, 'xnACqxPx', 'jim_archer130198@yahoo.com', 'u1743299945', 'F6H19QMF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$a3l1ABinqY8XjhAcuy8CTOi5mI6sjLfjfdoPWpKuLu1UjfryeRtKW', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-30 01:59:05', '2025-03-30 01:59:05'),
(472, 2, 'dGtmKtzXM', 'hankinspaul52056@yahoo.com', 'u1743315944', 'QT83V8GA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$CsztMNVWX.8Bi2nmX4kRAO24SpeoRMPb.P8WVTgbyPME36dfL2K4C', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-30 06:25:44', '2025-03-30 06:25:44'),
(473, 2, 'AnBZORgLcJJR', 'sarah_anderson824085@yahoo.com', 'u1743346739', '644MTD3D', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$P8jLDVO4PfS68lJFEIoJOe5QK14wHK2njAMda5YWlMnhT1jFypPwO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-30 14:58:59', '2025-03-30 14:58:59'),
(474, 2, 'ftLcwPGQ', 'kristainbxl18@gmail.com', 'u1743371233', 'QEK587GP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BgIFG.JG7eKet3AmJSK38Ozo3j6UQnlSEZ603l4D/tFQ4V/BdzkE.', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-30 21:47:13', '2025-03-30 21:47:13'),
(475, 2, 'XyJzBhzqmNhGJ', 'fernandezindigozt62@gmail.com', 'u1743416463', 'MCH4XQT0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$LIBMvj/r/S.I0hCWUR1mZOWvzL1aclIEmmY7VT0DQC9myJLTvIFfy', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-31 10:21:03', '2025-03-31 10:21:03'),
(476, 2, 'koFVGGTFKhTACVB', 'kkempb40@gmail.com', 'u1743436718', 'GQDV920F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$r.rir.aklo5BgKQpYzZmn.UJDyrcxtbmyByNugouZ/ccazW4WzXLi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-31 15:58:38', '2025-03-31 15:58:38'),
(477, 2, 'XePsafhZOyzrd', 'djeilenfid9@gmail.com', 'u1743440552', '68KGE2RP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$/KWuYB/bKjSiwsVL5JqdMOsYhp4zHVr1/PGHOAkmiHLkLEYpIMh3O', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-03-31 17:02:32', '2025-03-31 17:02:32'),
(478, 2, 'NUcpjgtQHGcKeRp', 'arreguin_susan289371@yahoo.com', 'u1743469678', '2Q96R8GD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$c1SJuLE02pTx7/Q5efD0oe4o3RdkhWao6qCF3nX3weWkc4NkfR1KO', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-04-01 01:07:58', '2025-04-01 01:07:58'),
(479, 2, 'wawIsLTWS', 'jennifer.johnson990020@yahoo.com', 'u1743476554', 'CD66X6N7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$yNznFHp2QC.Dke1dQZZo1.bcMsBmfTow/7wvompYAdY2JhCiz.b66', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-04-01 03:02:34', '2025-04-01 03:02:34'),
(480, 2, 'TwxGpBPQmhdLpky', 'djermeingarciae@gmail.com', 'u1743567444', '62RHGN57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$BhpFtkokr5ilq4L/ApxoYevRboOrvw2otpHiRPPQVP76mavj6A.ju', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-04-02 04:17:24', '2025-04-02 04:17:24'),
(481, 2, 'HYfmxYlqx', 'gardnerchristine527665@yahoo.com', 'u1743586817', '1T1P5MCP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Y5gsE118aE9GIMZI9.2.Teddji8tzrC8KOck0NwfXzuxczuh0phxi', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-04-02 09:40:17', '2025-04-02 09:40:17'),
(482, 2, 'CziLMNMVpKWM', 'brent_varner917827@yahoo.com', 'u1743596985', '7Q3YP6G7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oxJWjB.K9IaRUyJUdOiBB.EJvQj1e.3hhbVBCK9gZYvdi8wNnNPn2', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-04-02 12:29:45', '2025-04-02 12:29:45'),
(483, 2, 'GBOLbMCyXXi', 'melaniemazrieva833725@yahoo.com', 'u1743660857', '506H8FMW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lN53SbjfTofcYqCv1Hpbvui4t9FmDidXJM35J6FtBIy/SRDT8juxq', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-04-03 06:14:17', '2025-04-03 06:14:17'),
(484, 2, 'eWdDrXVsFkmHcm', 'jessica.johnson684550@yahoo.com', 'u1743666565', 'C79A8MFT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Ea37AQtY7WXCOgNvjXOAtuXMmk0A6zrMxYaJ4c4fhPRCFHNTQEhMu', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-04-03 07:49:25', '2025-04-03 07:49:25'),
(485, 2, 'EpSFkwPwIKyIGTs', 'holderrori@gmail.com', 'u1743681820', 'A0KW5N3Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$oIqo.vujWpF9tqhOX77LjuNer50sX0A3KVusX.rvrmzq67Kw66Qcm', NULL, NULL, 1, 1, 5.00, 5, 5.00, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, '{\"notification_email_new_sub\":\"true\",\"notification_email_new_message\":\"false\",\"notification_email_expiring_subs\":\"true\",\"notification_email_renewals\":\"false\",\"notification_email_new_tip\":\"true\",\"notification_email_new_comment\":\"false\",\"notification_email_new_post_created\":\"false\",\"locale\":\"en\",\"notification_email_new_ppv_unlock\":\"true\",\"notification_email_creator_went_live\":\"false\"}', '2025-04-03 12:03:40', '2025-04-03 12:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_bookmarks`
--

CREATE TABLE `user_bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_codes`
--

CREATE TABLE `user_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) NOT NULL,
  `agent` text DEFAULT NULL,
  `signature` varchar(191) NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_devices`
--

INSERT INTO `user_devices` (`id`, `user_id`, `address`, `agent`, `signature`, `verified_at`, `created_at`, `updated_at`) VALUES
(1, 4, '80.194.231.40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 OPR/114.0.0.0 (Edition std-2)', '9ce647c3a495443ca34e5842174574446b5db5f2', '2025-01-03 20:28:17', '2025-01-03 20:28:17', '2025-01-03 20:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_genders`
--

CREATE TABLE `user_genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_genders`
--

INSERT INTO `user_genders` (`id`, `gender_name`, `created_at`, `updated_at`) VALUES
(1, 'Male', NULL, NULL),
(2, 'Female', NULL, NULL),
(3, 'Couple', NULL, NULL),
(4, 'Other', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_lists`
--

CREATE TABLE `user_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'custom',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_lists`
--

INSERT INTO `user_lists` (`id`, `name`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Following', 1, 'following', '2024-12-03 09:36:18', '2024-12-03 09:36:18'),
(2, 'Blocked', 1, 'blocked', '2024-12-03 09:36:18', '2024-12-03 09:36:18'),
(3, 'Following', 2, 'following', '2024-12-05 11:54:31', '2024-12-05 11:54:31'),
(4, 'Blocked', 2, 'blocked', '2024-12-05 11:54:31', '2024-12-05 11:54:31'),
(5, 'Following', 3, 'following', '2024-12-05 14:56:33', '2024-12-05 14:56:33'),
(6, 'Blocked', 3, 'blocked', '2024-12-05 14:56:33', '2024-12-05 14:56:33'),
(7, 'Following', 4, 'following', '2025-01-03 20:13:41', '2025-01-03 20:13:41'),
(8, 'Blocked', 4, 'blocked', '2025-01-03 20:13:41', '2025-01-03 20:13:41'),
(9, 'Following', 5, 'following', '2025-01-11 12:21:16', '2025-01-11 12:21:16'),
(10, 'Blocked', 5, 'blocked', '2025-01-11 12:21:16', '2025-01-11 12:21:16'),
(11, 'Following', 6, 'following', '2025-01-18 22:00:37', '2025-01-18 22:00:37'),
(12, 'Blocked', 6, 'blocked', '2025-01-18 22:00:37', '2025-01-18 22:00:37'),
(13, 'Following', 7, 'following', '2025-01-23 22:15:55', '2025-01-23 22:15:55'),
(14, 'Blocked', 7, 'blocked', '2025-01-23 22:15:55', '2025-01-23 22:15:55'),
(15, 'Following', 8, 'following', '2025-02-02 16:28:48', '2025-02-02 16:28:48'),
(16, 'Blocked', 8, 'blocked', '2025-02-02 16:28:48', '2025-02-02 16:28:48'),
(17, 'Following', 9, 'following', '2025-02-23 23:43:41', '2025-02-23 23:43:41'),
(18, 'Blocked', 9, 'blocked', '2025-02-23 23:43:41', '2025-02-23 23:43:41'),
(19, 'Following', 10, 'following', '2025-02-24 01:31:58', '2025-02-24 01:31:58'),
(20, 'Blocked', 10, 'blocked', '2025-02-24 01:31:58', '2025-02-24 01:31:58'),
(21, 'Following', 11, 'following', '2025-02-24 02:35:48', '2025-02-24 02:35:48'),
(22, 'Blocked', 11, 'blocked', '2025-02-24 02:35:48', '2025-02-24 02:35:48'),
(23, 'Following', 12, 'following', '2025-02-24 02:47:22', '2025-02-24 02:47:22'),
(24, 'Blocked', 12, 'blocked', '2025-02-24 02:47:22', '2025-02-24 02:47:22'),
(25, 'Following', 13, 'following', '2025-02-24 02:49:36', '2025-02-24 02:49:36'),
(26, 'Blocked', 13, 'blocked', '2025-02-24 02:49:36', '2025-02-24 02:49:36'),
(27, 'Following', 14, 'following', '2025-02-24 02:58:26', '2025-02-24 02:58:26'),
(28, 'Blocked', 14, 'blocked', '2025-02-24 02:58:26', '2025-02-24 02:58:26'),
(29, 'Following', 15, 'following', '2025-02-24 03:02:13', '2025-02-24 03:02:13'),
(30, 'Blocked', 15, 'blocked', '2025-02-24 03:02:13', '2025-02-24 03:02:13'),
(31, 'Following', 16, 'following', '2025-02-24 03:21:38', '2025-02-24 03:21:38'),
(32, 'Blocked', 16, 'blocked', '2025-02-24 03:21:38', '2025-02-24 03:21:38'),
(33, 'Following', 17, 'following', '2025-02-24 03:41:42', '2025-02-24 03:41:42'),
(34, 'Blocked', 17, 'blocked', '2025-02-24 03:41:42', '2025-02-24 03:41:42'),
(35, 'Following', 18, 'following', '2025-02-24 03:49:06', '2025-02-24 03:49:06'),
(36, 'Blocked', 18, 'blocked', '2025-02-24 03:49:06', '2025-02-24 03:49:06'),
(37, 'Following', 19, 'following', '2025-02-24 04:03:44', '2025-02-24 04:03:44'),
(38, 'Blocked', 19, 'blocked', '2025-02-24 04:03:44', '2025-02-24 04:03:44'),
(39, 'Following', 20, 'following', '2025-02-24 04:22:50', '2025-02-24 04:22:50'),
(40, 'Blocked', 20, 'blocked', '2025-02-24 04:22:50', '2025-02-24 04:22:50'),
(41, 'Following', 21, 'following', '2025-02-24 04:24:44', '2025-02-24 04:24:44'),
(42, 'Blocked', 21, 'blocked', '2025-02-24 04:24:44', '2025-02-24 04:24:44'),
(43, 'Following', 22, 'following', '2025-02-24 04:27:22', '2025-02-24 04:27:22'),
(44, 'Blocked', 22, 'blocked', '2025-02-24 04:27:22', '2025-02-24 04:27:22'),
(45, 'Following', 23, 'following', '2025-02-24 04:29:37', '2025-02-24 04:29:37'),
(46, 'Blocked', 23, 'blocked', '2025-02-24 04:29:37', '2025-02-24 04:29:37'),
(47, 'Following', 24, 'following', '2025-03-02 01:30:24', '2025-03-02 01:30:24'),
(48, 'Blocked', 24, 'blocked', '2025-03-02 01:30:24', '2025-03-02 01:30:24'),
(49, 'Following', 25, 'following', '2025-03-02 01:52:05', '2025-03-02 01:52:05'),
(50, 'Blocked', 25, 'blocked', '2025-03-02 01:52:05', '2025-03-02 01:52:05'),
(51, 'Following', 26, 'following', '2025-03-02 02:04:38', '2025-03-02 02:04:38'),
(52, 'Blocked', 26, 'blocked', '2025-03-02 02:04:38', '2025-03-02 02:04:38'),
(53, 'Following', 27, 'following', '2025-03-02 02:09:47', '2025-03-02 02:09:47'),
(54, 'Blocked', 27, 'blocked', '2025-03-02 02:09:47', '2025-03-02 02:09:47'),
(55, 'Following', 28, 'following', '2025-03-02 02:26:44', '2025-03-02 02:26:44'),
(56, 'Blocked', 28, 'blocked', '2025-03-02 02:26:44', '2025-03-02 02:26:44'),
(57, 'Following', 29, 'following', '2025-03-02 06:06:06', '2025-03-02 06:06:06'),
(58, 'Blocked', 29, 'blocked', '2025-03-02 06:06:06', '2025-03-02 06:06:06'),
(59, 'Following', 30, 'following', '2025-03-02 06:24:18', '2025-03-02 06:24:18'),
(60, 'Blocked', 30, 'blocked', '2025-03-02 06:24:18', '2025-03-02 06:24:18'),
(61, 'Following', 31, 'following', '2025-03-02 08:09:13', '2025-03-02 08:09:13'),
(62, 'Blocked', 31, 'blocked', '2025-03-02 08:09:13', '2025-03-02 08:09:13'),
(63, 'Following', 32, 'following', '2025-03-02 09:37:01', '2025-03-02 09:37:01'),
(64, 'Blocked', 32, 'blocked', '2025-03-02 09:37:01', '2025-03-02 09:37:01'),
(65, 'Following', 33, 'following', '2025-03-02 10:01:15', '2025-03-02 10:01:15'),
(66, 'Blocked', 33, 'blocked', '2025-03-02 10:01:15', '2025-03-02 10:01:15'),
(67, 'Following', 34, 'following', '2025-03-02 11:30:21', '2025-03-02 11:30:21'),
(68, 'Blocked', 34, 'blocked', '2025-03-02 11:30:21', '2025-03-02 11:30:21'),
(69, 'Following', 35, 'following', '2025-03-02 11:49:56', '2025-03-02 11:49:56'),
(70, 'Blocked', 35, 'blocked', '2025-03-02 11:49:56', '2025-03-02 11:49:56'),
(71, 'Following', 36, 'following', '2025-03-02 14:50:20', '2025-03-02 14:50:20'),
(72, 'Blocked', 36, 'blocked', '2025-03-02 14:50:20', '2025-03-02 14:50:20'),
(73, 'Following', 37, 'following', '2025-03-02 14:51:35', '2025-03-02 14:51:35'),
(74, 'Blocked', 37, 'blocked', '2025-03-02 14:51:35', '2025-03-02 14:51:35'),
(75, 'Following', 38, 'following', '2025-03-02 15:25:30', '2025-03-02 15:25:30'),
(76, 'Blocked', 38, 'blocked', '2025-03-02 15:25:30', '2025-03-02 15:25:30'),
(77, 'Following', 39, 'following', '2025-03-02 16:29:10', '2025-03-02 16:29:10'),
(78, 'Blocked', 39, 'blocked', '2025-03-02 16:29:10', '2025-03-02 16:29:10'),
(79, 'Following', 40, 'following', '2025-03-02 17:51:29', '2025-03-02 17:51:29'),
(80, 'Blocked', 40, 'blocked', '2025-03-02 17:51:29', '2025-03-02 17:51:29'),
(81, 'Following', 41, 'following', '2025-03-02 18:09:28', '2025-03-02 18:09:28'),
(82, 'Blocked', 41, 'blocked', '2025-03-02 18:09:28', '2025-03-02 18:09:28'),
(83, 'Following', 42, 'following', '2025-03-02 18:55:06', '2025-03-02 18:55:06'),
(84, 'Blocked', 42, 'blocked', '2025-03-02 18:55:06', '2025-03-02 18:55:06'),
(85, 'Following', 43, 'following', '2025-03-02 22:24:49', '2025-03-02 22:24:49'),
(86, 'Blocked', 43, 'blocked', '2025-03-02 22:24:49', '2025-03-02 22:24:49'),
(87, 'Following', 44, 'following', '2025-03-02 23:26:52', '2025-03-02 23:26:52'),
(88, 'Blocked', 44, 'blocked', '2025-03-02 23:26:52', '2025-03-02 23:26:52'),
(89, 'Following', 45, 'following', '2025-03-03 02:09:45', '2025-03-03 02:09:45'),
(90, 'Blocked', 45, 'blocked', '2025-03-03 02:09:45', '2025-03-03 02:09:45'),
(91, 'Following', 46, 'following', '2025-03-03 08:07:30', '2025-03-03 08:07:30'),
(92, 'Blocked', 46, 'blocked', '2025-03-03 08:07:30', '2025-03-03 08:07:30'),
(93, 'Following', 47, 'following', '2025-03-03 09:15:20', '2025-03-03 09:15:20'),
(94, 'Blocked', 47, 'blocked', '2025-03-03 09:15:20', '2025-03-03 09:15:20'),
(95, 'Following', 48, 'following', '2025-03-03 10:39:07', '2025-03-03 10:39:07'),
(96, 'Blocked', 48, 'blocked', '2025-03-03 10:39:07', '2025-03-03 10:39:07'),
(97, 'Following', 49, 'following', '2025-03-03 10:44:00', '2025-03-03 10:44:00'),
(98, 'Blocked', 49, 'blocked', '2025-03-03 10:44:00', '2025-03-03 10:44:00'),
(99, 'Following', 50, 'following', '2025-03-03 10:46:29', '2025-03-03 10:46:29'),
(100, 'Blocked', 50, 'blocked', '2025-03-03 10:46:29', '2025-03-03 10:46:29'),
(101, 'Following', 51, 'following', '2025-03-03 11:04:04', '2025-03-03 11:04:04'),
(102, 'Blocked', 51, 'blocked', '2025-03-03 11:04:04', '2025-03-03 11:04:04'),
(103, 'Following', 52, 'following', '2025-03-03 11:09:00', '2025-03-03 11:09:00'),
(104, 'Blocked', 52, 'blocked', '2025-03-03 11:09:00', '2025-03-03 11:09:00'),
(105, 'Following', 53, 'following', '2025-03-03 11:45:32', '2025-03-03 11:45:32'),
(106, 'Blocked', 53, 'blocked', '2025-03-03 11:45:32', '2025-03-03 11:45:32'),
(107, 'Following', 54, 'following', '2025-03-03 12:05:53', '2025-03-03 12:05:53'),
(108, 'Blocked', 54, 'blocked', '2025-03-03 12:05:53', '2025-03-03 12:05:53'),
(109, 'Following', 55, 'following', '2025-03-03 12:07:26', '2025-03-03 12:07:26'),
(110, 'Blocked', 55, 'blocked', '2025-03-03 12:07:26', '2025-03-03 12:07:26'),
(111, 'Following', 56, 'following', '2025-03-03 12:37:18', '2025-03-03 12:37:18'),
(112, 'Blocked', 56, 'blocked', '2025-03-03 12:37:18', '2025-03-03 12:37:18'),
(113, 'Following', 57, 'following', '2025-03-03 13:55:18', '2025-03-03 13:55:18'),
(114, 'Blocked', 57, 'blocked', '2025-03-03 13:55:18', '2025-03-03 13:55:18'),
(115, 'Following', 58, 'following', '2025-03-03 14:07:14', '2025-03-03 14:07:14'),
(116, 'Blocked', 58, 'blocked', '2025-03-03 14:07:14', '2025-03-03 14:07:14'),
(117, 'Following', 59, 'following', '2025-03-03 17:50:37', '2025-03-03 17:50:37'),
(118, 'Blocked', 59, 'blocked', '2025-03-03 17:50:37', '2025-03-03 17:50:37'),
(119, 'Following', 60, 'following', '2025-03-03 19:56:12', '2025-03-03 19:56:12'),
(120, 'Blocked', 60, 'blocked', '2025-03-03 19:56:12', '2025-03-03 19:56:12'),
(121, 'Following', 61, 'following', '2025-03-03 20:32:40', '2025-03-03 20:32:40'),
(122, 'Blocked', 61, 'blocked', '2025-03-03 20:32:40', '2025-03-03 20:32:40'),
(123, 'Following', 62, 'following', '2025-03-03 20:46:38', '2025-03-03 20:46:38'),
(124, 'Blocked', 62, 'blocked', '2025-03-03 20:46:38', '2025-03-03 20:46:38'),
(125, 'Following', 63, 'following', '2025-03-03 21:35:01', '2025-03-03 21:35:01'),
(126, 'Blocked', 63, 'blocked', '2025-03-03 21:35:01', '2025-03-03 21:35:01'),
(127, 'Following', 64, 'following', '2025-03-03 22:19:46', '2025-03-03 22:19:46'),
(128, 'Blocked', 64, 'blocked', '2025-03-03 22:19:46', '2025-03-03 22:19:46'),
(129, 'Following', 65, 'following', '2025-03-03 23:47:13', '2025-03-03 23:47:13'),
(130, 'Blocked', 65, 'blocked', '2025-03-03 23:47:13', '2025-03-03 23:47:13'),
(131, 'Following', 66, 'following', '2025-03-03 23:58:34', '2025-03-03 23:58:34'),
(132, 'Blocked', 66, 'blocked', '2025-03-03 23:58:34', '2025-03-03 23:58:34'),
(133, 'Following', 67, 'following', '2025-03-04 00:36:37', '2025-03-04 00:36:37'),
(134, 'Blocked', 67, 'blocked', '2025-03-04 00:36:37', '2025-03-04 00:36:37'),
(135, 'Following', 68, 'following', '2025-03-04 00:47:05', '2025-03-04 00:47:05'),
(136, 'Blocked', 68, 'blocked', '2025-03-04 00:47:05', '2025-03-04 00:47:05'),
(137, 'Following', 69, 'following', '2025-03-04 00:53:36', '2025-03-04 00:53:36'),
(138, 'Blocked', 69, 'blocked', '2025-03-04 00:53:36', '2025-03-04 00:53:36'),
(139, 'Following', 70, 'following', '2025-03-04 06:32:07', '2025-03-04 06:32:07'),
(140, 'Blocked', 70, 'blocked', '2025-03-04 06:32:07', '2025-03-04 06:32:07'),
(141, 'Following', 71, 'following', '2025-03-04 07:13:33', '2025-03-04 07:13:33'),
(142, 'Blocked', 71, 'blocked', '2025-03-04 07:13:33', '2025-03-04 07:13:33'),
(143, 'Following', 72, 'following', '2025-03-04 07:57:17', '2025-03-04 07:57:17'),
(144, 'Blocked', 72, 'blocked', '2025-03-04 07:57:17', '2025-03-04 07:57:17'),
(145, 'Following', 73, 'following', '2025-03-04 08:37:10', '2025-03-04 08:37:10'),
(146, 'Blocked', 73, 'blocked', '2025-03-04 08:37:10', '2025-03-04 08:37:10'),
(147, 'Following', 74, 'following', '2025-03-04 14:13:42', '2025-03-04 14:13:42'),
(148, 'Blocked', 74, 'blocked', '2025-03-04 14:13:42', '2025-03-04 14:13:42'),
(149, 'Following', 75, 'following', '2025-03-04 15:26:31', '2025-03-04 15:26:31'),
(150, 'Blocked', 75, 'blocked', '2025-03-04 15:26:31', '2025-03-04 15:26:31'),
(151, 'Following', 76, 'following', '2025-03-04 15:55:44', '2025-03-04 15:55:44'),
(152, 'Blocked', 76, 'blocked', '2025-03-04 15:55:44', '2025-03-04 15:55:44'),
(153, 'Following', 77, 'following', '2025-03-04 16:25:39', '2025-03-04 16:25:39'),
(154, 'Blocked', 77, 'blocked', '2025-03-04 16:25:39', '2025-03-04 16:25:39'),
(155, 'Following', 78, 'following', '2025-03-04 17:35:43', '2025-03-04 17:35:43'),
(156, 'Blocked', 78, 'blocked', '2025-03-04 17:35:43', '2025-03-04 17:35:43'),
(157, 'Following', 79, 'following', '2025-03-04 20:45:58', '2025-03-04 20:45:58'),
(158, 'Blocked', 79, 'blocked', '2025-03-04 20:45:58', '2025-03-04 20:45:58'),
(159, 'Following', 80, 'following', '2025-03-05 00:11:26', '2025-03-05 00:11:26'),
(160, 'Blocked', 80, 'blocked', '2025-03-05 00:11:26', '2025-03-05 00:11:26'),
(161, 'Following', 81, 'following', '2025-03-05 03:04:43', '2025-03-05 03:04:43'),
(162, 'Blocked', 81, 'blocked', '2025-03-05 03:04:43', '2025-03-05 03:04:43'),
(163, 'Following', 82, 'following', '2025-03-08 03:30:06', '2025-03-08 03:30:06'),
(164, 'Blocked', 82, 'blocked', '2025-03-08 03:30:06', '2025-03-08 03:30:06'),
(165, 'Following', 83, 'following', '2025-03-11 15:37:27', '2025-03-11 15:37:27'),
(166, 'Blocked', 83, 'blocked', '2025-03-11 15:37:27', '2025-03-11 15:37:27'),
(167, 'Following', 84, 'following', '2025-03-12 19:54:29', '2025-03-12 19:54:29'),
(168, 'Blocked', 84, 'blocked', '2025-03-12 19:54:29', '2025-03-12 19:54:29'),
(169, 'Following', 85, 'following', '2025-03-13 22:56:40', '2025-03-13 22:56:40'),
(170, 'Blocked', 85, 'blocked', '2025-03-13 22:56:40', '2025-03-13 22:56:40'),
(171, 'Following', 86, 'following', '2025-03-14 04:53:05', '2025-03-14 04:53:05'),
(172, 'Blocked', 86, 'blocked', '2025-03-14 04:53:05', '2025-03-14 04:53:05'),
(173, 'Following', 87, 'following', '2025-03-14 12:46:11', '2025-03-14 12:46:11'),
(174, 'Blocked', 87, 'blocked', '2025-03-14 12:46:11', '2025-03-14 12:46:11'),
(175, 'Following', 88, 'following', '2025-03-14 14:25:59', '2025-03-14 14:25:59'),
(176, 'Blocked', 88, 'blocked', '2025-03-14 14:25:59', '2025-03-14 14:25:59'),
(177, 'Following', 89, 'following', '2025-03-14 15:07:27', '2025-03-14 15:07:27'),
(178, 'Blocked', 89, 'blocked', '2025-03-14 15:07:27', '2025-03-14 15:07:27'),
(179, 'Following', 90, 'following', '2025-03-14 16:44:31', '2025-03-14 16:44:31'),
(180, 'Blocked', 90, 'blocked', '2025-03-14 16:44:31', '2025-03-14 16:44:31'),
(181, 'Following', 91, 'following', '2025-03-14 17:46:25', '2025-03-14 17:46:25'),
(182, 'Blocked', 91, 'blocked', '2025-03-14 17:46:25', '2025-03-14 17:46:25'),
(183, 'Following', 92, 'following', '2025-03-14 17:51:20', '2025-03-14 17:51:20'),
(184, 'Blocked', 92, 'blocked', '2025-03-14 17:51:20', '2025-03-14 17:51:20'),
(185, 'Following', 93, 'following', '2025-03-14 19:23:32', '2025-03-14 19:23:32'),
(186, 'Blocked', 93, 'blocked', '2025-03-14 19:23:32', '2025-03-14 19:23:32'),
(187, 'Following', 94, 'following', '2025-03-14 20:11:15', '2025-03-14 20:11:15'),
(188, 'Blocked', 94, 'blocked', '2025-03-14 20:11:15', '2025-03-14 20:11:15'),
(189, 'Following', 95, 'following', '2025-03-14 20:19:49', '2025-03-14 20:19:49'),
(190, 'Blocked', 95, 'blocked', '2025-03-14 20:19:49', '2025-03-14 20:19:49'),
(191, 'Following', 96, 'following', '2025-03-14 20:31:17', '2025-03-14 20:31:17'),
(192, 'Blocked', 96, 'blocked', '2025-03-14 20:31:17', '2025-03-14 20:31:17'),
(193, 'Following', 97, 'following', '2025-03-14 20:48:11', '2025-03-14 20:48:11'),
(194, 'Blocked', 97, 'blocked', '2025-03-14 20:48:11', '2025-03-14 20:48:11'),
(195, 'Following', 98, 'following', '2025-03-14 20:57:52', '2025-03-14 20:57:52'),
(196, 'Blocked', 98, 'blocked', '2025-03-14 20:57:52', '2025-03-14 20:57:52'),
(197, 'Following', 99, 'following', '2025-03-14 21:43:21', '2025-03-14 21:43:21'),
(198, 'Blocked', 99, 'blocked', '2025-03-14 21:43:21', '2025-03-14 21:43:21'),
(199, 'Following', 100, 'following', '2025-03-14 21:58:06', '2025-03-14 21:58:06'),
(200, 'Blocked', 100, 'blocked', '2025-03-14 21:58:06', '2025-03-14 21:58:06'),
(201, 'Following', 101, 'following', '2025-03-14 22:18:09', '2025-03-14 22:18:09'),
(202, 'Blocked', 101, 'blocked', '2025-03-14 22:18:09', '2025-03-14 22:18:09'),
(203, 'Following', 102, 'following', '2025-03-14 22:20:26', '2025-03-14 22:20:26'),
(204, 'Blocked', 102, 'blocked', '2025-03-14 22:20:26', '2025-03-14 22:20:26'),
(205, 'Following', 103, 'following', '2025-03-14 22:34:15', '2025-03-14 22:34:15'),
(206, 'Blocked', 103, 'blocked', '2025-03-14 22:34:15', '2025-03-14 22:34:15'),
(207, 'Following', 104, 'following', '2025-03-14 23:12:07', '2025-03-14 23:12:07'),
(208, 'Blocked', 104, 'blocked', '2025-03-14 23:12:07', '2025-03-14 23:12:07'),
(209, 'Following', 105, 'following', '2025-03-14 23:17:17', '2025-03-14 23:17:17'),
(210, 'Blocked', 105, 'blocked', '2025-03-14 23:17:17', '2025-03-14 23:17:17'),
(211, 'Following', 106, 'following', '2025-03-14 23:31:38', '2025-03-14 23:31:38'),
(212, 'Blocked', 106, 'blocked', '2025-03-14 23:31:38', '2025-03-14 23:31:38'),
(213, 'Following', 107, 'following', '2025-03-14 23:44:23', '2025-03-14 23:44:23'),
(214, 'Blocked', 107, 'blocked', '2025-03-14 23:44:23', '2025-03-14 23:44:23'),
(215, 'Following', 108, 'following', '2025-03-15 00:10:13', '2025-03-15 00:10:13'),
(216, 'Blocked', 108, 'blocked', '2025-03-15 00:10:13', '2025-03-15 00:10:13'),
(217, 'Following', 109, 'following', '2025-03-15 00:54:03', '2025-03-15 00:54:03'),
(218, 'Blocked', 109, 'blocked', '2025-03-15 00:54:03', '2025-03-15 00:54:03'),
(219, 'Following', 110, 'following', '2025-03-15 03:18:10', '2025-03-15 03:18:10'),
(220, 'Blocked', 110, 'blocked', '2025-03-15 03:18:10', '2025-03-15 03:18:10'),
(221, 'Following', 111, 'following', '2025-03-15 05:10:42', '2025-03-15 05:10:42'),
(222, 'Blocked', 111, 'blocked', '2025-03-15 05:10:42', '2025-03-15 05:10:42'),
(223, 'Following', 112, 'following', '2025-03-15 14:56:10', '2025-03-15 14:56:10'),
(224, 'Blocked', 112, 'blocked', '2025-03-15 14:56:10', '2025-03-15 14:56:10'),
(225, 'Following', 113, 'following', '2025-03-15 15:17:58', '2025-03-15 15:17:58'),
(226, 'Blocked', 113, 'blocked', '2025-03-15 15:17:58', '2025-03-15 15:17:58'),
(227, 'Following', 114, 'following', '2025-03-15 15:24:04', '2025-03-15 15:24:04'),
(228, 'Blocked', 114, 'blocked', '2025-03-15 15:24:04', '2025-03-15 15:24:04'),
(229, 'Following', 115, 'following', '2025-03-15 17:29:54', '2025-03-15 17:29:54'),
(230, 'Blocked', 115, 'blocked', '2025-03-15 17:29:54', '2025-03-15 17:29:54'),
(231, 'Following', 116, 'following', '2025-03-15 21:34:43', '2025-03-15 21:34:43'),
(232, 'Blocked', 116, 'blocked', '2025-03-15 21:34:43', '2025-03-15 21:34:43'),
(233, 'Following', 117, 'following', '2025-03-15 22:19:08', '2025-03-15 22:19:08'),
(234, 'Blocked', 117, 'blocked', '2025-03-15 22:19:08', '2025-03-15 22:19:08'),
(235, 'Following', 118, 'following', '2025-03-16 00:38:36', '2025-03-16 00:38:36'),
(236, 'Blocked', 118, 'blocked', '2025-03-16 00:38:36', '2025-03-16 00:38:36'),
(237, 'Following', 119, 'following', '2025-03-16 00:44:48', '2025-03-16 00:44:48'),
(238, 'Blocked', 119, 'blocked', '2025-03-16 00:44:48', '2025-03-16 00:44:48'),
(239, 'Following', 120, 'following', '2025-03-16 02:07:30', '2025-03-16 02:07:30'),
(240, 'Blocked', 120, 'blocked', '2025-03-16 02:07:30', '2025-03-16 02:07:30'),
(241, 'Following', 121, 'following', '2025-03-16 05:11:25', '2025-03-16 05:11:25'),
(242, 'Blocked', 121, 'blocked', '2025-03-16 05:11:25', '2025-03-16 05:11:25'),
(243, 'Following', 122, 'following', '2025-03-16 09:57:44', '2025-03-16 09:57:44'),
(244, 'Blocked', 122, 'blocked', '2025-03-16 09:57:44', '2025-03-16 09:57:44'),
(245, 'Following', 123, 'following', '2025-03-16 10:34:26', '2025-03-16 10:34:26'),
(246, 'Blocked', 123, 'blocked', '2025-03-16 10:34:26', '2025-03-16 10:34:26'),
(247, 'Following', 124, 'following', '2025-03-16 11:20:49', '2025-03-16 11:20:49'),
(248, 'Blocked', 124, 'blocked', '2025-03-16 11:20:49', '2025-03-16 11:20:49'),
(249, 'Following', 125, 'following', '2025-03-16 11:58:03', '2025-03-16 11:58:03'),
(250, 'Blocked', 125, 'blocked', '2025-03-16 11:58:03', '2025-03-16 11:58:03'),
(251, 'Following', 126, 'following', '2025-03-16 12:17:58', '2025-03-16 12:17:58'),
(252, 'Blocked', 126, 'blocked', '2025-03-16 12:17:58', '2025-03-16 12:17:58'),
(253, 'Following', 127, 'following', '2025-03-16 12:29:17', '2025-03-16 12:29:17'),
(254, 'Blocked', 127, 'blocked', '2025-03-16 12:29:17', '2025-03-16 12:29:17'),
(255, 'Following', 128, 'following', '2025-03-16 12:37:50', '2025-03-16 12:37:50'),
(256, 'Blocked', 128, 'blocked', '2025-03-16 12:37:50', '2025-03-16 12:37:50'),
(257, 'Following', 129, 'following', '2025-03-16 12:56:14', '2025-03-16 12:56:14'),
(258, 'Blocked', 129, 'blocked', '2025-03-16 12:56:14', '2025-03-16 12:56:14'),
(259, 'Following', 130, 'following', '2025-03-16 13:01:49', '2025-03-16 13:01:49'),
(260, 'Blocked', 130, 'blocked', '2025-03-16 13:01:49', '2025-03-16 13:01:49'),
(261, 'Following', 131, 'following', '2025-03-16 13:51:14', '2025-03-16 13:51:14'),
(262, 'Blocked', 131, 'blocked', '2025-03-16 13:51:14', '2025-03-16 13:51:14'),
(263, 'Following', 132, 'following', '2025-03-16 14:26:37', '2025-03-16 14:26:37'),
(264, 'Blocked', 132, 'blocked', '2025-03-16 14:26:37', '2025-03-16 14:26:37'),
(265, 'Following', 133, 'following', '2025-03-16 15:41:28', '2025-03-16 15:41:28'),
(266, 'Blocked', 133, 'blocked', '2025-03-16 15:41:28', '2025-03-16 15:41:28'),
(267, 'Following', 134, 'following', '2025-03-16 15:49:10', '2025-03-16 15:49:10'),
(268, 'Blocked', 134, 'blocked', '2025-03-16 15:49:10', '2025-03-16 15:49:10'),
(269, 'Following', 135, 'following', '2025-03-16 18:14:55', '2025-03-16 18:14:55'),
(270, 'Blocked', 135, 'blocked', '2025-03-16 18:14:55', '2025-03-16 18:14:55'),
(271, 'Following', 136, 'following', '2025-03-16 18:57:19', '2025-03-16 18:57:19'),
(272, 'Blocked', 136, 'blocked', '2025-03-16 18:57:19', '2025-03-16 18:57:19'),
(273, 'Following', 137, 'following', '2025-03-16 21:25:39', '2025-03-16 21:25:39'),
(274, 'Blocked', 137, 'blocked', '2025-03-16 21:25:39', '2025-03-16 21:25:39'),
(275, 'Following', 138, 'following', '2025-03-16 21:34:16', '2025-03-16 21:34:16'),
(276, 'Blocked', 138, 'blocked', '2025-03-16 21:34:16', '2025-03-16 21:34:16'),
(277, 'Following', 139, 'following', '2025-03-16 21:57:00', '2025-03-16 21:57:00'),
(278, 'Blocked', 139, 'blocked', '2025-03-16 21:57:00', '2025-03-16 21:57:00'),
(279, 'Following', 140, 'following', '2025-03-16 22:15:19', '2025-03-16 22:15:19'),
(280, 'Blocked', 140, 'blocked', '2025-03-16 22:15:19', '2025-03-16 22:15:19'),
(281, 'Following', 141, 'following', '2025-03-16 22:36:33', '2025-03-16 22:36:33'),
(282, 'Blocked', 141, 'blocked', '2025-03-16 22:36:33', '2025-03-16 22:36:33'),
(283, 'Following', 142, 'following', '2025-03-16 22:48:59', '2025-03-16 22:48:59'),
(284, 'Blocked', 142, 'blocked', '2025-03-16 22:48:59', '2025-03-16 22:48:59'),
(285, 'Following', 143, 'following', '2025-03-17 00:10:20', '2025-03-17 00:10:20'),
(286, 'Blocked', 143, 'blocked', '2025-03-17 00:10:20', '2025-03-17 00:10:20'),
(287, 'Following', 144, 'following', '2025-03-17 02:33:04', '2025-03-17 02:33:04'),
(288, 'Blocked', 144, 'blocked', '2025-03-17 02:33:04', '2025-03-17 02:33:04'),
(289, 'Following', 145, 'following', '2025-03-17 02:41:31', '2025-03-17 02:41:31'),
(290, 'Blocked', 145, 'blocked', '2025-03-17 02:41:31', '2025-03-17 02:41:31'),
(291, 'Following', 146, 'following', '2025-03-17 07:12:47', '2025-03-17 07:12:47'),
(292, 'Blocked', 146, 'blocked', '2025-03-17 07:12:47', '2025-03-17 07:12:47'),
(293, 'Following', 147, 'following', '2025-03-17 07:26:55', '2025-03-17 07:26:55'),
(294, 'Blocked', 147, 'blocked', '2025-03-17 07:26:55', '2025-03-17 07:26:55'),
(295, 'Following', 148, 'following', '2025-03-17 08:47:21', '2025-03-17 08:47:21'),
(296, 'Blocked', 148, 'blocked', '2025-03-17 08:47:21', '2025-03-17 08:47:21'),
(297, 'Following', 149, 'following', '2025-03-17 09:13:11', '2025-03-17 09:13:11'),
(298, 'Blocked', 149, 'blocked', '2025-03-17 09:13:11', '2025-03-17 09:13:11'),
(299, 'Following', 150, 'following', '2025-03-17 09:48:56', '2025-03-17 09:48:56'),
(300, 'Blocked', 150, 'blocked', '2025-03-17 09:48:56', '2025-03-17 09:48:56'),
(301, 'Following', 151, 'following', '2025-03-17 10:17:15', '2025-03-17 10:17:15'),
(302, 'Blocked', 151, 'blocked', '2025-03-17 10:17:15', '2025-03-17 10:17:15'),
(303, 'Following', 152, 'following', '2025-03-17 11:23:44', '2025-03-17 11:23:44'),
(304, 'Blocked', 152, 'blocked', '2025-03-17 11:23:44', '2025-03-17 11:23:44'),
(305, 'Following', 153, 'following', '2025-03-17 12:19:17', '2025-03-17 12:19:17'),
(306, 'Blocked', 153, 'blocked', '2025-03-17 12:19:17', '2025-03-17 12:19:17'),
(307, 'Following', 154, 'following', '2025-03-17 12:27:20', '2025-03-17 12:27:20'),
(308, 'Blocked', 154, 'blocked', '2025-03-17 12:27:20', '2025-03-17 12:27:20'),
(309, 'Following', 155, 'following', '2025-03-17 15:25:35', '2025-03-17 15:25:35'),
(310, 'Blocked', 155, 'blocked', '2025-03-17 15:25:35', '2025-03-17 15:25:35'),
(311, 'Following', 156, 'following', '2025-03-17 15:29:14', '2025-03-17 15:29:14'),
(312, 'Blocked', 156, 'blocked', '2025-03-17 15:29:14', '2025-03-17 15:29:14'),
(313, 'Following', 157, 'following', '2025-03-17 15:37:09', '2025-03-17 15:37:09'),
(314, 'Blocked', 157, 'blocked', '2025-03-17 15:37:09', '2025-03-17 15:37:09'),
(315, 'Following', 158, 'following', '2025-03-17 16:25:32', '2025-03-17 16:25:32'),
(316, 'Blocked', 158, 'blocked', '2025-03-17 16:25:32', '2025-03-17 16:25:32'),
(317, 'Following', 159, 'following', '2025-03-17 17:00:06', '2025-03-17 17:00:06'),
(318, 'Blocked', 159, 'blocked', '2025-03-17 17:00:06', '2025-03-17 17:00:06'),
(319, 'Following', 160, 'following', '2025-03-17 18:01:32', '2025-03-17 18:01:32'),
(320, 'Blocked', 160, 'blocked', '2025-03-17 18:01:32', '2025-03-17 18:01:32'),
(321, 'Following', 161, 'following', '2025-03-17 19:02:41', '2025-03-17 19:02:41'),
(322, 'Blocked', 161, 'blocked', '2025-03-17 19:02:41', '2025-03-17 19:02:41'),
(323, 'Following', 162, 'following', '2025-03-17 19:34:25', '2025-03-17 19:34:25'),
(324, 'Blocked', 162, 'blocked', '2025-03-17 19:34:25', '2025-03-17 19:34:25'),
(325, 'Following', 163, 'following', '2025-03-17 19:35:40', '2025-03-17 19:35:40'),
(326, 'Blocked', 163, 'blocked', '2025-03-17 19:35:40', '2025-03-17 19:35:40'),
(327, 'Following', 164, 'following', '2025-03-17 19:38:01', '2025-03-17 19:38:01'),
(328, 'Blocked', 164, 'blocked', '2025-03-17 19:38:01', '2025-03-17 19:38:01'),
(329, 'Following', 165, 'following', '2025-03-17 19:43:08', '2025-03-17 19:43:08'),
(330, 'Blocked', 165, 'blocked', '2025-03-17 19:43:08', '2025-03-17 19:43:08'),
(331, 'Following', 166, 'following', '2025-03-17 19:44:06', '2025-03-17 19:44:06'),
(332, 'Blocked', 166, 'blocked', '2025-03-17 19:44:06', '2025-03-17 19:44:06'),
(333, 'Following', 167, 'following', '2025-03-17 20:17:11', '2025-03-17 20:17:11'),
(334, 'Blocked', 167, 'blocked', '2025-03-17 20:17:11', '2025-03-17 20:17:11'),
(335, 'Following', 168, 'following', '2025-03-17 20:20:20', '2025-03-17 20:20:20'),
(336, 'Blocked', 168, 'blocked', '2025-03-17 20:20:20', '2025-03-17 20:20:20'),
(337, 'Following', 169, 'following', '2025-03-17 21:43:02', '2025-03-17 21:43:02'),
(338, 'Blocked', 169, 'blocked', '2025-03-17 21:43:02', '2025-03-17 21:43:02'),
(339, 'Following', 170, 'following', '2025-03-17 21:55:14', '2025-03-17 21:55:14'),
(340, 'Blocked', 170, 'blocked', '2025-03-17 21:55:14', '2025-03-17 21:55:14'),
(341, 'Following', 171, 'following', '2025-03-17 22:04:09', '2025-03-17 22:04:09'),
(342, 'Blocked', 171, 'blocked', '2025-03-17 22:04:09', '2025-03-17 22:04:09'),
(343, 'Following', 172, 'following', '2025-03-17 22:16:44', '2025-03-17 22:16:44'),
(344, 'Blocked', 172, 'blocked', '2025-03-17 22:16:44', '2025-03-17 22:16:44'),
(345, 'Following', 173, 'following', '2025-03-17 23:15:14', '2025-03-17 23:15:14'),
(346, 'Blocked', 173, 'blocked', '2025-03-17 23:15:14', '2025-03-17 23:15:14'),
(347, 'Following', 174, 'following', '2025-03-17 23:17:13', '2025-03-17 23:17:13'),
(348, 'Blocked', 174, 'blocked', '2025-03-17 23:17:13', '2025-03-17 23:17:13'),
(349, 'Following', 175, 'following', '2025-03-18 02:08:00', '2025-03-18 02:08:00'),
(350, 'Blocked', 175, 'blocked', '2025-03-18 02:08:00', '2025-03-18 02:08:00'),
(351, 'Following', 176, 'following', '2025-03-18 02:48:02', '2025-03-18 02:48:02'),
(352, 'Blocked', 176, 'blocked', '2025-03-18 02:48:02', '2025-03-18 02:48:02'),
(353, 'Following', 177, 'following', '2025-03-18 03:08:04', '2025-03-18 03:08:04'),
(354, 'Blocked', 177, 'blocked', '2025-03-18 03:08:04', '2025-03-18 03:08:04'),
(355, 'Following', 178, 'following', '2025-03-18 05:05:44', '2025-03-18 05:05:44'),
(356, 'Blocked', 178, 'blocked', '2025-03-18 05:05:44', '2025-03-18 05:05:44'),
(357, 'Following', 179, 'following', '2025-03-18 05:35:08', '2025-03-18 05:35:08'),
(358, 'Blocked', 179, 'blocked', '2025-03-18 05:35:08', '2025-03-18 05:35:08'),
(359, 'Following', 180, 'following', '2025-03-18 06:43:08', '2025-03-18 06:43:08'),
(360, 'Blocked', 180, 'blocked', '2025-03-18 06:43:08', '2025-03-18 06:43:08'),
(361, 'Following', 181, 'following', '2025-03-18 06:52:47', '2025-03-18 06:52:47'),
(362, 'Blocked', 181, 'blocked', '2025-03-18 06:52:47', '2025-03-18 06:52:47'),
(363, 'Following', 182, 'following', '2025-03-18 07:41:54', '2025-03-18 07:41:54'),
(364, 'Blocked', 182, 'blocked', '2025-03-18 07:41:54', '2025-03-18 07:41:54'),
(365, 'Following', 183, 'following', '2025-03-18 09:19:54', '2025-03-18 09:19:54'),
(366, 'Blocked', 183, 'blocked', '2025-03-18 09:19:54', '2025-03-18 09:19:54'),
(367, 'Following', 184, 'following', '2025-03-18 09:51:50', '2025-03-18 09:51:50'),
(368, 'Blocked', 184, 'blocked', '2025-03-18 09:51:50', '2025-03-18 09:51:50'),
(369, 'Following', 185, 'following', '2025-03-18 10:45:57', '2025-03-18 10:45:57'),
(370, 'Blocked', 185, 'blocked', '2025-03-18 10:45:57', '2025-03-18 10:45:57'),
(371, 'Following', 186, 'following', '2025-03-18 10:50:37', '2025-03-18 10:50:37'),
(372, 'Blocked', 186, 'blocked', '2025-03-18 10:50:37', '2025-03-18 10:50:37'),
(373, 'Following', 187, 'following', '2025-03-18 11:21:58', '2025-03-18 11:21:58'),
(374, 'Blocked', 187, 'blocked', '2025-03-18 11:21:58', '2025-03-18 11:21:58'),
(375, 'Following', 188, 'following', '2025-03-18 11:32:56', '2025-03-18 11:32:56'),
(376, 'Blocked', 188, 'blocked', '2025-03-18 11:32:56', '2025-03-18 11:32:56'),
(377, 'Following', 189, 'following', '2025-03-18 11:53:34', '2025-03-18 11:53:34'),
(378, 'Blocked', 189, 'blocked', '2025-03-18 11:53:34', '2025-03-18 11:53:34'),
(379, 'Following', 190, 'following', '2025-03-18 12:17:50', '2025-03-18 12:17:50'),
(380, 'Blocked', 190, 'blocked', '2025-03-18 12:17:50', '2025-03-18 12:17:50'),
(381, 'Following', 191, 'following', '2025-03-18 12:22:57', '2025-03-18 12:22:57'),
(382, 'Blocked', 191, 'blocked', '2025-03-18 12:22:57', '2025-03-18 12:22:57'),
(383, 'Following', 192, 'following', '2025-03-18 12:37:09', '2025-03-18 12:37:09'),
(384, 'Blocked', 192, 'blocked', '2025-03-18 12:37:09', '2025-03-18 12:37:09'),
(385, 'Following', 193, 'following', '2025-03-18 13:02:56', '2025-03-18 13:02:56'),
(386, 'Blocked', 193, 'blocked', '2025-03-18 13:02:56', '2025-03-18 13:02:56'),
(387, 'Following', 194, 'following', '2025-03-18 13:25:39', '2025-03-18 13:25:39'),
(388, 'Blocked', 194, 'blocked', '2025-03-18 13:25:39', '2025-03-18 13:25:39'),
(389, 'Following', 195, 'following', '2025-03-18 13:52:52', '2025-03-18 13:52:52'),
(390, 'Blocked', 195, 'blocked', '2025-03-18 13:52:52', '2025-03-18 13:52:52'),
(391, 'Following', 196, 'following', '2025-03-18 14:33:28', '2025-03-18 14:33:28'),
(392, 'Blocked', 196, 'blocked', '2025-03-18 14:33:28', '2025-03-18 14:33:28'),
(393, 'Following', 197, 'following', '2025-03-18 14:34:13', '2025-03-18 14:34:13'),
(394, 'Blocked', 197, 'blocked', '2025-03-18 14:34:13', '2025-03-18 14:34:13'),
(395, 'Following', 198, 'following', '2025-03-18 15:07:34', '2025-03-18 15:07:34'),
(396, 'Blocked', 198, 'blocked', '2025-03-18 15:07:34', '2025-03-18 15:07:34'),
(397, 'Following', 199, 'following', '2025-03-18 15:09:37', '2025-03-18 15:09:37'),
(398, 'Blocked', 199, 'blocked', '2025-03-18 15:09:37', '2025-03-18 15:09:37'),
(399, 'Following', 200, 'following', '2025-03-18 15:40:11', '2025-03-18 15:40:11'),
(400, 'Blocked', 200, 'blocked', '2025-03-18 15:40:11', '2025-03-18 15:40:11'),
(401, 'Following', 201, 'following', '2025-03-18 15:45:40', '2025-03-18 15:45:40'),
(402, 'Blocked', 201, 'blocked', '2025-03-18 15:45:40', '2025-03-18 15:45:40'),
(403, 'Following', 202, 'following', '2025-03-18 15:49:07', '2025-03-18 15:49:07'),
(404, 'Blocked', 202, 'blocked', '2025-03-18 15:49:07', '2025-03-18 15:49:07'),
(405, 'Following', 203, 'following', '2025-03-18 18:20:14', '2025-03-18 18:20:14'),
(406, 'Blocked', 203, 'blocked', '2025-03-18 18:20:14', '2025-03-18 18:20:14'),
(407, 'Following', 204, 'following', '2025-03-18 18:29:12', '2025-03-18 18:29:12'),
(408, 'Blocked', 204, 'blocked', '2025-03-18 18:29:12', '2025-03-18 18:29:12'),
(409, 'Following', 205, 'following', '2025-03-18 20:09:55', '2025-03-18 20:09:55'),
(410, 'Blocked', 205, 'blocked', '2025-03-18 20:09:55', '2025-03-18 20:09:55'),
(411, 'Following', 206, 'following', '2025-03-18 20:56:10', '2025-03-18 20:56:10'),
(412, 'Blocked', 206, 'blocked', '2025-03-18 20:56:10', '2025-03-18 20:56:10'),
(413, 'Following', 207, 'following', '2025-03-18 20:56:25', '2025-03-18 20:56:25'),
(414, 'Blocked', 207, 'blocked', '2025-03-18 20:56:25', '2025-03-18 20:56:25'),
(415, 'Following', 208, 'following', '2025-03-18 21:14:51', '2025-03-18 21:14:51'),
(416, 'Blocked', 208, 'blocked', '2025-03-18 21:14:51', '2025-03-18 21:14:51'),
(417, 'Following', 209, 'following', '2025-03-18 21:22:39', '2025-03-18 21:22:39'),
(418, 'Blocked', 209, 'blocked', '2025-03-18 21:22:39', '2025-03-18 21:22:39'),
(419, 'Following', 210, 'following', '2025-03-18 21:30:51', '2025-03-18 21:30:51'),
(420, 'Blocked', 210, 'blocked', '2025-03-18 21:30:51', '2025-03-18 21:30:51'),
(421, 'Following', 211, 'following', '2025-03-18 21:37:22', '2025-03-18 21:37:22'),
(422, 'Blocked', 211, 'blocked', '2025-03-18 21:37:22', '2025-03-18 21:37:22'),
(423, 'Following', 212, 'following', '2025-03-18 21:37:59', '2025-03-18 21:37:59'),
(424, 'Blocked', 212, 'blocked', '2025-03-18 21:37:59', '2025-03-18 21:37:59'),
(425, 'Following', 213, 'following', '2025-03-18 21:55:58', '2025-03-18 21:55:58'),
(426, 'Blocked', 213, 'blocked', '2025-03-18 21:55:58', '2025-03-18 21:55:58'),
(427, 'Following', 214, 'following', '2025-03-18 22:15:26', '2025-03-18 22:15:26'),
(428, 'Blocked', 214, 'blocked', '2025-03-18 22:15:26', '2025-03-18 22:15:26'),
(429, 'Following', 215, 'following', '2025-03-18 22:43:29', '2025-03-18 22:43:29'),
(430, 'Blocked', 215, 'blocked', '2025-03-18 22:43:29', '2025-03-18 22:43:29'),
(431, 'Following', 216, 'following', '2025-03-18 23:30:50', '2025-03-18 23:30:50'),
(432, 'Blocked', 216, 'blocked', '2025-03-18 23:30:50', '2025-03-18 23:30:50'),
(433, 'Following', 217, 'following', '2025-03-19 01:14:59', '2025-03-19 01:14:59'),
(434, 'Blocked', 217, 'blocked', '2025-03-19 01:14:59', '2025-03-19 01:14:59'),
(435, 'Following', 218, 'following', '2025-03-19 01:17:00', '2025-03-19 01:17:00'),
(436, 'Blocked', 218, 'blocked', '2025-03-19 01:17:00', '2025-03-19 01:17:00'),
(437, 'Following', 219, 'following', '2025-03-19 01:31:31', '2025-03-19 01:31:31'),
(438, 'Blocked', 219, 'blocked', '2025-03-19 01:31:31', '2025-03-19 01:31:31'),
(439, 'Following', 220, 'following', '2025-03-19 01:53:14', '2025-03-19 01:53:14'),
(440, 'Blocked', 220, 'blocked', '2025-03-19 01:53:14', '2025-03-19 01:53:14'),
(441, 'Following', 221, 'following', '2025-03-19 02:10:11', '2025-03-19 02:10:11'),
(442, 'Blocked', 221, 'blocked', '2025-03-19 02:10:11', '2025-03-19 02:10:11'),
(443, 'Following', 222, 'following', '2025-03-19 03:19:21', '2025-03-19 03:19:21'),
(444, 'Blocked', 222, 'blocked', '2025-03-19 03:19:21', '2025-03-19 03:19:21'),
(445, 'Following', 223, 'following', '2025-03-19 04:17:26', '2025-03-19 04:17:26'),
(446, 'Blocked', 223, 'blocked', '2025-03-19 04:17:26', '2025-03-19 04:17:26'),
(447, 'Following', 224, 'following', '2025-03-19 04:53:36', '2025-03-19 04:53:36'),
(448, 'Blocked', 224, 'blocked', '2025-03-19 04:53:36', '2025-03-19 04:53:36'),
(449, 'Following', 225, 'following', '2025-03-19 05:13:41', '2025-03-19 05:13:41'),
(450, 'Blocked', 225, 'blocked', '2025-03-19 05:13:41', '2025-03-19 05:13:41'),
(451, 'Following', 226, 'following', '2025-03-19 05:18:25', '2025-03-19 05:18:25'),
(452, 'Blocked', 226, 'blocked', '2025-03-19 05:18:25', '2025-03-19 05:18:25'),
(453, 'Following', 227, 'following', '2025-03-19 05:42:28', '2025-03-19 05:42:28'),
(454, 'Blocked', 227, 'blocked', '2025-03-19 05:42:28', '2025-03-19 05:42:28'),
(455, 'Following', 228, 'following', '2025-03-19 08:07:52', '2025-03-19 08:07:52'),
(456, 'Blocked', 228, 'blocked', '2025-03-19 08:07:52', '2025-03-19 08:07:52'),
(457, 'Following', 229, 'following', '2025-03-19 09:04:22', '2025-03-19 09:04:22'),
(458, 'Blocked', 229, 'blocked', '2025-03-19 09:04:22', '2025-03-19 09:04:22'),
(459, 'Following', 230, 'following', '2025-03-19 09:13:05', '2025-03-19 09:13:05'),
(460, 'Blocked', 230, 'blocked', '2025-03-19 09:13:05', '2025-03-19 09:13:05'),
(461, 'Following', 231, 'following', '2025-03-19 09:26:45', '2025-03-19 09:26:45'),
(462, 'Blocked', 231, 'blocked', '2025-03-19 09:26:45', '2025-03-19 09:26:45'),
(463, 'Following', 232, 'following', '2025-03-19 09:31:25', '2025-03-19 09:31:25'),
(464, 'Blocked', 232, 'blocked', '2025-03-19 09:31:25', '2025-03-19 09:31:25'),
(465, 'Following', 233, 'following', '2025-03-19 10:07:34', '2025-03-19 10:07:34'),
(466, 'Blocked', 233, 'blocked', '2025-03-19 10:07:34', '2025-03-19 10:07:34'),
(467, 'Following', 234, 'following', '2025-03-19 10:23:48', '2025-03-19 10:23:48'),
(468, 'Blocked', 234, 'blocked', '2025-03-19 10:23:48', '2025-03-19 10:23:48'),
(469, 'Following', 235, 'following', '2025-03-19 10:36:35', '2025-03-19 10:36:35'),
(470, 'Blocked', 235, 'blocked', '2025-03-19 10:36:35', '2025-03-19 10:36:35'),
(471, 'Following', 236, 'following', '2025-03-19 11:22:10', '2025-03-19 11:22:10'),
(472, 'Blocked', 236, 'blocked', '2025-03-19 11:22:10', '2025-03-19 11:22:10'),
(473, 'Following', 237, 'following', '2025-03-19 11:24:13', '2025-03-19 11:24:13'),
(474, 'Blocked', 237, 'blocked', '2025-03-19 11:24:13', '2025-03-19 11:24:13'),
(475, 'Following', 238, 'following', '2025-03-19 11:45:14', '2025-03-19 11:45:14'),
(476, 'Blocked', 238, 'blocked', '2025-03-19 11:45:14', '2025-03-19 11:45:14'),
(477, 'Following', 239, 'following', '2025-03-19 12:42:48', '2025-03-19 12:42:48'),
(478, 'Blocked', 239, 'blocked', '2025-03-19 12:42:48', '2025-03-19 12:42:48'),
(479, 'Following', 240, 'following', '2025-03-19 12:58:43', '2025-03-19 12:58:43'),
(480, 'Blocked', 240, 'blocked', '2025-03-19 12:58:43', '2025-03-19 12:58:43'),
(481, 'Following', 241, 'following', '2025-03-19 13:02:55', '2025-03-19 13:02:55'),
(482, 'Blocked', 241, 'blocked', '2025-03-19 13:02:55', '2025-03-19 13:02:55'),
(483, 'Following', 242, 'following', '2025-03-19 13:03:15', '2025-03-19 13:03:15'),
(484, 'Blocked', 242, 'blocked', '2025-03-19 13:03:15', '2025-03-19 13:03:15'),
(485, 'Following', 243, 'following', '2025-03-19 13:28:32', '2025-03-19 13:28:32'),
(486, 'Blocked', 243, 'blocked', '2025-03-19 13:28:32', '2025-03-19 13:28:32'),
(487, 'Following', 244, 'following', '2025-03-19 13:55:02', '2025-03-19 13:55:02'),
(488, 'Blocked', 244, 'blocked', '2025-03-19 13:55:02', '2025-03-19 13:55:02'),
(489, 'Following', 245, 'following', '2025-03-19 13:59:44', '2025-03-19 13:59:44'),
(490, 'Blocked', 245, 'blocked', '2025-03-19 13:59:44', '2025-03-19 13:59:44'),
(491, 'Following', 246, 'following', '2025-03-19 14:06:54', '2025-03-19 14:06:54'),
(492, 'Blocked', 246, 'blocked', '2025-03-19 14:06:54', '2025-03-19 14:06:54'),
(493, 'Following', 247, 'following', '2025-03-19 14:12:45', '2025-03-19 14:12:45'),
(494, 'Blocked', 247, 'blocked', '2025-03-19 14:12:45', '2025-03-19 14:12:45'),
(495, 'Following', 248, 'following', '2025-03-19 15:00:28', '2025-03-19 15:00:28'),
(496, 'Blocked', 248, 'blocked', '2025-03-19 15:00:28', '2025-03-19 15:00:28'),
(497, 'Following', 249, 'following', '2025-03-19 15:06:46', '2025-03-19 15:06:46'),
(498, 'Blocked', 249, 'blocked', '2025-03-19 15:06:46', '2025-03-19 15:06:46'),
(499, 'Following', 250, 'following', '2025-03-19 15:15:45', '2025-03-19 15:15:45'),
(500, 'Blocked', 250, 'blocked', '2025-03-19 15:15:45', '2025-03-19 15:15:45'),
(501, 'Following', 251, 'following', '2025-03-19 15:21:29', '2025-03-19 15:21:29'),
(502, 'Blocked', 251, 'blocked', '2025-03-19 15:21:29', '2025-03-19 15:21:29'),
(503, 'Following', 252, 'following', '2025-03-19 15:36:28', '2025-03-19 15:36:28'),
(504, 'Blocked', 252, 'blocked', '2025-03-19 15:36:28', '2025-03-19 15:36:28'),
(505, 'Following', 253, 'following', '2025-03-19 15:45:37', '2025-03-19 15:45:37'),
(506, 'Blocked', 253, 'blocked', '2025-03-19 15:45:37', '2025-03-19 15:45:37'),
(507, 'Following', 254, 'following', '2025-03-19 15:50:16', '2025-03-19 15:50:16'),
(508, 'Blocked', 254, 'blocked', '2025-03-19 15:50:16', '2025-03-19 15:50:16'),
(509, 'Following', 255, 'following', '2025-03-19 16:13:04', '2025-03-19 16:13:04'),
(510, 'Blocked', 255, 'blocked', '2025-03-19 16:13:04', '2025-03-19 16:13:04'),
(511, 'Following', 256, 'following', '2025-03-19 16:20:41', '2025-03-19 16:20:41'),
(512, 'Blocked', 256, 'blocked', '2025-03-19 16:20:41', '2025-03-19 16:20:41'),
(513, 'Following', 257, 'following', '2025-03-19 16:23:28', '2025-03-19 16:23:28'),
(514, 'Blocked', 257, 'blocked', '2025-03-19 16:23:28', '2025-03-19 16:23:28'),
(515, 'Following', 258, 'following', '2025-03-19 16:30:26', '2025-03-19 16:30:26'),
(516, 'Blocked', 258, 'blocked', '2025-03-19 16:30:26', '2025-03-19 16:30:26'),
(517, 'Following', 259, 'following', '2025-03-19 16:55:03', '2025-03-19 16:55:03'),
(518, 'Blocked', 259, 'blocked', '2025-03-19 16:55:03', '2025-03-19 16:55:03'),
(519, 'Following', 260, 'following', '2025-03-19 17:45:15', '2025-03-19 17:45:15'),
(520, 'Blocked', 260, 'blocked', '2025-03-19 17:45:15', '2025-03-19 17:45:15'),
(521, 'Following', 261, 'following', '2025-03-19 17:52:21', '2025-03-19 17:52:21'),
(522, 'Blocked', 261, 'blocked', '2025-03-19 17:52:21', '2025-03-19 17:52:21'),
(523, 'Following', 262, 'following', '2025-03-19 18:12:40', '2025-03-19 18:12:40'),
(524, 'Blocked', 262, 'blocked', '2025-03-19 18:12:40', '2025-03-19 18:12:40'),
(525, 'Following', 263, 'following', '2025-03-19 18:15:51', '2025-03-19 18:15:51'),
(526, 'Blocked', 263, 'blocked', '2025-03-19 18:15:51', '2025-03-19 18:15:51'),
(527, 'Following', 264, 'following', '2025-03-19 18:16:18', '2025-03-19 18:16:18'),
(528, 'Blocked', 264, 'blocked', '2025-03-19 18:16:18', '2025-03-19 18:16:18'),
(529, 'Following', 265, 'following', '2025-03-19 18:17:43', '2025-03-19 18:17:43'),
(530, 'Blocked', 265, 'blocked', '2025-03-19 18:17:43', '2025-03-19 18:17:43'),
(531, 'Following', 266, 'following', '2025-03-19 18:48:22', '2025-03-19 18:48:22'),
(532, 'Blocked', 266, 'blocked', '2025-03-19 18:48:22', '2025-03-19 18:48:22'),
(533, 'Following', 267, 'following', '2025-03-19 18:53:28', '2025-03-19 18:53:28'),
(534, 'Blocked', 267, 'blocked', '2025-03-19 18:53:28', '2025-03-19 18:53:28'),
(535, 'Following', 268, 'following', '2025-03-19 19:00:43', '2025-03-19 19:00:43'),
(536, 'Blocked', 268, 'blocked', '2025-03-19 19:00:43', '2025-03-19 19:00:43'),
(537, 'Following', 269, 'following', '2025-03-19 19:03:21', '2025-03-19 19:03:21'),
(538, 'Blocked', 269, 'blocked', '2025-03-19 19:03:21', '2025-03-19 19:03:21'),
(539, 'Following', 270, 'following', '2025-03-19 19:18:40', '2025-03-19 19:18:40'),
(540, 'Blocked', 270, 'blocked', '2025-03-19 19:18:40', '2025-03-19 19:18:40'),
(541, 'Following', 271, 'following', '2025-03-19 19:19:44', '2025-03-19 19:19:44'),
(542, 'Blocked', 271, 'blocked', '2025-03-19 19:19:44', '2025-03-19 19:19:44'),
(543, 'Following', 272, 'following', '2025-03-19 19:36:55', '2025-03-19 19:36:55'),
(544, 'Blocked', 272, 'blocked', '2025-03-19 19:36:55', '2025-03-19 19:36:55'),
(545, 'Following', 273, 'following', '2025-03-19 19:41:16', '2025-03-19 19:41:16'),
(546, 'Blocked', 273, 'blocked', '2025-03-19 19:41:16', '2025-03-19 19:41:16'),
(547, 'Following', 274, 'following', '2025-03-19 19:48:09', '2025-03-19 19:48:09'),
(548, 'Blocked', 274, 'blocked', '2025-03-19 19:48:09', '2025-03-19 19:48:09'),
(549, 'Following', 275, 'following', '2025-03-19 19:49:10', '2025-03-19 19:49:10'),
(550, 'Blocked', 275, 'blocked', '2025-03-19 19:49:10', '2025-03-19 19:49:10'),
(551, 'Following', 276, 'following', '2025-03-19 19:55:42', '2025-03-19 19:55:42'),
(552, 'Blocked', 276, 'blocked', '2025-03-19 19:55:42', '2025-03-19 19:55:42'),
(553, 'Following', 277, 'following', '2025-03-19 20:04:21', '2025-03-19 20:04:21'),
(554, 'Blocked', 277, 'blocked', '2025-03-19 20:04:21', '2025-03-19 20:04:21'),
(555, 'Following', 278, 'following', '2025-03-19 20:07:01', '2025-03-19 20:07:01'),
(556, 'Blocked', 278, 'blocked', '2025-03-19 20:07:01', '2025-03-19 20:07:01'),
(557, 'Following', 279, 'following', '2025-03-19 20:08:00', '2025-03-19 20:08:00'),
(558, 'Blocked', 279, 'blocked', '2025-03-19 20:08:00', '2025-03-19 20:08:00'),
(559, 'Following', 280, 'following', '2025-03-19 20:11:56', '2025-03-19 20:11:56'),
(560, 'Blocked', 280, 'blocked', '2025-03-19 20:11:56', '2025-03-19 20:11:56'),
(561, 'Following', 281, 'following', '2025-03-19 20:15:55', '2025-03-19 20:15:55'),
(562, 'Blocked', 281, 'blocked', '2025-03-19 20:15:55', '2025-03-19 20:15:55'),
(563, 'Following', 282, 'following', '2025-03-19 20:18:22', '2025-03-19 20:18:22'),
(564, 'Blocked', 282, 'blocked', '2025-03-19 20:18:22', '2025-03-19 20:18:22'),
(565, 'Following', 283, 'following', '2025-03-19 20:22:02', '2025-03-19 20:22:02'),
(566, 'Blocked', 283, 'blocked', '2025-03-19 20:22:02', '2025-03-19 20:22:02'),
(567, 'Following', 284, 'following', '2025-03-19 20:58:47', '2025-03-19 20:58:47'),
(568, 'Blocked', 284, 'blocked', '2025-03-19 20:58:47', '2025-03-19 20:58:47'),
(569, 'Following', 285, 'following', '2025-03-19 21:06:31', '2025-03-19 21:06:31'),
(570, 'Blocked', 285, 'blocked', '2025-03-19 21:06:31', '2025-03-19 21:06:31'),
(571, 'Following', 286, 'following', '2025-03-19 21:07:50', '2025-03-19 21:07:50'),
(572, 'Blocked', 286, 'blocked', '2025-03-19 21:07:50', '2025-03-19 21:07:50'),
(573, 'Following', 287, 'following', '2025-03-19 21:18:46', '2025-03-19 21:18:46'),
(574, 'Blocked', 287, 'blocked', '2025-03-19 21:18:46', '2025-03-19 21:18:46'),
(575, 'Following', 288, 'following', '2025-03-19 21:25:44', '2025-03-19 21:25:44'),
(576, 'Blocked', 288, 'blocked', '2025-03-19 21:25:44', '2025-03-19 21:25:44'),
(577, 'Following', 289, 'following', '2025-03-19 21:27:16', '2025-03-19 21:27:16'),
(578, 'Blocked', 289, 'blocked', '2025-03-19 21:27:16', '2025-03-19 21:27:16'),
(579, 'Following', 290, 'following', '2025-03-19 21:54:18', '2025-03-19 21:54:18'),
(580, 'Blocked', 290, 'blocked', '2025-03-19 21:54:18', '2025-03-19 21:54:18'),
(581, 'Following', 291, 'following', '2025-03-19 22:20:10', '2025-03-19 22:20:10'),
(582, 'Blocked', 291, 'blocked', '2025-03-19 22:20:10', '2025-03-19 22:20:10'),
(583, 'Following', 292, 'following', '2025-03-19 22:37:55', '2025-03-19 22:37:55'),
(584, 'Blocked', 292, 'blocked', '2025-03-19 22:37:55', '2025-03-19 22:37:55'),
(585, 'Following', 293, 'following', '2025-03-19 22:37:56', '2025-03-19 22:37:56'),
(586, 'Blocked', 293, 'blocked', '2025-03-19 22:37:56', '2025-03-19 22:37:56'),
(587, 'Following', 294, 'following', '2025-03-19 22:40:27', '2025-03-19 22:40:27'),
(588, 'Blocked', 294, 'blocked', '2025-03-19 22:40:27', '2025-03-19 22:40:27'),
(589, 'Following', 295, 'following', '2025-03-19 22:41:18', '2025-03-19 22:41:18'),
(590, 'Blocked', 295, 'blocked', '2025-03-19 22:41:18', '2025-03-19 22:41:18'),
(591, 'Following', 296, 'following', '2025-03-19 22:59:46', '2025-03-19 22:59:46'),
(592, 'Blocked', 296, 'blocked', '2025-03-19 22:59:46', '2025-03-19 22:59:46'),
(593, 'Following', 297, 'following', '2025-03-19 23:07:11', '2025-03-19 23:07:11'),
(594, 'Blocked', 297, 'blocked', '2025-03-19 23:07:11', '2025-03-19 23:07:11'),
(595, 'Following', 298, 'following', '2025-03-19 23:15:26', '2025-03-19 23:15:26'),
(596, 'Blocked', 298, 'blocked', '2025-03-19 23:15:26', '2025-03-19 23:15:26'),
(597, 'Following', 299, 'following', '2025-03-19 23:32:30', '2025-03-19 23:32:30'),
(598, 'Blocked', 299, 'blocked', '2025-03-19 23:32:30', '2025-03-19 23:32:30'),
(599, 'Following', 300, 'following', '2025-03-19 23:40:21', '2025-03-19 23:40:21'),
(600, 'Blocked', 300, 'blocked', '2025-03-19 23:40:21', '2025-03-19 23:40:21'),
(601, 'Following', 301, 'following', '2025-03-19 23:51:40', '2025-03-19 23:51:40'),
(602, 'Blocked', 301, 'blocked', '2025-03-19 23:51:40', '2025-03-19 23:51:40'),
(603, 'Following', 302, 'following', '2025-03-19 23:52:51', '2025-03-19 23:52:51'),
(604, 'Blocked', 302, 'blocked', '2025-03-19 23:52:51', '2025-03-19 23:52:51'),
(605, 'Following', 303, 'following', '2025-03-20 00:08:39', '2025-03-20 00:08:39'),
(606, 'Blocked', 303, 'blocked', '2025-03-20 00:08:39', '2025-03-20 00:08:39'),
(607, 'Following', 304, 'following', '2025-03-20 00:24:02', '2025-03-20 00:24:02'),
(608, 'Blocked', 304, 'blocked', '2025-03-20 00:24:02', '2025-03-20 00:24:02'),
(609, 'Following', 305, 'following', '2025-03-20 00:30:33', '2025-03-20 00:30:33'),
(610, 'Blocked', 305, 'blocked', '2025-03-20 00:30:33', '2025-03-20 00:30:33'),
(611, 'Following', 306, 'following', '2025-03-20 01:14:30', '2025-03-20 01:14:30'),
(612, 'Blocked', 306, 'blocked', '2025-03-20 01:14:30', '2025-03-20 01:14:30'),
(613, 'Following', 307, 'following', '2025-03-20 01:23:00', '2025-03-20 01:23:00'),
(614, 'Blocked', 307, 'blocked', '2025-03-20 01:23:00', '2025-03-20 01:23:00'),
(615, 'Following', 308, 'following', '2025-03-20 02:06:31', '2025-03-20 02:06:31'),
(616, 'Blocked', 308, 'blocked', '2025-03-20 02:06:31', '2025-03-20 02:06:31'),
(617, 'Following', 309, 'following', '2025-03-20 02:35:01', '2025-03-20 02:35:01'),
(618, 'Blocked', 309, 'blocked', '2025-03-20 02:35:01', '2025-03-20 02:35:01'),
(619, 'Following', 310, 'following', '2025-03-20 03:36:39', '2025-03-20 03:36:39'),
(620, 'Blocked', 310, 'blocked', '2025-03-20 03:36:39', '2025-03-20 03:36:39'),
(621, 'Following', 311, 'following', '2025-03-20 03:39:49', '2025-03-20 03:39:49'),
(622, 'Blocked', 311, 'blocked', '2025-03-20 03:39:49', '2025-03-20 03:39:49'),
(623, 'Following', 312, 'following', '2025-03-20 03:58:08', '2025-03-20 03:58:08'),
(624, 'Blocked', 312, 'blocked', '2025-03-20 03:58:08', '2025-03-20 03:58:08'),
(625, 'Following', 313, 'following', '2025-03-20 04:48:13', '2025-03-20 04:48:13'),
(626, 'Blocked', 313, 'blocked', '2025-03-20 04:48:13', '2025-03-20 04:48:13'),
(627, 'Following', 314, 'following', '2025-03-20 04:53:28', '2025-03-20 04:53:28');
INSERT INTO `user_lists` (`id`, `name`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(628, 'Blocked', 314, 'blocked', '2025-03-20 04:53:28', '2025-03-20 04:53:28'),
(629, 'Following', 315, 'following', '2025-03-20 05:00:23', '2025-03-20 05:00:23'),
(630, 'Blocked', 315, 'blocked', '2025-03-20 05:00:23', '2025-03-20 05:00:23'),
(631, 'Following', 316, 'following', '2025-03-20 05:59:00', '2025-03-20 05:59:00'),
(632, 'Blocked', 316, 'blocked', '2025-03-20 05:59:00', '2025-03-20 05:59:00'),
(633, 'Following', 317, 'following', '2025-03-20 07:03:44', '2025-03-20 07:03:44'),
(634, 'Blocked', 317, 'blocked', '2025-03-20 07:03:44', '2025-03-20 07:03:44'),
(635, 'Following', 318, 'following', '2025-03-20 07:10:57', '2025-03-20 07:10:57'),
(636, 'Blocked', 318, 'blocked', '2025-03-20 07:10:57', '2025-03-20 07:10:57'),
(637, 'Following', 319, 'following', '2025-03-20 07:13:13', '2025-03-20 07:13:13'),
(638, 'Blocked', 319, 'blocked', '2025-03-20 07:13:13', '2025-03-20 07:13:13'),
(639, 'Following', 320, 'following', '2025-03-20 07:50:58', '2025-03-20 07:50:58'),
(640, 'Blocked', 320, 'blocked', '2025-03-20 07:50:58', '2025-03-20 07:50:58'),
(641, 'Following', 321, 'following', '2025-03-20 08:51:04', '2025-03-20 08:51:04'),
(642, 'Blocked', 321, 'blocked', '2025-03-20 08:51:04', '2025-03-20 08:51:04'),
(643, 'Following', 322, 'following', '2025-03-20 09:07:44', '2025-03-20 09:07:44'),
(644, 'Blocked', 322, 'blocked', '2025-03-20 09:07:44', '2025-03-20 09:07:44'),
(645, 'Following', 323, 'following', '2025-03-20 09:14:48', '2025-03-20 09:14:48'),
(646, 'Blocked', 323, 'blocked', '2025-03-20 09:14:48', '2025-03-20 09:14:48'),
(647, 'Following', 324, 'following', '2025-03-20 09:23:18', '2025-03-20 09:23:18'),
(648, 'Blocked', 324, 'blocked', '2025-03-20 09:23:18', '2025-03-20 09:23:18'),
(649, 'Following', 325, 'following', '2025-03-20 09:31:19', '2025-03-20 09:31:19'),
(650, 'Blocked', 325, 'blocked', '2025-03-20 09:31:19', '2025-03-20 09:31:19'),
(651, 'Following', 326, 'following', '2025-03-20 09:31:24', '2025-03-20 09:31:24'),
(652, 'Blocked', 326, 'blocked', '2025-03-20 09:31:24', '2025-03-20 09:31:24'),
(653, 'Following', 327, 'following', '2025-03-20 10:09:47', '2025-03-20 10:09:47'),
(654, 'Blocked', 327, 'blocked', '2025-03-20 10:09:47', '2025-03-20 10:09:47'),
(655, 'Following', 328, 'following', '2025-03-20 11:16:23', '2025-03-20 11:16:23'),
(656, 'Blocked', 328, 'blocked', '2025-03-20 11:16:23', '2025-03-20 11:16:23'),
(657, 'Following', 329, 'following', '2025-03-20 11:23:26', '2025-03-20 11:23:26'),
(658, 'Blocked', 329, 'blocked', '2025-03-20 11:23:26', '2025-03-20 11:23:26'),
(659, 'Following', 330, 'following', '2025-03-20 11:24:14', '2025-03-20 11:24:14'),
(660, 'Blocked', 330, 'blocked', '2025-03-20 11:24:14', '2025-03-20 11:24:14'),
(661, 'Following', 331, 'following', '2025-03-20 12:53:23', '2025-03-20 12:53:23'),
(662, 'Blocked', 331, 'blocked', '2025-03-20 12:53:23', '2025-03-20 12:53:23'),
(663, 'Following', 332, 'following', '2025-03-20 12:59:20', '2025-03-20 12:59:20'),
(664, 'Blocked', 332, 'blocked', '2025-03-20 12:59:20', '2025-03-20 12:59:20'),
(665, 'Following', 333, 'following', '2025-03-20 13:04:27', '2025-03-20 13:04:27'),
(666, 'Blocked', 333, 'blocked', '2025-03-20 13:04:27', '2025-03-20 13:04:27'),
(667, 'Following', 334, 'following', '2025-03-20 13:28:25', '2025-03-20 13:28:25'),
(668, 'Blocked', 334, 'blocked', '2025-03-20 13:28:25', '2025-03-20 13:28:25'),
(669, 'Following', 335, 'following', '2025-03-20 13:48:53', '2025-03-20 13:48:53'),
(670, 'Blocked', 335, 'blocked', '2025-03-20 13:48:53', '2025-03-20 13:48:53'),
(671, 'Following', 336, 'following', '2025-03-20 13:54:24', '2025-03-20 13:54:24'),
(672, 'Blocked', 336, 'blocked', '2025-03-20 13:54:24', '2025-03-20 13:54:24'),
(673, 'Following', 337, 'following', '2025-03-20 14:00:07', '2025-03-20 14:00:07'),
(674, 'Blocked', 337, 'blocked', '2025-03-20 14:00:07', '2025-03-20 14:00:07'),
(675, 'Following', 338, 'following', '2025-03-20 14:21:38', '2025-03-20 14:21:38'),
(676, 'Blocked', 338, 'blocked', '2025-03-20 14:21:38', '2025-03-20 14:21:38'),
(677, 'Following', 339, 'following', '2025-03-20 14:40:04', '2025-03-20 14:40:04'),
(678, 'Blocked', 339, 'blocked', '2025-03-20 14:40:04', '2025-03-20 14:40:04'),
(679, 'Following', 340, 'following', '2025-03-20 15:26:08', '2025-03-20 15:26:08'),
(680, 'Blocked', 340, 'blocked', '2025-03-20 15:26:08', '2025-03-20 15:26:08'),
(681, 'Following', 341, 'following', '2025-03-20 15:26:32', '2025-03-20 15:26:32'),
(682, 'Blocked', 341, 'blocked', '2025-03-20 15:26:32', '2025-03-20 15:26:32'),
(683, 'Following', 342, 'following', '2025-03-20 15:26:49', '2025-03-20 15:26:49'),
(684, 'Blocked', 342, 'blocked', '2025-03-20 15:26:49', '2025-03-20 15:26:49'),
(685, 'Following', 343, 'following', '2025-03-20 15:40:28', '2025-03-20 15:40:28'),
(686, 'Blocked', 343, 'blocked', '2025-03-20 15:40:28', '2025-03-20 15:40:28'),
(687, 'Following', 344, 'following', '2025-03-20 15:42:06', '2025-03-20 15:42:06'),
(688, 'Blocked', 344, 'blocked', '2025-03-20 15:42:06', '2025-03-20 15:42:06'),
(689, 'Following', 345, 'following', '2025-03-20 15:56:25', '2025-03-20 15:56:25'),
(690, 'Blocked', 345, 'blocked', '2025-03-20 15:56:25', '2025-03-20 15:56:25'),
(691, 'Following', 346, 'following', '2025-03-20 15:57:51', '2025-03-20 15:57:51'),
(692, 'Blocked', 346, 'blocked', '2025-03-20 15:57:51', '2025-03-20 15:57:51'),
(693, 'Following', 347, 'following', '2025-03-20 16:11:03', '2025-03-20 16:11:03'),
(694, 'Blocked', 347, 'blocked', '2025-03-20 16:11:03', '2025-03-20 16:11:03'),
(695, 'Following', 348, 'following', '2025-03-20 16:27:29', '2025-03-20 16:27:29'),
(696, 'Blocked', 348, 'blocked', '2025-03-20 16:27:29', '2025-03-20 16:27:29'),
(697, 'Following', 349, 'following', '2025-03-20 16:28:23', '2025-03-20 16:28:23'),
(698, 'Blocked', 349, 'blocked', '2025-03-20 16:28:23', '2025-03-20 16:28:23'),
(699, 'Following', 350, 'following', '2025-03-20 16:30:30', '2025-03-20 16:30:30'),
(700, 'Blocked', 350, 'blocked', '2025-03-20 16:30:30', '2025-03-20 16:30:30'),
(701, 'Following', 351, 'following', '2025-03-20 16:31:01', '2025-03-20 16:31:01'),
(702, 'Blocked', 351, 'blocked', '2025-03-20 16:31:01', '2025-03-20 16:31:01'),
(703, 'Following', 352, 'following', '2025-03-20 16:35:31', '2025-03-20 16:35:31'),
(704, 'Blocked', 352, 'blocked', '2025-03-20 16:35:31', '2025-03-20 16:35:31'),
(705, 'Following', 353, 'following', '2025-03-20 16:46:33', '2025-03-20 16:46:33'),
(706, 'Blocked', 353, 'blocked', '2025-03-20 16:46:33', '2025-03-20 16:46:33'),
(707, 'Following', 354, 'following', '2025-03-20 17:02:36', '2025-03-20 17:02:36'),
(708, 'Blocked', 354, 'blocked', '2025-03-20 17:02:36', '2025-03-20 17:02:36'),
(709, 'Following', 355, 'following', '2025-03-20 17:08:39', '2025-03-20 17:08:39'),
(710, 'Blocked', 355, 'blocked', '2025-03-20 17:08:39', '2025-03-20 17:08:39'),
(711, 'Following', 356, 'following', '2025-03-20 17:46:55', '2025-03-20 17:46:55'),
(712, 'Blocked', 356, 'blocked', '2025-03-20 17:46:55', '2025-03-20 17:46:55'),
(713, 'Following', 357, 'following', '2025-03-20 17:51:23', '2025-03-20 17:51:23'),
(714, 'Blocked', 357, 'blocked', '2025-03-20 17:51:23', '2025-03-20 17:51:23'),
(715, 'Following', 358, 'following', '2025-03-20 17:58:12', '2025-03-20 17:58:12'),
(716, 'Blocked', 358, 'blocked', '2025-03-20 17:58:12', '2025-03-20 17:58:12'),
(717, 'Following', 359, 'following', '2025-03-20 18:04:33', '2025-03-20 18:04:33'),
(718, 'Blocked', 359, 'blocked', '2025-03-20 18:04:33', '2025-03-20 18:04:33'),
(719, 'Following', 360, 'following', '2025-03-20 18:08:40', '2025-03-20 18:08:40'),
(720, 'Blocked', 360, 'blocked', '2025-03-20 18:08:40', '2025-03-20 18:08:40'),
(721, 'Following', 361, 'following', '2025-03-20 18:14:24', '2025-03-20 18:14:24'),
(722, 'Blocked', 361, 'blocked', '2025-03-20 18:14:24', '2025-03-20 18:14:24'),
(723, 'Following', 362, 'following', '2025-03-20 18:29:39', '2025-03-20 18:29:39'),
(724, 'Blocked', 362, 'blocked', '2025-03-20 18:29:39', '2025-03-20 18:29:39'),
(725, 'Following', 363, 'following', '2025-03-20 18:48:09', '2025-03-20 18:48:09'),
(726, 'Blocked', 363, 'blocked', '2025-03-20 18:48:09', '2025-03-20 18:48:09'),
(727, 'Following', 364, 'following', '2025-03-20 18:49:06', '2025-03-20 18:49:06'),
(728, 'Blocked', 364, 'blocked', '2025-03-20 18:49:06', '2025-03-20 18:49:06'),
(729, 'Following', 365, 'following', '2025-03-20 18:58:32', '2025-03-20 18:58:32'),
(730, 'Blocked', 365, 'blocked', '2025-03-20 18:58:32', '2025-03-20 18:58:32'),
(731, 'Following', 366, 'following', '2025-03-20 19:05:59', '2025-03-20 19:05:59'),
(732, 'Blocked', 366, 'blocked', '2025-03-20 19:05:59', '2025-03-20 19:05:59'),
(733, 'Following', 367, 'following', '2025-03-20 19:08:18', '2025-03-20 19:08:18'),
(734, 'Blocked', 367, 'blocked', '2025-03-20 19:08:18', '2025-03-20 19:08:18'),
(735, 'Following', 368, 'following', '2025-03-20 19:09:02', '2025-03-20 19:09:02'),
(736, 'Blocked', 368, 'blocked', '2025-03-20 19:09:02', '2025-03-20 19:09:02'),
(737, 'Following', 369, 'following', '2025-03-20 19:17:36', '2025-03-20 19:17:36'),
(738, 'Blocked', 369, 'blocked', '2025-03-20 19:17:36', '2025-03-20 19:17:36'),
(739, 'Following', 370, 'following', '2025-03-20 19:27:58', '2025-03-20 19:27:58'),
(740, 'Blocked', 370, 'blocked', '2025-03-20 19:27:58', '2025-03-20 19:27:58'),
(741, 'Following', 371, 'following', '2025-03-20 19:28:30', '2025-03-20 19:28:30'),
(742, 'Blocked', 371, 'blocked', '2025-03-20 19:28:30', '2025-03-20 19:28:30'),
(743, 'Following', 372, 'following', '2025-03-20 19:49:10', '2025-03-20 19:49:10'),
(744, 'Blocked', 372, 'blocked', '2025-03-20 19:49:10', '2025-03-20 19:49:10'),
(745, 'Following', 373, 'following', '2025-03-20 19:58:06', '2025-03-20 19:58:06'),
(746, 'Blocked', 373, 'blocked', '2025-03-20 19:58:06', '2025-03-20 19:58:06'),
(747, 'Following', 374, 'following', '2025-03-20 20:10:14', '2025-03-20 20:10:14'),
(748, 'Blocked', 374, 'blocked', '2025-03-20 20:10:14', '2025-03-20 20:10:14'),
(749, 'Following', 375, 'following', '2025-03-20 20:33:14', '2025-03-20 20:33:14'),
(750, 'Blocked', 375, 'blocked', '2025-03-20 20:33:14', '2025-03-20 20:33:14'),
(751, 'Following', 376, 'following', '2025-03-20 20:44:53', '2025-03-20 20:44:53'),
(752, 'Blocked', 376, 'blocked', '2025-03-20 20:44:53', '2025-03-20 20:44:53'),
(753, 'Following', 377, 'following', '2025-03-20 20:49:55', '2025-03-20 20:49:55'),
(754, 'Blocked', 377, 'blocked', '2025-03-20 20:49:55', '2025-03-20 20:49:55'),
(755, 'Following', 378, 'following', '2025-03-20 21:05:14', '2025-03-20 21:05:14'),
(756, 'Blocked', 378, 'blocked', '2025-03-20 21:05:14', '2025-03-20 21:05:14'),
(757, 'Following', 379, 'following', '2025-03-20 21:11:48', '2025-03-20 21:11:48'),
(758, 'Blocked', 379, 'blocked', '2025-03-20 21:11:48', '2025-03-20 21:11:48'),
(759, 'Following', 380, 'following', '2025-03-20 21:16:16', '2025-03-20 21:16:16'),
(760, 'Blocked', 380, 'blocked', '2025-03-20 21:16:16', '2025-03-20 21:16:16'),
(761, 'Following', 381, 'following', '2025-03-20 21:29:16', '2025-03-20 21:29:16'),
(762, 'Blocked', 381, 'blocked', '2025-03-20 21:29:16', '2025-03-20 21:29:16'),
(763, 'Following', 382, 'following', '2025-03-20 21:29:54', '2025-03-20 21:29:54'),
(764, 'Blocked', 382, 'blocked', '2025-03-20 21:29:54', '2025-03-20 21:29:54'),
(765, 'Following', 383, 'following', '2025-03-20 21:34:00', '2025-03-20 21:34:00'),
(766, 'Blocked', 383, 'blocked', '2025-03-20 21:34:00', '2025-03-20 21:34:00'),
(767, 'Following', 384, 'following', '2025-03-20 21:46:21', '2025-03-20 21:46:21'),
(768, 'Blocked', 384, 'blocked', '2025-03-20 21:46:21', '2025-03-20 21:46:21'),
(769, 'Following', 385, 'following', '2025-03-20 21:56:07', '2025-03-20 21:56:07'),
(770, 'Blocked', 385, 'blocked', '2025-03-20 21:56:07', '2025-03-20 21:56:07'),
(771, 'Following', 386, 'following', '2025-03-20 22:12:42', '2025-03-20 22:12:42'),
(772, 'Blocked', 386, 'blocked', '2025-03-20 22:12:42', '2025-03-20 22:12:42'),
(773, 'Following', 387, 'following', '2025-03-20 22:22:42', '2025-03-20 22:22:42'),
(774, 'Blocked', 387, 'blocked', '2025-03-20 22:22:42', '2025-03-20 22:22:42'),
(775, 'Following', 388, 'following', '2025-03-20 22:25:09', '2025-03-20 22:25:09'),
(776, 'Blocked', 388, 'blocked', '2025-03-20 22:25:09', '2025-03-20 22:25:09'),
(777, 'Following', 389, 'following', '2025-03-20 22:49:58', '2025-03-20 22:49:58'),
(778, 'Blocked', 389, 'blocked', '2025-03-20 22:49:58', '2025-03-20 22:49:58'),
(779, 'Following', 390, 'following', '2025-03-20 22:53:00', '2025-03-20 22:53:00'),
(780, 'Blocked', 390, 'blocked', '2025-03-20 22:53:00', '2025-03-20 22:53:00'),
(781, 'Following', 391, 'following', '2025-03-20 23:02:46', '2025-03-20 23:02:46'),
(782, 'Blocked', 391, 'blocked', '2025-03-20 23:02:46', '2025-03-20 23:02:46'),
(783, 'Following', 392, 'following', '2025-03-20 23:10:25', '2025-03-20 23:10:25'),
(784, 'Blocked', 392, 'blocked', '2025-03-20 23:10:25', '2025-03-20 23:10:25'),
(785, 'Following', 393, 'following', '2025-03-20 23:22:52', '2025-03-20 23:22:52'),
(786, 'Blocked', 393, 'blocked', '2025-03-20 23:22:52', '2025-03-20 23:22:52'),
(787, 'Following', 394, 'following', '2025-03-20 23:28:28', '2025-03-20 23:28:28'),
(788, 'Blocked', 394, 'blocked', '2025-03-20 23:28:28', '2025-03-20 23:28:28'),
(789, 'Following', 395, 'following', '2025-03-20 23:54:42', '2025-03-20 23:54:42'),
(790, 'Blocked', 395, 'blocked', '2025-03-20 23:54:42', '2025-03-20 23:54:42'),
(791, 'Following', 396, 'following', '2025-03-21 00:15:19', '2025-03-21 00:15:19'),
(792, 'Blocked', 396, 'blocked', '2025-03-21 00:15:19', '2025-03-21 00:15:19'),
(793, 'Following', 397, 'following', '2025-03-21 00:23:56', '2025-03-21 00:23:56'),
(794, 'Blocked', 397, 'blocked', '2025-03-21 00:23:56', '2025-03-21 00:23:56'),
(795, 'Following', 398, 'following', '2025-03-21 01:03:59', '2025-03-21 01:03:59'),
(796, 'Blocked', 398, 'blocked', '2025-03-21 01:03:59', '2025-03-21 01:03:59'),
(797, 'Following', 399, 'following', '2025-03-21 01:12:18', '2025-03-21 01:12:18'),
(798, 'Blocked', 399, 'blocked', '2025-03-21 01:12:18', '2025-03-21 01:12:18'),
(799, 'Following', 400, 'following', '2025-03-21 01:42:55', '2025-03-21 01:42:55'),
(800, 'Blocked', 400, 'blocked', '2025-03-21 01:42:55', '2025-03-21 01:42:55'),
(801, 'Following', 401, 'following', '2025-03-21 01:51:49', '2025-03-21 01:51:49'),
(802, 'Blocked', 401, 'blocked', '2025-03-21 01:51:49', '2025-03-21 01:51:49'),
(803, 'Following', 402, 'following', '2025-03-21 02:54:22', '2025-03-21 02:54:22'),
(804, 'Blocked', 402, 'blocked', '2025-03-21 02:54:22', '2025-03-21 02:54:22'),
(805, 'Following', 403, 'following', '2025-03-21 02:59:32', '2025-03-21 02:59:32'),
(806, 'Blocked', 403, 'blocked', '2025-03-21 02:59:32', '2025-03-21 02:59:32'),
(807, 'Following', 404, 'following', '2025-03-21 03:20:12', '2025-03-21 03:20:12'),
(808, 'Blocked', 404, 'blocked', '2025-03-21 03:20:12', '2025-03-21 03:20:12'),
(809, 'Following', 405, 'following', '2025-03-21 03:56:41', '2025-03-21 03:56:41'),
(810, 'Blocked', 405, 'blocked', '2025-03-21 03:56:41', '2025-03-21 03:56:41'),
(811, 'Following', 406, 'following', '2025-03-21 04:31:11', '2025-03-21 04:31:11'),
(812, 'Blocked', 406, 'blocked', '2025-03-21 04:31:11', '2025-03-21 04:31:11'),
(813, 'Following', 407, 'following', '2025-03-21 05:35:43', '2025-03-21 05:35:43'),
(814, 'Blocked', 407, 'blocked', '2025-03-21 05:35:43', '2025-03-21 05:35:43'),
(815, 'Following', 408, 'following', '2025-03-21 06:42:51', '2025-03-21 06:42:51'),
(816, 'Blocked', 408, 'blocked', '2025-03-21 06:42:51', '2025-03-21 06:42:51'),
(817, 'Following', 409, 'following', '2025-03-21 07:51:48', '2025-03-21 07:51:48'),
(818, 'Blocked', 409, 'blocked', '2025-03-21 07:51:48', '2025-03-21 07:51:48'),
(819, 'Following', 410, 'following', '2025-03-21 08:52:35', '2025-03-21 08:52:35'),
(820, 'Blocked', 410, 'blocked', '2025-03-21 08:52:35', '2025-03-21 08:52:35'),
(821, 'Following', 411, 'following', '2025-03-21 11:34:43', '2025-03-21 11:34:43'),
(822, 'Blocked', 411, 'blocked', '2025-03-21 11:34:43', '2025-03-21 11:34:43'),
(823, 'Following', 412, 'following', '2025-03-21 12:40:50', '2025-03-21 12:40:50'),
(824, 'Blocked', 412, 'blocked', '2025-03-21 12:40:50', '2025-03-21 12:40:50'),
(825, 'Following', 413, 'following', '2025-03-21 12:48:51', '2025-03-21 12:48:51'),
(826, 'Blocked', 413, 'blocked', '2025-03-21 12:48:51', '2025-03-21 12:48:51'),
(827, 'Following', 414, 'following', '2025-03-21 13:23:37', '2025-03-21 13:23:37'),
(828, 'Blocked', 414, 'blocked', '2025-03-21 13:23:37', '2025-03-21 13:23:37'),
(829, 'Following', 415, 'following', '2025-03-21 13:35:30', '2025-03-21 13:35:30'),
(830, 'Blocked', 415, 'blocked', '2025-03-21 13:35:30', '2025-03-21 13:35:30'),
(831, 'Following', 416, 'following', '2025-03-21 13:37:43', '2025-03-21 13:37:43'),
(832, 'Blocked', 416, 'blocked', '2025-03-21 13:37:43', '2025-03-21 13:37:43'),
(833, 'Following', 417, 'following', '2025-03-21 14:18:33', '2025-03-21 14:18:33'),
(834, 'Blocked', 417, 'blocked', '2025-03-21 14:18:33', '2025-03-21 14:18:33'),
(835, 'Following', 418, 'following', '2025-03-21 14:40:35', '2025-03-21 14:40:35'),
(836, 'Blocked', 418, 'blocked', '2025-03-21 14:40:35', '2025-03-21 14:40:35'),
(837, 'Following', 419, 'following', '2025-03-21 15:26:35', '2025-03-21 15:26:35'),
(838, 'Blocked', 419, 'blocked', '2025-03-21 15:26:35', '2025-03-21 15:26:35'),
(839, 'Following', 420, 'following', '2025-03-21 15:27:11', '2025-03-21 15:27:11'),
(840, 'Blocked', 420, 'blocked', '2025-03-21 15:27:11', '2025-03-21 15:27:11'),
(841, 'Following', 421, 'following', '2025-03-21 15:43:32', '2025-03-21 15:43:32'),
(842, 'Blocked', 421, 'blocked', '2025-03-21 15:43:32', '2025-03-21 15:43:32'),
(843, 'Following', 422, 'following', '2025-03-21 15:48:22', '2025-03-21 15:48:22'),
(844, 'Blocked', 422, 'blocked', '2025-03-21 15:48:22', '2025-03-21 15:48:22'),
(845, 'Following', 423, 'following', '2025-03-21 16:10:40', '2025-03-21 16:10:40'),
(846, 'Blocked', 423, 'blocked', '2025-03-21 16:10:40', '2025-03-21 16:10:40'),
(847, 'Following', 424, 'following', '2025-03-21 17:02:55', '2025-03-21 17:02:55'),
(848, 'Blocked', 424, 'blocked', '2025-03-21 17:02:55', '2025-03-21 17:02:55'),
(849, 'Following', 425, 'following', '2025-03-21 19:02:40', '2025-03-21 19:02:40'),
(850, 'Blocked', 425, 'blocked', '2025-03-21 19:02:40', '2025-03-21 19:02:40'),
(851, 'Following', 426, 'following', '2025-03-21 19:08:56', '2025-03-21 19:08:56'),
(852, 'Blocked', 426, 'blocked', '2025-03-21 19:08:56', '2025-03-21 19:08:56'),
(853, 'Following', 427, 'following', '2025-03-21 19:12:08', '2025-03-21 19:12:08'),
(854, 'Blocked', 427, 'blocked', '2025-03-21 19:12:08', '2025-03-21 19:12:08'),
(855, 'Following', 428, 'following', '2025-03-21 19:21:19', '2025-03-21 19:21:19'),
(856, 'Blocked', 428, 'blocked', '2025-03-21 19:21:19', '2025-03-21 19:21:19'),
(857, 'Following', 429, 'following', '2025-03-21 19:33:43', '2025-03-21 19:33:43'),
(858, 'Blocked', 429, 'blocked', '2025-03-21 19:33:43', '2025-03-21 19:33:43'),
(859, 'Following', 430, 'following', '2025-03-21 19:43:18', '2025-03-21 19:43:18'),
(860, 'Blocked', 430, 'blocked', '2025-03-21 19:43:18', '2025-03-21 19:43:18'),
(861, 'Following', 431, 'following', '2025-03-21 20:09:03', '2025-03-21 20:09:03'),
(862, 'Blocked', 431, 'blocked', '2025-03-21 20:09:03', '2025-03-21 20:09:03'),
(863, 'Following', 432, 'following', '2025-03-21 20:14:29', '2025-03-21 20:14:29'),
(864, 'Blocked', 432, 'blocked', '2025-03-21 20:14:29', '2025-03-21 20:14:29'),
(865, 'Following', 433, 'following', '2025-03-21 20:36:51', '2025-03-21 20:36:51'),
(866, 'Blocked', 433, 'blocked', '2025-03-21 20:36:51', '2025-03-21 20:36:51'),
(867, 'Following', 434, 'following', '2025-03-21 21:15:50', '2025-03-21 21:15:50'),
(868, 'Blocked', 434, 'blocked', '2025-03-21 21:15:50', '2025-03-21 21:15:50'),
(869, 'Following', 435, 'following', '2025-03-21 21:36:36', '2025-03-21 21:36:36'),
(870, 'Blocked', 435, 'blocked', '2025-03-21 21:36:36', '2025-03-21 21:36:36'),
(871, 'Following', 436, 'following', '2025-03-21 23:33:31', '2025-03-21 23:33:31'),
(872, 'Blocked', 436, 'blocked', '2025-03-21 23:33:31', '2025-03-21 23:33:31'),
(873, 'Following', 437, 'following', '2025-03-21 23:52:05', '2025-03-21 23:52:05'),
(874, 'Blocked', 437, 'blocked', '2025-03-21 23:52:05', '2025-03-21 23:52:05'),
(875, 'Following', 438, 'following', '2025-03-22 00:14:21', '2025-03-22 00:14:21'),
(876, 'Blocked', 438, 'blocked', '2025-03-22 00:14:21', '2025-03-22 00:14:21'),
(877, 'Following', 439, 'following', '2025-03-22 00:59:58', '2025-03-22 00:59:58'),
(878, 'Blocked', 439, 'blocked', '2025-03-22 00:59:58', '2025-03-22 00:59:58'),
(879, 'Following', 440, 'following', '2025-03-22 01:03:10', '2025-03-22 01:03:10'),
(880, 'Blocked', 440, 'blocked', '2025-03-22 01:03:10', '2025-03-22 01:03:10'),
(881, 'Following', 441, 'following', '2025-03-22 01:30:10', '2025-03-22 01:30:10'),
(882, 'Blocked', 441, 'blocked', '2025-03-22 01:30:10', '2025-03-22 01:30:10'),
(883, 'Following', 442, 'following', '2025-03-22 02:28:43', '2025-03-22 02:28:43'),
(884, 'Blocked', 442, 'blocked', '2025-03-22 02:28:43', '2025-03-22 02:28:43'),
(885, 'Following', 443, 'following', '2025-03-22 04:02:53', '2025-03-22 04:02:53'),
(886, 'Blocked', 443, 'blocked', '2025-03-22 04:02:53', '2025-03-22 04:02:53'),
(887, 'Following', 444, 'following', '2025-03-22 23:13:36', '2025-03-22 23:13:36'),
(888, 'Blocked', 444, 'blocked', '2025-03-22 23:13:36', '2025-03-22 23:13:36'),
(889, 'Following', 445, 'following', '2025-03-23 13:11:17', '2025-03-23 13:11:17'),
(890, 'Blocked', 445, 'blocked', '2025-03-23 13:11:17', '2025-03-23 13:11:17'),
(891, 'Following', 446, 'following', '2025-03-23 18:43:11', '2025-03-23 18:43:11'),
(892, 'Blocked', 446, 'blocked', '2025-03-23 18:43:11', '2025-03-23 18:43:11'),
(893, 'Following', 447, 'following', '2025-03-23 22:41:27', '2025-03-23 22:41:27'),
(894, 'Blocked', 447, 'blocked', '2025-03-23 22:41:27', '2025-03-23 22:41:27'),
(895, 'Following', 448, 'following', '2025-03-23 23:30:52', '2025-03-23 23:30:52'),
(896, 'Blocked', 448, 'blocked', '2025-03-23 23:30:52', '2025-03-23 23:30:52'),
(897, 'Following', 449, 'following', '2025-03-24 10:45:49', '2025-03-24 10:45:49'),
(898, 'Blocked', 449, 'blocked', '2025-03-24 10:45:49', '2025-03-24 10:45:49'),
(899, 'Following', 450, 'following', '2025-03-24 18:42:58', '2025-03-24 18:42:58'),
(900, 'Blocked', 450, 'blocked', '2025-03-24 18:42:58', '2025-03-24 18:42:58'),
(901, 'Following', 451, 'following', '2025-03-25 03:50:35', '2025-03-25 03:50:35'),
(902, 'Blocked', 451, 'blocked', '2025-03-25 03:50:35', '2025-03-25 03:50:35'),
(903, 'Following', 452, 'following', '2025-03-25 08:47:21', '2025-03-25 08:47:21'),
(904, 'Blocked', 452, 'blocked', '2025-03-25 08:47:21', '2025-03-25 08:47:21'),
(905, 'Following', 453, 'following', '2025-03-25 09:06:20', '2025-03-25 09:06:20'),
(906, 'Blocked', 453, 'blocked', '2025-03-25 09:06:20', '2025-03-25 09:06:20'),
(907, 'Following', 454, 'following', '2025-03-25 09:13:56', '2025-03-25 09:13:56'),
(908, 'Blocked', 454, 'blocked', '2025-03-25 09:13:56', '2025-03-25 09:13:56'),
(909, 'Following', 455, 'following', '2025-03-25 09:44:44', '2025-03-25 09:44:44'),
(910, 'Blocked', 455, 'blocked', '2025-03-25 09:44:44', '2025-03-25 09:44:44'),
(911, 'Following', 456, 'following', '2025-03-25 09:51:24', '2025-03-25 09:51:24'),
(912, 'Blocked', 456, 'blocked', '2025-03-25 09:51:24', '2025-03-25 09:51:24'),
(913, 'Following', 457, 'following', '2025-03-25 14:22:26', '2025-03-25 14:22:26'),
(914, 'Blocked', 457, 'blocked', '2025-03-25 14:22:26', '2025-03-25 14:22:26'),
(915, 'Following', 458, 'following', '2025-03-25 17:55:41', '2025-03-25 17:55:41'),
(916, 'Blocked', 458, 'blocked', '2025-03-25 17:55:41', '2025-03-25 17:55:41'),
(917, 'Following', 459, 'following', '2025-03-25 19:12:15', '2025-03-25 19:12:15'),
(918, 'Blocked', 459, 'blocked', '2025-03-25 19:12:15', '2025-03-25 19:12:15'),
(919, 'Following', 460, 'following', '2025-03-25 20:05:57', '2025-03-25 20:05:57'),
(920, 'Blocked', 460, 'blocked', '2025-03-25 20:05:57', '2025-03-25 20:05:57'),
(921, 'Following', 461, 'following', '2025-03-26 00:27:13', '2025-03-26 00:27:13'),
(922, 'Blocked', 461, 'blocked', '2025-03-26 00:27:13', '2025-03-26 00:27:13'),
(923, 'Following', 462, 'following', '2025-03-26 04:23:04', '2025-03-26 04:23:04'),
(924, 'Blocked', 462, 'blocked', '2025-03-26 04:23:04', '2025-03-26 04:23:04'),
(925, 'Following', 463, 'following', '2025-03-26 22:28:52', '2025-03-26 22:28:52'),
(926, 'Blocked', 463, 'blocked', '2025-03-26 22:28:52', '2025-03-26 22:28:52'),
(927, 'Following', 464, 'following', '2025-03-28 01:57:52', '2025-03-28 01:57:52'),
(928, 'Blocked', 464, 'blocked', '2025-03-28 01:57:52', '2025-03-28 01:57:52'),
(929, 'Following', 465, 'following', '2025-03-28 12:46:16', '2025-03-28 12:46:16'),
(930, 'Blocked', 465, 'blocked', '2025-03-28 12:46:16', '2025-03-28 12:46:16'),
(931, 'Following', 466, 'following', '2025-03-28 15:30:55', '2025-03-28 15:30:55'),
(932, 'Blocked', 466, 'blocked', '2025-03-28 15:30:55', '2025-03-28 15:30:55'),
(933, 'Following', 467, 'following', '2025-03-29 12:54:29', '2025-03-29 12:54:29'),
(934, 'Blocked', 467, 'blocked', '2025-03-29 12:54:29', '2025-03-29 12:54:29'),
(935, 'Following', 468, 'following', '2025-03-29 13:09:53', '2025-03-29 13:09:53'),
(936, 'Blocked', 468, 'blocked', '2025-03-29 13:09:53', '2025-03-29 13:09:53'),
(937, 'Following', 469, 'following', '2025-03-29 15:11:20', '2025-03-29 15:11:20'),
(938, 'Blocked', 469, 'blocked', '2025-03-29 15:11:20', '2025-03-29 15:11:20'),
(939, 'Following', 470, 'following', '2025-03-29 17:13:17', '2025-03-29 17:13:17'),
(940, 'Blocked', 470, 'blocked', '2025-03-29 17:13:17', '2025-03-29 17:13:17'),
(941, 'Following', 471, 'following', '2025-03-30 01:59:05', '2025-03-30 01:59:05'),
(942, 'Blocked', 471, 'blocked', '2025-03-30 01:59:05', '2025-03-30 01:59:05'),
(943, 'Following', 472, 'following', '2025-03-30 06:25:44', '2025-03-30 06:25:44'),
(944, 'Blocked', 472, 'blocked', '2025-03-30 06:25:44', '2025-03-30 06:25:44'),
(945, 'Following', 473, 'following', '2025-03-30 14:58:59', '2025-03-30 14:58:59'),
(946, 'Blocked', 473, 'blocked', '2025-03-30 14:58:59', '2025-03-30 14:58:59'),
(947, 'Following', 474, 'following', '2025-03-30 21:47:14', '2025-03-30 21:47:14'),
(948, 'Blocked', 474, 'blocked', '2025-03-30 21:47:14', '2025-03-30 21:47:14'),
(949, 'Following', 475, 'following', '2025-03-31 10:21:03', '2025-03-31 10:21:03'),
(950, 'Blocked', 475, 'blocked', '2025-03-31 10:21:03', '2025-03-31 10:21:03'),
(951, 'Following', 476, 'following', '2025-03-31 15:58:38', '2025-03-31 15:58:38'),
(952, 'Blocked', 476, 'blocked', '2025-03-31 15:58:38', '2025-03-31 15:58:38'),
(953, 'Following', 477, 'following', '2025-03-31 17:02:32', '2025-03-31 17:02:32'),
(954, 'Blocked', 477, 'blocked', '2025-03-31 17:02:32', '2025-03-31 17:02:32'),
(955, 'Following', 478, 'following', '2025-04-01 01:07:58', '2025-04-01 01:07:58'),
(956, 'Blocked', 478, 'blocked', '2025-04-01 01:07:58', '2025-04-01 01:07:58'),
(957, 'Following', 479, 'following', '2025-04-01 03:02:34', '2025-04-01 03:02:34'),
(958, 'Blocked', 479, 'blocked', '2025-04-01 03:02:34', '2025-04-01 03:02:34'),
(959, 'Following', 480, 'following', '2025-04-02 04:17:24', '2025-04-02 04:17:24'),
(960, 'Blocked', 480, 'blocked', '2025-04-02 04:17:24', '2025-04-02 04:17:24'),
(961, 'Following', 481, 'following', '2025-04-02 09:40:17', '2025-04-02 09:40:17'),
(962, 'Blocked', 481, 'blocked', '2025-04-02 09:40:17', '2025-04-02 09:40:17'),
(963, 'Following', 482, 'following', '2025-04-02 12:29:45', '2025-04-02 12:29:45'),
(964, 'Blocked', 482, 'blocked', '2025-04-02 12:29:45', '2025-04-02 12:29:45'),
(965, 'Following', 483, 'following', '2025-04-03 06:14:17', '2025-04-03 06:14:17'),
(966, 'Blocked', 483, 'blocked', '2025-04-03 06:14:17', '2025-04-03 06:14:17'),
(967, 'Following', 484, 'following', '2025-04-03 07:49:25', '2025-04-03 07:49:25'),
(968, 'Blocked', 484, 'blocked', '2025-04-03 07:49:25', '2025-04-03 07:49:25'),
(969, 'Following', 485, 'following', '2025-04-03 12:03:40', '2025-04-03 12:03:40'),
(970, 'Blocked', 485, 'blocked', '2025-04-03 12:03:40', '2025-04-03 12:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_list_members`
--

CREATE TABLE `user_list_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `list_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `replyTo` int(11) NOT NULL DEFAULT 0,
  `message` longtext DEFAULT NULL,
  `isSeen` tinyint(1) NOT NULL DEFAULT 0,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_reports`
--

CREATE TABLE `user_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message_id` bigint(20) DEFAULT NULL,
  `stream_id` bigint(20) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_verifies`
--

CREATE TABLE `user_verifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `files` text DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `rejectionReason` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_verifies`
--

INSERT INTO `user_verifies` (`id`, `user_id`, `files`, `status`, `rejectionReason`, `created_at`, `updated_at`) VALUES
(1, 2, '[\"users\\/verifications\\/499c0537dece463099ca7a4d85749928.jpg\"]', 'verified', NULL, '2024-12-05 11:55:00', '2024-12-05 11:55:49'),
(2, 3, '[\"users\\/verifications\\/5d5806c143914aaf925908be203e67f1.jpg\"]', 'verified', NULL, '2024-12-05 14:57:00', '2024-12-05 14:57:21'),
(3, 4, '[\"users\\/verifications\\/0d890b676d6c47e68d398e93c5847ed4.jpg\"]', 'pending', NULL, '2025-01-03 21:02:05', '2025-01-03 21:02:05'),
(4, 1, '[\"users\\/verifications\\/bb81b9332e54496786fa2e830df39a27.jpg\"]', 'verified', NULL, '2025-03-27 11:32:00', '2025-03-27 11:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
('0022198645614e2688546a030b83be64', 64, 0, '2025-03-03 22:19:46', '2025-03-03 22:19:46'),
('00510b495e62444ca40166cf11b01bc7', 167, 0, '2025-03-17 20:17:11', '2025-03-17 20:17:11'),
('0136d39eacef42f58bb072ef75b80cd9', 355, 0, '2025-03-20 17:08:39', '2025-03-20 17:08:39'),
('01c715b7dd2b4e5e8d7b4017c752f32f', 351, 0, '2025-03-20 16:31:01', '2025-03-20 16:31:01'),
('02aa552b0e9d48178674cc95e39b6f7b', 176, 0, '2025-03-18 02:48:02', '2025-03-18 02:48:02'),
('03615dc3113045e28bb227dd48a93c2f', 232, 0, '2025-03-19 09:31:25', '2025-03-19 09:31:25'),
('03b8e348976e40ea81521284c81ce15d', 476, 0, '2025-03-31 15:58:38', '2025-03-31 15:58:38'),
('0447ac6207b942aa9458cefb1e32e1ea', 133, 0, '2025-03-16 15:41:28', '2025-03-16 15:41:28'),
('04724adec5f94776aed7fbcf4aab28fc', 134, 0, '2025-03-16 15:49:10', '2025-03-16 15:49:10'),
('04e533dfb80945d98218a8a2695271a4', 458, 0, '2025-03-25 17:55:41', '2025-03-25 17:55:41'),
('053b4b202c494006a811d4b055022827', 356, 0, '2025-03-20 17:46:55', '2025-03-20 17:46:55'),
('058ee5819e434cb89542bc53adc90874', 298, 0, '2025-03-19 23:15:26', '2025-03-19 23:15:26'),
('05f83dcda31649df89ec1670c965c41d', 415, 0, '2025-03-21 13:35:30', '2025-03-21 13:35:30'),
('068132ce6cff41749e4c2029e22c3cab', 447, 0, '2025-03-23 22:41:27', '2025-03-23 22:41:27'),
('06de52bd32084554b53de30dbfd11fbe', 321, 0, '2025-03-20 08:51:04', '2025-03-20 08:51:04'),
('07275af0cc164af3ac6c40de032fb3b8', 385, 0, '2025-03-20 21:56:07', '2025-03-20 21:56:07'),
('07bc3e1e47ac4f8a9f828c461ca85786', 338, 0, '2025-03-20 14:21:38', '2025-03-20 14:21:38'),
('08301774a17d44b98f4e718cc6159729', 16, 0, '2025-02-24 03:21:38', '2025-02-24 03:21:38'),
('08ad4fb31f3b4e86b2e83d3a4a74ca32', 382, 0, '2025-03-20 21:29:54', '2025-03-20 21:29:54'),
('093f7dcba0144463b3e6220ab810359a', 216, 0, '2025-03-18 23:30:50', '2025-03-18 23:30:50'),
('09c58a3a92d948e0b5866b08b98816d6', 196, 0, '2025-03-18 14:33:28', '2025-03-18 14:33:28'),
('0a499d65e1714facb67a4e3afd84c510', 405, 0, '2025-03-21 03:56:41', '2025-03-21 03:56:41'),
('0a6715c2ffdf49f1b30d0bb2734eb0cc', 109, 0, '2025-03-15 00:54:03', '2025-03-15 00:54:03'),
('0ac2b3299fa54ef9a697e1ae244495c6', 198, 0, '2025-03-18 15:07:34', '2025-03-18 15:07:34'),
('0bcba0f514814ef8a56a12fb57ca06cb', 470, 0, '2025-03-29 17:13:17', '2025-03-29 17:13:17'),
('0bce46733ea247ceb54e342844f37335', 461, 0, '2025-03-26 00:27:13', '2025-03-26 00:27:13'),
('0bed41aff86346c89c86f50c6bf313c1', 418, 0, '2025-03-21 14:40:35', '2025-03-21 14:40:35'),
('0c57df5b752441328c6110a982dab9cf', 135, 0, '2025-03-16 18:14:55', '2025-03-16 18:14:55'),
('0d61798f060143de84e57433dec55d00', 211, 0, '2025-03-18 21:37:22', '2025-03-18 21:37:22'),
('0def519dc505440091963f4eff294cb9', 98, 0, '2025-03-14 20:57:52', '2025-03-14 20:57:52'),
('0e07b029c3d34647ab8ce6d4c817fbd5', 28, 0, '2025-03-02 02:26:44', '2025-03-02 02:26:44'),
('0ebb2f2c696146478c036db1e5afcceb', 160, 0, '2025-03-17 18:01:32', '2025-03-17 18:01:32'),
('0fd09fce0424453c91ea55158f769013', 227, 0, '2025-03-19 05:42:28', '2025-03-19 05:42:28'),
('104b327c74254c0a8caf00569da2deb7', 280, 0, '2025-03-19 20:11:56', '2025-03-19 20:11:56'),
('10770d82c42441c1b913e3e01a6055cb', 168, 0, '2025-03-17 20:20:20', '2025-03-17 20:20:20'),
('10cfd99c4f17413598f34005339393e1', 220, 0, '2025-03-19 01:53:14', '2025-03-19 01:53:14'),
('11667a1ca56f4a1ba70b931677f448f0', 170, 0, '2025-03-17 21:55:14', '2025-03-17 21:55:14'),
('11eb7250093542ddb4d2cbc90b1100fa', 485, 0, '2025-04-03 12:03:40', '2025-04-03 12:03:40'),
('12c90083c1c944e2bc5a71f4cec71019', 362, 0, '2025-03-20 18:29:39', '2025-03-20 18:29:39'),
('130e51a2e4684fa2854039d5ce40088c', 234, 0, '2025-03-19 10:23:48', '2025-03-19 10:23:48'),
('13314d78a8494321a2828d749b6f1dd2', 363, 0, '2025-03-20 18:48:09', '2025-03-20 18:48:09'),
('141f3a578fb94fcfae35d56f39cfc836', 177, 0, '2025-03-18 03:08:04', '2025-03-18 03:08:04'),
('1433c7437ee2428b80cc934909d0ee66', 309, 0, '2025-03-20 02:35:01', '2025-03-20 02:35:01'),
('14c65c575f77482a96b415750b1bdd73', 100, 0, '2025-03-14 21:58:06', '2025-03-14 21:58:06'),
('14ebcbd4ab8c450cbf297af4592f8dce', 410, 0, '2025-03-21 08:52:35', '2025-03-21 08:52:35'),
('14fc2d737523466cb9e7069ee1c4d18b', 96, 0, '2025-03-14 20:31:17', '2025-03-14 20:31:17'),
('15f9dc1eb0bf43b9b66831019e2515fc', 420, 0, '2025-03-21 15:27:11', '2025-03-21 15:27:11'),
('167377a66b034fad84d680f13e81d414', 366, 0, '2025-03-20 19:05:59', '2025-03-20 19:05:59'),
('1684652b57844fb3b3db3f1132603dfc', 41, 0, '2025-03-02 18:09:28', '2025-03-02 18:09:28'),
('169082ff98b04f94b5bee4ed083fb80e', 433, 0, '2025-03-21 20:36:51', '2025-03-21 20:36:51'),
('1737dbe84cbd4799912780d874acd8bb', 132, 0, '2025-03-16 14:26:37', '2025-03-16 14:26:37'),
('17c1283b548e4d6bb61df38b337771bf', 82, 0, '2025-03-08 03:30:06', '2025-03-08 03:30:06'),
('17e7ab9a4c364a3181aaf078e7ac3da2', 178, 0, '2025-03-18 05:05:44', '2025-03-18 05:05:44'),
('18ef4589addb4b52b80bf3abc7d81f06', 12, 0, '2025-02-24 02:47:22', '2025-02-24 02:47:22'),
('1955ebab3ef94af9a10aa4f1b6feab6c', 293, 0, '2025-03-19 22:37:56', '2025-03-19 22:37:56'),
('1b53309ef971457f8e4ddf70ed357470', 102, 0, '2025-03-14 22:20:26', '2025-03-14 22:20:26'),
('1b88b199baf6418ba7eb56bea7c5ab40', 400, 0, '2025-03-21 01:42:55', '2025-03-21 01:42:55'),
('1c072fd2abdf462db36c9bb3d9388366', 392, 0, '2025-03-20 23:10:25', '2025-03-20 23:10:25'),
('1c490353b5b2411c9310d77c87ec995a', 25, 0, '2025-03-02 01:52:05', '2025-03-02 01:52:05'),
('1d1634e428e24fd5a14ae070930508c7', 35, 0, '2025-03-02 11:49:56', '2025-03-02 11:49:56'),
('1dddd7540f4a497b979ad1dd08a6c53f', 394, 0, '2025-03-20 23:28:28', '2025-03-20 23:28:28'),
('1df1fed9a96a47899f73e4621dbf12c0', 116, 0, '2025-03-15 21:34:43', '2025-03-15 21:34:43'),
('1e3eb2d68573405aa77216a6dc504404', 294, 0, '2025-03-19 22:40:27', '2025-03-19 22:40:27'),
('1e5858b81dfb4ebe97c945bdb921b616', 285, 0, '2025-03-19 21:06:31', '2025-03-19 21:06:31'),
('1e966aa3bf59499390c0b35d81c57eee', 54, 0, '2025-03-03 12:05:53', '2025-03-03 12:05:53'),
('1f0f58ddf498401da63fa1556c80b607', 296, 0, '2025-03-19 22:59:46', '2025-03-19 22:59:46'),
('1f791a5d283e4697a3f60f4d055c7c84', 48, 0, '2025-03-03 10:39:07', '2025-03-03 10:39:07'),
('20453c0b10dd42909d69e403c438d0b8', 352, 0, '2025-03-20 16:35:31', '2025-03-20 16:35:31'),
('221d58e5e278474493a8b67c70a08657', 9, 0, '2025-02-23 23:43:41', '2025-02-23 23:43:41'),
('233e3ff974184dc0b2c06838470a50a0', 246, 0, '2025-03-19 14:06:54', '2025-03-19 14:06:54'),
('23657ced15784709b5108a8bc0ebcc07', 445, 0, '2025-03-23 13:11:17', '2025-03-23 13:11:17'),
('2405c888bc4e47ffbfc637f393836293', 403, 0, '2025-03-21 02:59:32', '2025-03-21 02:59:32'),
('245f5cf266174475a86f30e8b9e62d69', 80, 0, '2025-03-05 00:11:26', '2025-03-05 00:11:26'),
('246dc9812a7a4f6389bca984e320cf03', 112, 0, '2025-03-15 14:56:10', '2025-03-15 14:56:10'),
('24a72f9ce04c46cabd3487ff977582d0', 194, 0, '2025-03-18 13:25:39', '2025-03-18 13:25:39'),
('253b1eb3d1c64f248c567b925d6983dd', 377, 0, '2025-03-20 20:49:55', '2025-03-20 20:49:55'),
('25b0e7276ec34946ab684759bae10f1a', 247, 0, '2025-03-19 14:12:45', '2025-03-19 14:12:45'),
('25f632005f094016af680df495cd2ae7', 327, 0, '2025-03-20 10:09:47', '2025-03-20 10:09:47'),
('260693c3c59d4ed7ad916091ed6cd0ee', 409, 0, '2025-03-21 07:51:48', '2025-03-21 07:51:48'),
('2733f8273fa046ba87b2026c663f187e', 412, 0, '2025-03-21 12:40:50', '2025-03-21 12:40:50'),
('285426502e3547e69bfd9300e5fb22f0', 204, 0, '2025-03-18 18:29:12', '2025-03-18 18:29:12'),
('28d3b0b0632248b1a2e6a749af3eb1f3', 187, 0, '2025-03-18 11:21:58', '2025-03-18 11:21:58'),
('299ba09979cb4060808dfd6fbaebffc8', 143, 0, '2025-03-17 00:10:20', '2025-03-17 00:10:20'),
('2a9e8a122ad448e997792854b38480c8', 384, 0, '2025-03-20 21:46:21', '2025-03-20 21:46:21'),
('2b25968c907d493ead42fae5827d208d', 467, 0, '2025-03-29 12:54:29', '2025-03-29 12:54:29'),
('2d1c4741086e4c70b6a36a83dbbc5629', 421, 0, '2025-03-21 15:43:32', '2025-03-21 15:43:32'),
('2d7a8d0d92f345529e5fbcf98a049f47', 124, 0, '2025-03-16 11:20:49', '2025-03-16 11:20:49'),
('2dbb81b407f544e29bc23bd819d31ca5', 281, 0, '2025-03-19 20:15:55', '2025-03-19 20:15:55'),
('2de79623c29f44d4a07c87035f7c5d6d', 435, 0, '2025-03-21 21:36:36', '2025-03-21 21:36:36'),
('2e7a7881479b42aab21d55336c303d2f', 144, 0, '2025-03-17 02:33:04', '2025-03-17 02:33:04'),
('2ea2f22c17a5492d9df19222607b341d', 319, 0, '2025-03-20 07:13:13', '2025-03-20 07:13:13'),
('2f77b77734854221960eda415e733efb', 263, 0, '2025-03-19 18:15:51', '2025-03-19 18:15:51'),
('2fea27fc20dd41af997df6ab3af17c37', 40, 0, '2025-03-02 17:51:29', '2025-03-02 17:51:29'),
('2ff7546ef8484da0a6a8665b2149b4f8', 171, 0, '2025-03-17 22:04:09', '2025-03-17 22:04:09'),
('3010a76893bf4205aab702f61b0f382a', 92, 0, '2025-03-14 17:51:20', '2025-03-14 17:51:20'),
('30c31f2da65f467da15f30eb6a029a83', 39, 0, '2025-03-02 16:29:10', '2025-03-02 16:29:10'),
('30cae40862324192b6596c55b4f20bab', 286, 0, '2025-03-19 21:07:50', '2025-03-19 21:07:50'),
('310eadc53b65437683d97d182e29d263', 432, 0, '2025-03-21 20:14:29', '2025-03-21 20:14:29'),
('3130793c7e6b4ded8d2cc3cde563518a', 157, 0, '2025-03-17 15:37:09', '2025-03-17 15:37:09'),
('326bfa72179948b3aedd2563a1185017', 472, 0, '2025-03-30 06:25:44', '2025-03-30 06:25:44'),
('33a9c7c1628346ed9d87d68f2575a92f', 87, 0, '2025-03-14 12:46:11', '2025-03-14 12:46:11'),
('351f71a978fb450c9d247cc8e96f966f', 229, 0, '2025-03-19 09:04:22', '2025-03-19 09:04:22'),
('35a2b536b9e143e5b5457e62e3c67ab5', 145, 0, '2025-03-17 02:41:31', '2025-03-17 02:41:31'),
('35d38b09d3ff4b60b0768548c3ec37e5', 200, 0, '2025-03-18 15:40:11', '2025-03-18 15:40:11'),
('360cc59d1eee4008b10c3d7f86cb9121', 23, 0, '2025-02-24 04:29:37', '2025-02-24 04:29:37'),
('363ba0b74e424041b6a4ec884c850b68', 97, 0, '2025-03-14 20:48:11', '2025-03-14 20:48:11'),
('37b13847141647ce8f338af9f953734c', 213, 0, '2025-03-18 21:55:58', '2025-03-18 21:55:58'),
('37dcb58ac52b4239b29dfb7397fd296e', 68, 0, '2025-03-04 00:47:05', '2025-03-04 00:47:05'),
('3815792096254548a3377f0c340171de', 457, 0, '2025-03-25 14:22:26', '2025-03-25 14:22:26'),
('3847a3220dde49b3bf0cf47b01106898', 419, 0, '2025-03-21 15:26:35', '2025-03-21 15:26:35'),
('397afba0e52e41709924bb018d09a779', 446, 0, '2025-03-23 18:43:11', '2025-03-23 18:43:11'),
('3a304e93946945b486a992dc0e4ed2f3', 130, 0, '2025-03-16 13:01:49', '2025-03-16 13:01:49'),
('3ac360f5fd0349758b53b6c7a821ba1a', 239, 0, '2025-03-19 12:42:48', '2025-03-19 12:42:48'),
('3ae2c004365a4ab392427995edafd1c4', 337, 0, '2025-03-20 14:00:07', '2025-03-20 14:00:07'),
('3af48269fd7f4f79bf73d948bb0d87cb', 464, 0, '2025-03-28 01:57:52', '2025-03-28 01:57:52'),
('3b3fe3f594af494bb6a5065028f85ac7', 137, 0, '2025-03-16 21:25:39', '2025-03-16 21:25:39'),
('3bbb0daf34b94b059a12ff5033977812', 449, 0, '2025-03-24 10:45:49', '2025-03-24 10:45:49'),
('3bbc5c87477341a794adf6683db6a180', 1, 0, '2024-12-03 09:36:18', '2024-12-03 09:36:18'),
('3bf78f28778a4242942b649f492b7b7e', 129, 0, '2025-03-16 12:56:14', '2025-03-16 12:56:14'),
('3d0baf0fe22a4b0081ec53b834955da8', 331, 0, '2025-03-20 12:53:23', '2025-03-20 12:53:23'),
('3e207432ef5440eea58ca0fe23ccb6ab', 320, 0, '2025-03-20 07:50:58', '2025-03-20 07:50:58'),
('3e20f0b9367d418f99c09b27d2f4ebb5', 111, 0, '2025-03-15 05:10:42', '2025-03-15 05:10:42'),
('3e7c99949bea468e835ee595606c26c3', 456, 0, '2025-03-25 09:51:24', '2025-03-25 09:51:24'),
('3ef3efda65434c51a760b5353c3df477', 417, 0, '2025-03-21 14:18:33', '2025-03-21 14:18:33'),
('3fc2bb2a7412455db5bbb5562e0c0852', 233, 0, '2025-03-19 10:07:34', '2025-03-19 10:07:34'),
('3fd1919403b94313aba5e02ac9a4e108', 58, 0, '2025-03-03 14:07:14', '2025-03-03 14:07:14'),
('42a2084943714500b09eaf61a12c0d5a', 430, 0, '2025-03-21 19:43:18', '2025-03-21 19:43:18'),
('42adbecfb89042ab8cc32158ae265824', 218, 0, '2025-03-19 01:17:00', '2025-03-19 01:17:00'),
('44646b27999d4de5b7af2efe448cb43a', 47, 0, '2025-03-03 09:15:20', '2025-03-03 09:15:20'),
('45451914b75540eda44a54fa5aec330b', 85, 0, '2025-03-13 22:56:40', '2025-03-13 22:56:40'),
('45c67e1746cc4b3799776b5002fe646a', 452, 0, '2025-03-25 08:47:21', '2025-03-25 08:47:21'),
('460c9095091541798f47c977b1a47d21', 32, 0, '2025-03-02 09:37:01', '2025-03-02 09:37:01'),
('46eb8de4bea34f068c0dc2f72f093f19', 478, 0, '2025-04-01 01:07:58', '2025-04-01 01:07:58'),
('47c1d3101e164e0a9ce2c30dce8ade92', 484, 0, '2025-04-03 07:49:25', '2025-04-03 07:49:25'),
('48086df4f6f84939a4a67ac98bf1a4cc', 149, 0, '2025-03-17 09:13:11', '2025-03-17 09:13:11'),
('48c627fd059d422ba18df1f4a2d9767e', 150, 0, '2025-03-17 09:48:56', '2025-03-17 09:48:56'),
('4903dfa2c4cc481f9a07fe135f080b62', 302, 0, '2025-03-19 23:52:51', '2025-03-19 23:52:51'),
('49d0b8c171344f4e9d1085dcbbee53cc', 370, 0, '2025-03-20 19:27:58', '2025-03-20 19:27:58'),
('4a41ee464b894fd7af9d47545dc74f8d', 6, 0, '2025-01-18 22:00:37', '2025-01-18 22:00:37'),
('4a83b96e7b50462893af908e6794a20a', 255, 0, '2025-03-19 16:13:04', '2025-03-19 16:13:04'),
('4ae4bbe354e84a0e8dbccae046a8b8e5', 269, 0, '2025-03-19 19:03:21', '2025-03-19 19:03:21'),
('4b4ddef660de4340bb3ddbaebc1094c5', 256, 0, '2025-03-19 16:20:41', '2025-03-19 16:20:41'),
('4b8240ad080343bda944a72ec291d574', 273, 0, '2025-03-19 19:41:16', '2025-03-19 19:41:16'),
('4bf13a128eab4e4ebd894bd4fd795b8a', 42, 0, '2025-03-02 18:55:06', '2025-03-02 18:55:06'),
('4ca10649e7494ba7a0d6acf4fe1e1f86', 312, 0, '2025-03-20 03:58:08', '2025-03-20 03:58:08'),
('4d9f0b587cf44ceaa3895b6a528c6c87', 304, 0, '2025-03-20 00:24:02', '2025-03-20 00:24:02'),
('4f02651aa3d443cebd01b208c54c5eb3', 179, 0, '2025-03-18 05:35:08', '2025-03-18 05:35:08'),
('4f965b6256644222937054fcee20f735', 27, 0, '2025-03-02 02:09:47', '2025-03-02 02:09:47'),
('5128442c68114874b0911b89267ab59d', 5, 0, '2025-01-11 12:21:16', '2025-01-11 12:21:16'),
('513181ff14cf4b6e8d1cbb44a19a7dc6', 483, 0, '2025-04-03 06:14:17', '2025-04-03 06:14:17'),
('51fbda4cecdd44e98eaade2eeb220b93', 33, 0, '2025-03-02 10:01:15', '2025-03-02 10:01:15'),
('51fd4041a71e4f168814e66391470838', 424, 0, '2025-03-21 17:02:55', '2025-03-21 17:02:55'),
('52ab29367d444bd689b10904de981179', 240, 0, '2025-03-19 12:58:43', '2025-03-19 12:58:43'),
('52b554b17b754cce9a3670241ac9b1fc', 173, 0, '2025-03-17 23:15:14', '2025-03-17 23:15:14'),
('534b775ab5564b59abe20dcc9e23d3db', 7, 0, '2025-01-23 22:15:55', '2025-01-23 22:15:55'),
('5376d908397e45d084ff878f92687f5c', 212, 0, '2025-03-18 21:37:59', '2025-03-18 21:37:59'),
('53911b3a348e4b8283079036d64b36b5', 210, 0, '2025-03-18 21:30:51', '2025-03-18 21:30:51'),
('5398253b2011430e9b4c7b01c102a02a', 201, 0, '2025-03-18 15:45:40', '2025-03-18 15:45:40'),
('540b7639251f4ec99c58dd9b5d027404', 463, 0, '2025-03-26 22:28:52', '2025-03-26 22:28:52'),
('541cfb36fedf4cb08408cddb5aae9347', 81, 0, '2025-03-05 03:04:43', '2025-03-05 03:04:43'),
('54b519b214ce431d8703c25ca10ea65d', 153, 0, '2025-03-17 12:19:17', '2025-03-17 12:19:17'),
('5558d4b8037e4998a74aed4aabfc2020', 402, 0, '2025-03-21 02:54:22', '2025-03-21 02:54:22'),
('555cb926bb3f42eb946dbd69056219e1', 426, 0, '2025-03-21 19:08:56', '2025-03-21 19:08:56'),
('55c769bbe2364f48a3193e216cb96aaa', 252, 0, '2025-03-19 15:36:28', '2025-03-19 15:36:28'),
('55c8c859ebad4f888f732bf0d14ae719', 425, 0, '2025-03-21 19:02:40', '2025-03-21 19:02:40'),
('5668998ef55a4aafbb0588c120931462', 189, 0, '2025-03-18 11:53:34', '2025-03-18 11:53:34'),
('582d04921f2b4e83a56317d17bcbdf48', 11, 0, '2025-02-24 02:35:48', '2025-02-24 02:35:48'),
('58679469aaae496ba633f20df8da378c', 119, 0, '2025-03-16 00:44:48', '2025-03-16 00:44:48'),
('5b29464777334461af4d2b6ca82fe8ad', 379, 0, '2025-03-20 21:11:48', '2025-03-20 21:11:48'),
('5b3801b8f2a94f6088b29a81c0c207a1', 221, 0, '2025-03-19 02:10:11', '2025-03-19 02:10:11'),
('5c3b1ec790384aea9f0c762b77442cc3', 117, 0, '2025-03-15 22:19:08', '2025-03-15 22:19:08'),
('5d2ed997c2034e90b87e0a93f9abbc47', 195, 0, '2025-03-18 13:52:52', '2025-03-18 13:52:52'),
('5d83b1835fcc45579494feba559ae886', 75, 0, '2025-03-04 15:26:31', '2025-03-04 15:26:31'),
('5daf051908d349958a5607912d3d1670', 36, 0, '2025-03-02 14:50:20', '2025-03-02 14:50:20'),
('5ef38ce414234488ae6c2c9363d6030a', 471, 0, '2025-03-30 01:59:05', '2025-03-30 01:59:05'),
('5f13834783a24a03a47991957c81a966', 460, 0, '2025-03-25 20:05:57', '2025-03-25 20:05:57'),
('5f2642206bc4407b825113a456db92be', 333, 0, '2025-03-20 13:04:27', '2025-03-20 13:04:27'),
('5fa9b6bb9fff4f80ab409024fbf43cb9', 70, 0, '2025-03-04 06:32:07', '2025-03-04 06:32:07'),
('5fca78bda35943f9a26cf003d4fb4c94', 175, 0, '2025-03-18 02:08:00', '2025-03-18 02:08:00'),
('5fd87515b6e84d5aa9a4508c7940b1f6', 364, 0, '2025-03-20 18:49:06', '2025-03-20 18:49:06'),
('6089ad672652431296c4f2c1a7dd0109', 383, 0, '2025-03-20 21:34:00', '2025-03-20 21:34:00'),
('61bbf6c901844cd7b367768f59f06331', 228, 0, '2025-03-19 08:07:52', '2025-03-19 08:07:52'),
('6216d3f920854209b83b07b06d001061', 182, 0, '2025-03-18 07:41:54', '2025-03-18 07:41:54'),
('622314196307417b8f3ac5bfb5ded1e7', 306, 0, '2025-03-20 01:14:30', '2025-03-20 01:14:30'),
('6265c54656634cc6a5cb245897b6d72f', 139, 0, '2025-03-16 21:57:00', '2025-03-16 21:57:00'),
('63231a9db7cc4d5eaecba7cfd92c9467', 448, 0, '2025-03-23 23:30:52', '2025-03-23 23:30:52'),
('6352482de50c430ca455336cad0cf27f', 332, 0, '2025-03-20 12:59:20', '2025-03-20 12:59:20'),
('63c1813a5cd14128b0cda9e27571cb46', 104, 0, '2025-03-14 23:12:07', '2025-03-14 23:12:07'),
('63d3e105682f4a479f590a4f1b6ec143', 455, 0, '2025-03-25 09:44:44', '2025-03-25 09:44:44'),
('63ec358d527c4258b16e0293a07329aa', 103, 0, '2025-03-14 22:34:15', '2025-03-14 22:34:15'),
('64b291d2c24840b19d4fca35e15736bf', 131, 0, '2025-03-16 13:51:14', '2025-03-16 13:51:14'),
('64ee033e543f4c07a22c7f948e8f15ca', 79, 0, '2025-03-04 20:45:58', '2025-03-04 20:45:58'),
('65236bde17dd4108a7772e5a2e552460', 230, 0, '2025-03-19 09:13:05', '2025-03-19 09:13:05'),
('65846034c9e94011aac28a9c9bcc341f', 207, 0, '2025-03-18 20:56:25', '2025-03-18 20:56:25'),
('65f363d260a54c48845d2bf12d4e0346', 241, 0, '2025-03-19 13:02:55', '2025-03-19 13:02:55'),
('671cd3fa5fa147e9b111d45ccf385f75', 147, 0, '2025-03-17 07:26:55', '2025-03-17 07:26:55'),
('67956203005446ae88a76fa15ef871e3', 311, 0, '2025-03-20 03:39:49', '2025-03-20 03:39:49'),
('68622f0bc20d41969d0401984d235848', 105, 0, '2025-03-14 23:17:17', '2025-03-14 23:17:17'),
('68a0b4b362534c7fba3d6babfa3d7ab7', 450, 0, '2025-03-24 18:42:58', '2025-03-24 18:42:58'),
('68c6669b78d148dda83ac97b664b0e9c', 443, 0, '2025-03-22 04:02:53', '2025-03-22 04:02:53'),
('68e23a558fdc433788bef4ac0a3561cb', 429, 0, '2025-03-21 19:33:43', '2025-03-21 19:33:43'),
('6b0a5d548e0e43c39640589a6aa658f6', 310, 0, '2025-03-20 03:36:39', '2025-03-20 03:36:39'),
('6b1026d79706444bac249c4550bc2b48', 325, 0, '2025-03-20 09:31:19', '2025-03-20 09:31:19'),
('6b7fb82118ad4d72846f9d75457263f5', 288, 0, '2025-03-19 21:25:44', '2025-03-19 21:25:44'),
('6c0603e448744d628952fdc635138050', 236, 0, '2025-03-19 11:22:10', '2025-03-19 11:22:10'),
('6c3f31923d6d47a3ae543b9d9aab68e6', 50, 0, '2025-03-03 10:46:29', '2025-03-03 10:46:29'),
('6cdf8c2bfe56462880ec0aa32757b502', 326, 0, '2025-03-20 09:31:24', '2025-03-20 09:31:24'),
('6d3c050d9d044853a4ba7697a3557779', 251, 0, '2025-03-19 15:21:29', '2025-03-19 15:21:29'),
('6da93a5b7e1b434982d6642de409ca17', 270, 0, '2025-03-19 19:18:40', '2025-03-19 19:18:40'),
('6e0a0075c25543fb8bb9e1cbe43e355b', 391, 0, '2025-03-20 23:02:46', '2025-03-20 23:02:46'),
('6eda05ae5a5149eb8046ff0ddbf61120', 279, 0, '2025-03-19 20:08:00', '2025-03-19 20:08:00'),
('6f3dd72693f94c298dbf7243f4891c9f', 481, 0, '2025-04-02 09:40:17', '2025-04-02 09:40:17'),
('6ffffc55151541e1a0d80445ae82565c', 193, 0, '2025-03-18 13:02:56', '2025-03-18 13:02:56'),
('71cb4e5057ef4e55af439417bf989ee6', 399, 0, '2025-03-21 01:12:18', '2025-03-21 01:12:18'),
('7248b368bd7e4d5a84c704812a18126e', 141, 0, '2025-03-16 22:36:33', '2025-03-16 22:36:33'),
('725a6dca60254da28a5c626006d9a6f5', 93, 0, '2025-03-14 19:23:32', '2025-03-14 19:23:32'),
('7469096e359b43708a5ff6daa295a77c', 343, 0, '2025-03-20 15:40:28', '2025-03-20 15:40:28'),
('7485d451ac0242c09cfe8167a228dde3', 206, 0, '2025-03-18 20:56:10', '2025-03-18 20:56:10'),
('749407b104cb4595b929a27163f8533e', 29, 0, '2025-03-02 06:06:06', '2025-03-02 06:06:06'),
('74dc5295d7d346a2995052d4de792e49', 328, 0, '2025-03-20 11:16:23', '2025-03-20 11:16:23'),
('753f0c1785c643d6963cc25d82247553', 336, 0, '2025-03-20 13:54:24', '2025-03-20 13:54:24'),
('7576467c748741e28287acdd42ad8ffd', 266, 0, '2025-03-19 18:48:22', '2025-03-19 18:48:22'),
('75a518db67084036bc3e4a9ded95b2af', 468, 0, '2025-03-29 13:09:53', '2025-03-29 13:09:53'),
('7617b9c5e638496cae0ade7a205d9460', 473, 0, '2025-03-30 14:58:59', '2025-03-30 14:58:59'),
('76436e5f4b184e6ca84f04395176e199', 407, 0, '2025-03-21 05:35:43', '2025-03-21 05:35:43'),
('76c0fe9d6ff9433e81144228bc6088d1', 264, 0, '2025-03-19 18:16:18', '2025-03-19 18:16:18'),
('775865d98105431383a9b2045ef385ba', 18, 0, '2025-02-24 03:49:06', '2025-02-24 03:49:06'),
('7793fdfe36fd436db8c3acc54c8dfb25', 74, 0, '2025-03-04 14:13:42', '2025-03-04 14:13:42'),
('78dc522b54214ce38ba6c8c65d43a5d7', 482, 0, '2025-04-02 12:29:45', '2025-04-02 12:29:45'),
('79df8d55afc149519d42d80424e89e79', 151, 0, '2025-03-17 10:17:15', '2025-03-17 10:17:15'),
('7a7df06963264a0da56b5b253aa79443', 347, 0, '2025-03-20 16:11:03', '2025-03-20 16:11:03'),
('7aa9724323084e75961021ad2313dd49', 110, 0, '2025-03-15 03:18:10', '2025-03-15 03:18:10'),
('7b08849381684e08871d77397035d181', 56, 0, '2025-03-03 12:37:18', '2025-03-03 12:37:18'),
('7b8668e5e3804cdd831998f4f650d731', 454, 0, '2025-03-25 09:13:56', '2025-03-25 09:13:56'),
('7b982611f622403d873907dc8ebb5867', 140, 0, '2025-03-16 22:15:19', '2025-03-16 22:15:19'),
('7db6245797264d08823e25276730f4c7', 217, 0, '2025-03-19 01:14:59', '2025-03-19 01:14:59'),
('7e1b1d27d9fe479c82da7a0bf6c4dc1d', 380, 0, '2025-03-20 21:16:16', '2025-03-20 21:16:16'),
('7e450a02ecd6430fa5acb71bb4de2739', 345, 0, '2025-03-20 15:56:25', '2025-03-20 15:56:25'),
('7e73ea4cd2ed4f788dbd112667d45807', 62, 0, '2025-03-03 20:46:38', '2025-03-03 20:46:38'),
('7fc816b6ea844d089ebd4f2d34dddb03', 215, 0, '2025-03-18 22:43:29', '2025-03-18 22:43:29'),
('80e93d0e406143f39bc6772009769dda', 101, 0, '2025-03-14 22:18:09', '2025-03-14 22:18:09'),
('810517e4ec6b4947be39554a3962d966', 291, 0, '2025-03-19 22:20:10', '2025-03-19 22:20:10'),
('81ec6c9bcf4b426ab3295249f5cc74ef', 290, 0, '2025-03-19 21:54:18', '2025-03-19 21:54:18'),
('83515eb7359440369cc4c62ae6a45f3c', 422, 0, '2025-03-21 15:48:22', '2025-03-21 15:48:22'),
('835fcdbe11e14dbd8742e84d64ae9eb6', 378, 0, '2025-03-20 21:05:14', '2025-03-20 21:05:14'),
('838bd2a9210343deab9700f2e4c6bb54', 368, 0, '2025-03-20 19:09:02', '2025-03-20 19:09:02'),
('83d61b93c2134685a88655a439988d30', 303, 0, '2025-03-20 00:08:39', '2025-03-20 00:08:39'),
('8428aa16316545f0a82c2c319ac63277', 55, 0, '2025-03-03 12:07:26', '2025-03-03 12:07:26'),
('84539c73095a45c0a0abf8b73dc79010', 125, 0, '2025-03-16 11:58:03', '2025-03-16 11:58:03'),
('84ef938e5b524c43aabbd1c43b0f8e79', 127, 0, '2025-03-16 12:29:17', '2025-03-16 12:29:17'),
('85592a6811d749c8931a56aed5ad4c10', 477, 0, '2025-03-31 17:02:32', '2025-03-31 17:02:32'),
('856fdbd1c0d54291b77bd87341eb4c41', 249, 0, '2025-03-19 15:06:46', '2025-03-19 15:06:46'),
('85ffb970a47f4723964edf2d6e91fda8', 314, 0, '2025-03-20 04:53:28', '2025-03-20 04:53:28'),
('8623a57c20874346ade37a97b2767b3f', 142, 0, '2025-03-16 22:48:59', '2025-03-16 22:48:59'),
('862da588ce8445c3bee27d51f18880cb', 83, 0, '2025-03-11 15:37:27', '2025-03-11 15:37:27'),
('86b638f9c6294d92b2911bee7a6d44be', 357, 0, '2025-03-20 17:51:23', '2025-03-20 17:51:23'),
('877b764b8ebd4daea6d1644e3da3d593', 459, 0, '2025-03-25 19:12:15', '2025-03-25 19:12:15'),
('8789533df6ba4a03a1de94b1d3b83db2', 250, 0, '2025-03-19 15:15:45', '2025-03-19 15:15:45'),
('883b46a0df2e42d2850e9fd2d82a62f8', 86, 0, '2025-03-14 04:53:05', '2025-03-14 04:53:05'),
('8a24f55d81914b7fa734a3c61efc8381', 469, 0, '2025-03-29 15:11:20', '2025-03-29 15:11:20'),
('8a57744eae0346dca0ab909e1d5ce60c', 315, 0, '2025-03-20 05:00:23', '2025-03-20 05:00:23'),
('8af1ae02a36d457e8fa645035a1d7b27', 287, 0, '2025-03-19 21:18:46', '2025-03-19 21:18:46'),
('8bc278c490174ef1bdcc7b5bac4e7eb2', 169, 0, '2025-03-17 21:43:02', '2025-03-17 21:43:02'),
('8cae396293604195830d879ce7537254', 126, 0, '2025-03-16 12:17:58', '2025-03-16 12:17:58'),
('8ce347fecd7f429b8c2d2faa28197fba', 152, 0, '2025-03-17 11:23:44', '2025-03-17 11:23:44'),
('8d36c4b1e4dc4c14ae7807f642136960', 330, 0, '2025-03-20 11:24:14', '2025-03-20 11:24:14'),
('8d7973009b884d0da39f5bcf2fb75ee2', 136, 0, '2025-03-16 18:57:19', '2025-03-16 18:57:19'),
('8e2cf8cea38e45c282a8c924e791fff6', 197, 0, '2025-03-18 14:34:13', '2025-03-18 14:34:13'),
('8f66c1ffbec44fd1849d21e42e1aaf7f', 408, 0, '2025-03-21 06:42:51', '2025-03-21 06:42:51'),
('92dedd0c54f14476aac6572272440d6d', 120, 0, '2025-03-16 02:07:30', '2025-03-16 02:07:30'),
('9347f067522e41628e44d939e26c7b3e', 183, 0, '2025-03-18 09:19:54', '2025-03-18 09:19:54'),
('937a343babfa4296a832914d241de8e2', 44, 0, '2025-03-02 23:26:52', '2025-03-02 23:26:52'),
('9383a44838bd47858d94fd314a57ec36', 393, 0, '2025-03-20 23:22:52', '2025-03-20 23:22:52'),
('9486c6b76c4b476083bd18f7e8f3647f', 13, 0, '2025-02-24 02:49:36', '2025-02-24 02:49:36'),
('950a7a5bac5547418fb9d7f7e29941f7', 278, 0, '2025-03-19 20:07:01', '2025-03-19 20:07:01'),
('95df2b1774c942bc991a8ab1223af293', 283, 0, '2025-03-19 20:22:02', '2025-03-19 20:22:02'),
('962376145ed542f69a160c43f2e3872a', 59, 0, '2025-03-03 17:50:37', '2025-03-03 17:50:37'),
('98b59163231f47f29488c7e333733c51', 413, 0, '2025-03-21 12:48:51', '2025-03-21 12:48:51'),
('99c8c8f7a3b6466aa94a265d88a9c43f', 340, 0, '2025-03-20 15:26:08', '2025-03-20 15:26:08'),
('9a10ad721afc46c6a71a8c4c38a3814b', 223, 0, '2025-03-19 04:17:26', '2025-03-19 04:17:26'),
('9a12456e3b264efa80c12e33e803fb8f', 398, 0, '2025-03-21 01:03:59', '2025-03-21 01:03:59'),
('9af669dc36554df9914a216ff8fb9a07', 339, 0, '2025-03-20 14:40:04', '2025-03-20 14:40:04'),
('9afc9298a3324ebb9764d9aa4d71724d', 334, 0, '2025-03-20 13:28:25', '2025-03-20 13:28:25'),
('9bcf3befdc68495e845bf50f07eeb98f', 305, 0, '2025-03-20 00:30:33', '2025-03-20 00:30:33'),
('9c7f8b371eb14ba8b874052533607e6b', 154, 0, '2025-03-17 12:27:20', '2025-03-17 12:27:20'),
('9c93daf499174a43a768a257cf76e775', 444, 0, '2025-03-22 23:13:36', '2025-03-22 23:13:36'),
('9cf2415f2cdc44e291f3edef4c52b717', 185, 0, '2025-03-18 10:45:57', '2025-03-18 10:45:57'),
('9d7e126aaaea46f3a73cef57c8b4c9c5', 369, 0, '2025-03-20 19:17:36', '2025-03-20 19:17:36'),
('9e73b6161850418eb6b264695d4eb754', 60, 0, '2025-03-03 19:56:12', '2025-03-03 19:56:12'),
('9e9102fa8b034894a20678d69a80e6fc', 253, 0, '2025-03-19 15:45:37', '2025-03-19 15:45:37'),
('9e9c1083ea6d4ea694dd6c8ad9d6c4f5', 261, 0, '2025-03-19 17:52:21', '2025-03-19 17:52:21'),
('9f2d35dbfcf64e3e93942dd5a9ab94fd', 224, 0, '2025-03-19 04:53:36', '2025-03-19 04:53:36'),
('9f6534b33db7474386aba8709fa2e021', 375, 0, '2025-03-20 20:33:14', '2025-03-20 20:33:14'),
('a094d8b3c975466abc83a53e857e7097', 31, 0, '2025-03-02 08:09:13', '2025-03-02 08:09:13'),
('a0cbb3c915cd40c08d0843fd6e46fd4e', 300, 0, '2025-03-19 23:40:21', '2025-03-19 23:40:21'),
('a0d9f2dfdef14a7ca08374a2e3c9d9f0', 113, 0, '2025-03-15 15:17:58', '2025-03-15 15:17:58'),
('a0e1dda578d14153bc67c593c6f127c1', 199, 0, '2025-03-18 15:09:37', '2025-03-18 15:09:37'),
('a2e527b18e534cbd8a768a4acf45c63a', 324, 0, '2025-03-20 09:23:18', '2025-03-20 09:23:18'),
('a34e3ae1671544e4b3b47909bc525bd1', 89, 0, '2025-03-14 15:07:27', '2025-03-14 15:07:27'),
('a41847553cc94f0090a02eeed1c32e8b', 155, 0, '2025-03-17 15:25:35', '2025-03-17 15:25:35'),
('a42d104c4cf444ef840a56aff38b1de6', 205, 0, '2025-03-18 20:09:55', '2025-03-18 20:09:55'),
('a47b763e347d48549656895381cba3d4', 350, 0, '2025-03-20 16:30:30', '2025-03-20 16:30:30'),
('a4f876f98141432785d652e53aad3825', 209, 0, '2025-03-18 21:22:39', '2025-03-18 21:22:39'),
('a5b41db6c1054bccbd6ea526663f2ad4', 2, 0, '2024-12-05 11:54:31', '2024-12-05 11:54:31'),
('a64574770ed7405fac1ed31303c60de1', 15, 0, '2025-02-24 03:02:13', '2025-02-24 03:02:13'),
('a78621c515e246b6a6ce095a23163184', 389, 0, '2025-03-20 22:49:58', '2025-03-20 22:49:58'),
('a7b74569c38447c7ad3d26a411e1a2e0', 313, 0, '2025-03-20 04:48:13', '2025-03-20 04:48:13'),
('a82ffc512ef84a378e028a3c18fcbc98', 38, 0, '2025-03-02 15:25:30', '2025-03-02 15:25:30'),
('a85476bb64024421b0a4346e53f4f237', 436, 0, '2025-03-21 23:33:31', '2025-03-21 23:33:31'),
('a87b953f2f4d40c0973d3d152e4d3732', 10, 0, '2025-02-24 01:31:58', '2025-02-24 01:31:58'),
('a9b6b9491710475fb25d0b54ea04a750', 57, 0, '2025-03-03 13:55:18', '2025-03-03 13:55:18'),
('aa3d1242fe654858ae90c0e5aed6d8ae', 226, 0, '2025-03-19 05:18:25', '2025-03-19 05:18:25'),
('aab4f57d11884345919fb10cc7846d8d', 381, 0, '2025-03-20 21:29:16', '2025-03-20 21:29:16'),
('aaf81ccb4912455c98a11109c06f8e15', 373, 0, '2025-03-20 19:58:06', '2025-03-20 19:58:06'),
('ab0a2c679da84150acab43ccc488f102', 219, 0, '2025-03-19 01:31:31', '2025-03-19 01:31:31'),
('ab557595219345f499043426cee2b57a', 307, 0, '2025-03-20 01:23:00', '2025-03-20 01:23:00'),
('abdf2ec95ff24a4688d3e87fefd9faec', 161, 0, '2025-03-17 19:02:41', '2025-03-17 19:02:41'),
('ad4fc7473ee0495ea1681aa80e896807', 353, 0, '2025-03-20 16:46:33', '2025-03-20 16:46:33'),
('ae5fe3dcfe8d43deab93ff3e70d354d0', 442, 0, '2025-03-22 02:28:43', '2025-03-22 02:28:43'),
('aea3561c2343478c8b2d71415d989419', 202, 0, '2025-03-18 15:49:07', '2025-03-18 15:49:07'),
('aebab5fa600f4f17ab8bbb62937d26a0', 480, 0, '2025-04-02 04:17:24', '2025-04-02 04:17:24'),
('af8a878b37064760845b69381634b010', 474, 0, '2025-03-30 21:47:14', '2025-03-30 21:47:14'),
('afa759a57f0c4170b9f61509e909bd04', 128, 0, '2025-03-16 12:37:50', '2025-03-16 12:37:50'),
('b047fdeb69784be19a0382f3e1795802', 159, 0, '2025-03-17 17:00:06', '2025-03-17 17:00:06'),
('b04bb9edaff74629bda6d58a741df125', 225, 0, '2025-03-19 05:13:41', '2025-03-19 05:13:41'),
('b0626151155d49f98aea2e4c57ba3f33', 388, 0, '2025-03-20 22:25:09', '2025-03-20 22:25:09'),
('b07bd2a1819349a683310b809ffac0a0', 466, 0, '2025-03-28 15:30:55', '2025-03-28 15:30:55'),
('b10a389a605c4fe7a5e776b79becb783', 475, 0, '2025-03-31 10:21:03', '2025-03-31 10:21:03'),
('b17af8ce00a3413b9b5288428bd19374', 465, 0, '2025-03-28 12:46:16', '2025-03-28 12:46:16'),
('b21611a8baec48d381114527d77d0865', 73, 0, '2025-03-04 08:37:10', '2025-03-04 08:37:10'),
('b287e5b4c53245ce936fdc687f834653', 51, 0, '2025-03-03 11:04:04', '2025-03-03 11:04:04'),
('b346b1f9b03d44abb528ebf5a95b8306', 231, 0, '2025-03-19 09:26:45', '2025-03-19 09:26:45'),
('b39fccc53d7440569037d19b30e212fc', 162, 0, '2025-03-17 19:34:25', '2025-03-17 19:34:25'),
('b40df0f8081a46e2804e54128229aaf0', 374, 0, '2025-03-20 20:10:14', '2025-03-20 20:10:14'),
('b626e7835c6d4b7e8278632667d71203', 63, 0, '2025-03-03 21:35:01', '2025-03-03 21:35:01'),
('b74caa1c2e8845ff9d6f064207487988', 428, 0, '2025-03-21 19:21:19', '2025-03-21 19:21:19'),
('b7579ef9a09e44c59e6992fe836895a3', 208, 0, '2025-03-18 21:14:51', '2025-03-18 21:14:51'),
('b773f0be36014cf5b59576e326c63e8a', 257, 0, '2025-03-19 16:23:28', '2025-03-19 16:23:28'),
('b807c486e9ab474bace8ba38d2f41b90', 329, 0, '2025-03-20 11:23:26', '2025-03-20 11:23:26'),
('b868b6cdfb394cdcbe2c20aec8df784b', 354, 0, '2025-03-20 17:02:36', '2025-03-20 17:02:36'),
('b9df01d06aa642239c9c2ead93408c2a', 156, 0, '2025-03-17 15:29:14', '2025-03-17 15:29:14'),
('ba204d9303d04037ad8bf7c46cc1eb76', 122, 0, '2025-03-16 09:57:44', '2025-03-16 09:57:44'),
('ba2103dbedde466ead3e39a7dda4beb2', 342, 0, '2025-03-20 15:26:49', '2025-03-20 15:26:49'),
('ba62bafaa22148998b3a206cb8da74db', 299, 0, '2025-03-19 23:32:30', '2025-03-19 23:32:30'),
('ba78918f1d484bb4a280502886b87d41', 174, 0, '2025-03-17 23:17:13', '2025-03-17 23:17:13'),
('ba803af846264fa6b8fa59548bda5e0b', 184, 0, '2025-03-18 09:51:50', '2025-03-18 09:51:50'),
('bb50e2f109bb48bc9530e5442c6a7eff', 118, 0, '2025-03-16 00:38:36', '2025-03-16 00:38:36'),
('bbbeb2b7fc0d4aeb9b6d3575fb7a5ff0', 71, 0, '2025-03-04 07:13:33', '2025-03-04 07:13:33'),
('bbc2f930b13e436ebccc18b6fbf26386', 242, 0, '2025-03-19 13:03:15', '2025-03-19 13:03:15'),
('bcbea17fedf6490dba943e26fdf719d3', 401, 0, '2025-03-21 01:51:49', '2025-03-21 01:51:49'),
('bccfc3970d6c419c94b3efc517bb0559', 322, 0, '2025-03-20 09:07:44', '2025-03-20 09:07:44'),
('bd048318a622484186da3d34118e8ba3', 181, 0, '2025-03-18 06:52:47', '2025-03-18 06:52:47'),
('bd635ff894274d6d91471ff9de8c3089', 244, 0, '2025-03-19 13:55:02', '2025-03-19 13:55:02'),
('bea06670919a44caa102edde3410ec10', 188, 0, '2025-03-18 11:32:56', '2025-03-18 11:32:56'),
('bf37d95e629f45e8a17865b875836d56', 172, 0, '2025-03-17 22:16:44', '2025-03-17 22:16:44'),
('bf8d2e7d01b4425bbf449574293dc46b', 21, 0, '2025-02-24 04:24:44', '2025-02-24 04:24:44'),
('c0ae6ef1db7d40c2aa16f4962fabd655', 462, 0, '2025-03-26 04:23:04', '2025-03-26 04:23:04'),
('c1a0f9879f844e8bb8923cd85dff8f57', 163, 0, '2025-03-17 19:35:40', '2025-03-17 19:35:40'),
('c1ef619675e548b0bbc4bdba77239bce', 411, 0, '2025-03-21 11:34:43', '2025-03-21 11:34:43'),
('c3079016d7c7479b96cb15a1d3dcd5ec', 235, 0, '2025-03-19 10:36:35', '2025-03-19 10:36:35'),
('c3c93f7c80c94355bc0535fbfb245791', 344, 0, '2025-03-20 15:42:06', '2025-03-20 15:42:06'),
('c44e979c2a884ba98542beb871fffc1e', 43, 0, '2025-03-02 22:24:49', '2025-03-02 22:24:49'),
('c4a6a8f47e9042cb8aeeae700656720e', 404, 0, '2025-03-21 03:20:12', '2025-03-21 03:20:12'),
('c4ac44a5e1494e0d812b3fb0316824c0', 254, 0, '2025-03-19 15:50:16', '2025-03-19 15:50:16'),
('c4fccf21a497435e922d5327d113352e', 437, 0, '2025-03-21 23:52:05', '2025-03-21 23:52:05'),
('c533e19f3cc044579848b2855745c04d', 367, 0, '2025-03-20 19:08:18', '2025-03-20 19:08:18'),
('c57ed65d1ec847d7a83b59ad1f01d6ba', 414, 0, '2025-03-21 13:23:37', '2025-03-21 13:23:37'),
('c62705764a15491c87f8571649c07193', 148, 0, '2025-03-17 08:47:21', '2025-03-17 08:47:21'),
('c66175a0141d466b847f809eff5bd69a', 186, 0, '2025-03-18 10:50:37', '2025-03-18 10:50:37'),
('c76c131154b64c99aa698dea7aee877c', 346, 0, '2025-03-20 15:57:51', '2025-03-20 15:57:51'),
('c783dd0658a64956a1c3e01a885bd4bf', 348, 0, '2025-03-20 16:27:29', '2025-03-20 16:27:29'),
('c994de046cce4a93985146966d9502f8', 365, 0, '2025-03-20 18:58:32', '2025-03-20 18:58:32'),
('ca806bce2f194af981c5e020d7843b5b', 335, 0, '2025-03-20 13:48:53', '2025-03-20 13:48:53'),
('cb23dec2cfaa4d629d4d2a3316e5fa76', 434, 0, '2025-03-21 21:15:50', '2025-03-21 21:15:50'),
('cb273359a4d949b58e639df3b72a5384', 245, 0, '2025-03-19 13:59:44', '2025-03-19 13:59:44'),
('cbcf2206c03842c8910cbfb1fdb6b6e2', 359, 0, '2025-03-20 18:04:33', '2025-03-20 18:04:33'),
('cbd9abe7907a4ec6810ba47604994e08', 358, 0, '2025-03-20 17:58:12', '2025-03-20 17:58:12'),
('cbe96d8535fa42b09ea486ca90cc47a5', 431, 0, '2025-03-21 20:09:03', '2025-03-21 20:09:03'),
('ccde19504b85497a8c011cf24433e798', 371, 0, '2025-03-20 19:28:30', '2025-03-20 19:28:30'),
('cdbc6d45c30d45df90bd458698f70829', 24, 0, '2025-03-02 01:30:24', '2025-03-02 01:30:24'),
('cdee995a2eb14b6ca4b6751f662d7abe', 52, 0, '2025-03-03 11:09:00', '2025-03-03 11:09:00'),
('cfe3fa0274de4ff9a463e7835d1a20aa', 123, 0, '2025-03-16 10:34:26', '2025-03-16 10:34:26'),
('d029cb743f354b50b7af97401a0248c7', 22, 0, '2025-02-24 04:27:22', '2025-02-24 04:27:22'),
('d068abfe04bc453fa40823849b733f24', 272, 0, '2025-03-19 19:36:55', '2025-03-19 19:36:55'),
('d08dcd3426414ea7a711e54d2e90986d', 108, 0, '2025-03-15 00:10:13', '2025-03-15 00:10:13'),
('d1abb67e2901443080eb8eef44eb8874', 423, 0, '2025-03-21 16:10:40', '2025-03-21 16:10:40'),
('d1f1733b5d5c4bcb9f45bae7cebb5ce0', 416, 0, '2025-03-21 13:37:43', '2025-03-21 13:37:43'),
('d21340fb087249e69cb2ef9347022d12', 427, 0, '2025-03-21 19:12:08', '2025-03-21 19:12:08'),
('d2851d71c41245a8938e520739c9b223', 67, 0, '2025-03-04 00:36:37', '2025-03-04 00:36:37'),
('d3ed8a88fb14460e8df25786cfb3705b', 297, 0, '2025-03-19 23:07:11', '2025-03-19 23:07:11'),
('d427968288be4a9da0d86a314723b228', 479, 0, '2025-04-01 03:02:34', '2025-04-01 03:02:34'),
('d457d03708fe4329b19c5750581dbed9', 259, 0, '2025-03-19 16:55:03', '2025-03-19 16:55:03'),
('d463aee9d9374308979ee5b9474ca5fc', 323, 0, '2025-03-20 09:14:48', '2025-03-20 09:14:48'),
('d484727e14f34561957c2e73c29c0ffb', 289, 0, '2025-03-19 21:27:16', '2025-03-19 21:27:16'),
('d675a99c867d4572b694446d19b9a0cf', 164, 0, '2025-03-17 19:38:01', '2025-03-17 19:38:01'),
('d71337a39b42451da91075c405def16c', 4, 0, '2025-01-03 20:13:41', '2025-01-03 20:13:41'),
('d7183889a58b4361976ea75b0cd6cdb6', 90, 0, '2025-03-14 16:44:31', '2025-03-14 16:44:31'),
('d7719f7e7191442d944a0d004ebe588d', 158, 0, '2025-03-17 16:25:32', '2025-03-17 16:25:32'),
('d7c647d84fcd436fad9c3a027f54562f', 34, 0, '2025-03-02 11:30:21', '2025-03-02 11:30:21'),
('d843b655d75849959a42defab3cbe1fc', 66, 0, '2025-03-03 23:58:34', '2025-03-03 23:58:34'),
('d855bab0cfe44450b6de376869df7edd', 317, 0, '2025-03-20 07:03:44', '2025-03-20 07:03:44'),
('d94662d34ea9425b9023ea206b43d3d9', 17, 0, '2025-02-24 03:41:42', '2025-02-24 03:41:42'),
('d952c19855dc48788134f72dabbc45e5', 166, 0, '2025-03-17 19:44:06', '2025-03-17 19:44:06'),
('d971ee1948fb47f7a7e382c7dba5bf6c', 295, 0, '2025-03-19 22:41:18', '2025-03-19 22:41:18'),
('d995ea97f9494c169f1187967b502e85', 284, 0, '2025-03-19 20:58:47', '2025-03-19 20:58:47'),
('da1c1ff255dc4e7bb0d4f6ef1da1a422', 84, 0, '2025-03-12 19:54:29', '2025-03-12 19:54:29'),
('da86f6284c0d4f2cabcb0188b1f1dc14', 114, 0, '2025-03-15 15:24:04', '2025-03-15 15:24:04'),
('da99e5493d464401894df7e3635a2f07', 387, 0, '2025-03-20 22:22:42', '2025-03-20 22:22:42'),
('db137fda1271453eb589a00d0ba1f8cd', 318, 0, '2025-03-20 07:10:57', '2025-03-20 07:10:57'),
('db597d6cb4534f37867dd5349f4f5a29', 69, 0, '2025-03-04 00:53:36', '2025-03-04 00:53:36'),
('dc5b2e2b71d34487b019fdb388185042', 406, 0, '2025-03-21 04:31:11', '2025-03-21 04:31:11'),
('dd02be8161c74118804d2c6301ce4b68', 376, 0, '2025-03-20 20:44:53', '2025-03-20 20:44:53'),
('de1a539af003442084ce42c3ff4d0c33', 386, 0, '2025-03-20 22:12:42', '2025-03-20 22:12:42'),
('dea0287ad3b04f35b90a711d14f00c3f', 99, 0, '2025-03-14 21:43:21', '2025-03-14 21:43:21'),
('deab99deaef84ab9aa08e72de88d72b6', 268, 0, '2025-03-19 19:00:43', '2025-03-19 19:00:43'),
('ded67d03d82a4c22a84b3bd2958d48da', 49, 0, '2025-03-03 10:44:00', '2025-03-03 10:44:00'),
('df1b5ef66eee4d539f29aaf42430d091', 237, 0, '2025-03-19 11:24:13', '2025-03-19 11:24:13'),
('df7a9e23196042b2a8a09dfb7164f353', 45, 0, '2025-03-03 02:09:45', '2025-03-03 02:09:45'),
('dfd8c3c6410144198e186cbc000a3c15', 115, 0, '2025-03-15 17:29:54', '2025-03-15 17:29:54'),
('e05bac37b46040d5b68ed36ce61be2d5', 341, 0, '2025-03-20 15:26:32', '2025-03-20 15:26:32'),
('e0948c55c81341c380114a08f7d7b2e9', 94, 0, '2025-03-14 20:11:15', '2025-03-14 20:11:15'),
('e130fb3be68b47f5a6c3bbd0be803a0f', 165, 0, '2025-03-17 19:43:08', '2025-03-17 19:43:08'),
('e1b95134c8e84783b26964020a50f111', 65, 0, '2025-03-03 23:47:13', '2025-03-03 23:47:13'),
('e256dda1ff21462b9515a7e5975436b2', 77, 0, '2025-03-04 16:25:39', '2025-03-04 16:25:39'),
('e269cac8da9d4afc9f5d217236048103', 265, 0, '2025-03-19 18:17:43', '2025-03-19 18:17:43'),
('e27c5b61f6f74ae99477c6f5415bbe13', 214, 0, '2025-03-18 22:15:26', '2025-03-18 22:15:26'),
('e2af91fa94264ac6a40d593cb681b84c', 107, 0, '2025-03-14 23:44:23', '2025-03-14 23:44:23'),
('e35d496d09a745dd9b3c097acdd38ce5', 238, 0, '2025-03-19 11:45:14', '2025-03-19 11:45:14'),
('e3de32a4f8484b86914f95311fe80b31', 271, 0, '2025-03-19 19:19:44', '2025-03-19 19:19:44'),
('e622c1d1a2f24d34bf9f00a7a5287945', 390, 0, '2025-03-20 22:53:00', '2025-03-20 22:53:00'),
('e63266f06fac497da32ccc5e4f1ad3a5', 316, 0, '2025-03-20 05:59:00', '2025-03-20 05:59:00'),
('e64bb74017934d7e9a74a6d36d18cd9e', 88, 0, '2025-03-14 14:25:59', '2025-03-14 14:25:59'),
('e70303c7285842ce8cd282f6f3434d89', 248, 0, '2025-03-19 15:00:28', '2025-03-19 15:00:28'),
('e7e21b3eaa1e4e3aa76c625609c935d9', 138, 0, '2025-03-16 21:34:16', '2025-03-16 21:34:16'),
('e81fce29861b4eb0840f409cb6f555f8', 53, 0, '2025-03-03 11:45:32', '2025-03-03 11:45:32'),
('e8a25df58d344650a90e7c9d14800b88', 397, 0, '2025-03-21 00:23:56', '2025-03-21 00:23:56'),
('e906606d63744f11bc87a35372a1078c', 438, 0, '2025-03-22 00:14:21', '2025-03-22 00:14:21'),
('e939963874dd4c85bde8a67c8800e9d9', 441, 0, '2025-03-22 01:30:10', '2025-03-22 01:30:10'),
('e9b674178b2a4603b0512e1efa7635c4', 203, 0, '2025-03-18 18:20:14', '2025-03-18 18:20:14'),
('ea65d8b50c7b4094947f7d650dac6244', 106, 0, '2025-03-14 23:31:38', '2025-03-14 23:31:38'),
('ea8c5a8717574d74bbc89f28cedf53c2', 191, 0, '2025-03-18 12:22:57', '2025-03-18 12:22:57'),
('ec60843f105343f0853290d50927cb3d', 46, 0, '2025-03-03 08:07:30', '2025-03-03 08:07:30'),
('ed70b9f9fcfe4560bd46e4ce8c8e23e9', 3, 0, '2024-12-05 14:56:33', '2024-12-05 14:56:33'),
('edb1264404154cd0b82d95cd065ee347', 360, 0, '2025-03-20 18:08:40', '2025-03-20 18:08:40'),
('eec83f74437c48f6a98175b87397ed6e', 19, 0, '2025-02-24 04:03:44', '2025-02-24 04:03:44'),
('ef2e4886aefa4fd3887a7f2ee31786ce', 267, 0, '2025-03-19 18:53:28', '2025-03-19 18:53:28'),
('ef5477ee39434afcbd2c07ed6948941f', 190, 0, '2025-03-18 12:17:50', '2025-03-18 12:17:50'),
('ef68d563f7cb43268a72d646d277c132', 222, 0, '2025-03-19 03:19:21', '2025-03-19 03:19:21'),
('f038c692faad4ed0b9a017640473d0f1', 451, 0, '2025-03-25 03:50:35', '2025-03-25 03:50:35'),
('f06938a4e21d44a8996d9986b6b9d165', 396, 0, '2025-03-21 00:15:19', '2025-03-21 00:15:19'),
('f0d97e7678064a6ca2b16e30f0952043', 180, 0, '2025-03-18 06:43:08', '2025-03-18 06:43:08'),
('f0e2980f0b42473d91d3fdf9493677cf', 453, 0, '2025-03-25 09:06:20', '2025-03-25 09:06:20'),
('f21f1973e5094d1080557c84fa3df91b', 30, 0, '2025-03-02 06:24:18', '2025-03-02 06:24:18'),
('f227f0171bbe438b8ecad3f79356ab23', 8, 0, '2025-02-02 16:28:48', '2025-02-02 16:28:48'),
('f26690c70c37492dbee3921b27a2a717', 192, 0, '2025-03-18 12:37:09', '2025-03-18 12:37:09'),
('f2a393b780c94abcb3ae08029097b544', 121, 0, '2025-03-16 05:11:25', '2025-03-16 05:11:25'),
('f2ef839b7f054d1e8f75df30cd70097a', 277, 0, '2025-03-19 20:04:21', '2025-03-19 20:04:21'),
('f3390db6a64646c29d4f7c675e0ff938', 308, 0, '2025-03-20 02:06:31', '2025-03-20 02:06:31'),
('f384f4d7a5af4430b3418ba29acc35cf', 439, 0, '2025-03-22 00:59:58', '2025-03-22 00:59:58'),
('f3f2bf4e664549de869047ffb872902d', 349, 0, '2025-03-20 16:28:23', '2025-03-20 16:28:23'),
('f3f73deae9394de5b8e4ff7fa58de57e', 243, 0, '2025-03-19 13:28:32', '2025-03-19 13:28:32'),
('f40ccb10f652437da17d8c15b01174e6', 260, 0, '2025-03-19 17:45:15', '2025-03-19 17:45:15'),
('f4895579eb2444b49b32a1c5f55628b9', 14, 0, '2025-02-24 02:58:26', '2025-02-24 02:58:26'),
('f4940412dfc2406aa436f14e80943ea5', 37, 0, '2025-03-02 14:51:35', '2025-03-02 14:51:35'),
('f495ab372bd34125b7860b91319e3264', 262, 0, '2025-03-19 18:12:40', '2025-03-19 18:12:40'),
('f65cb75bc8154e63a4157be8866ca2b9', 395, 0, '2025-03-20 23:54:42', '2025-03-20 23:54:42'),
('f6ceac14427e48e18ae9a99c6689230d', 61, 0, '2025-03-03 20:32:40', '2025-03-03 20:32:40'),
('f74d7e967f3547f6ba4567cd46685fe2', 275, 0, '2025-03-19 19:49:10', '2025-03-19 19:49:10'),
('f7cc1e9c87a247fab65e695b98af5085', 26, 0, '2025-03-02 02:04:38', '2025-03-02 02:04:38'),
('fa8e0312fb50479abba2c50f836e704b', 76, 0, '2025-03-04 15:55:44', '2025-03-04 15:55:44'),
('faa3566ac6454e48bb434ec92ee14628', 292, 0, '2025-03-19 22:37:55', '2025-03-19 22:37:55'),
('faae18f1fc1146b4b0e14fc693c99297', 361, 0, '2025-03-20 18:14:24', '2025-03-20 18:14:24'),
('fab714fc77d444dbb1400dc917e1727d', 95, 0, '2025-03-14 20:19:49', '2025-03-14 20:19:49'),
('fae6d7fe285a4238b40e2dbc1489a6ee', 440, 0, '2025-03-22 01:03:10', '2025-03-22 01:03:10'),
('fae76f71fb684ee082a6c746f07e5d54', 301, 0, '2025-03-19 23:51:40', '2025-03-19 23:51:40'),
('fb15139f77904503b34cc9f53bb2ab79', 282, 0, '2025-03-19 20:18:22', '2025-03-19 20:18:22'),
('fb38e8e2a4de4c73b96917137625ec26', 91, 0, '2025-03-14 17:46:25', '2025-03-14 17:46:25'),
('fb501d80710444f89b2f699bae6bf566', 72, 0, '2025-03-04 07:57:17', '2025-03-04 07:57:17'),
('fbd2cee71b48470d8afd13220f24cbf7', 274, 0, '2025-03-19 19:48:09', '2025-03-19 19:48:09'),
('fc8925e918c74393b58d2d737a9c5ffc', 146, 0, '2025-03-17 07:12:47', '2025-03-17 07:12:47'),
('fd0fd717d79742b993000301d271f323', 20, 0, '2025-02-24 04:22:50', '2025-02-24 04:22:50'),
('fd2e2fc64fe84386bfe3191552ba4d0e', 78, 0, '2025-03-04 17:35:43', '2025-03-04 17:35:43'),
('fd5c070f97044a5cbdeddd0e301a8f39', 372, 0, '2025-03-20 19:49:10', '2025-03-20 19:49:10'),
('feab58ec9fb9499b97fd21c3c747223c', 258, 0, '2025-03-19 16:30:26', '2025-03-19 16:30:26'),
('ffb66b3d06d44d8f894d4bcb636cb812', 276, 0, '2025-03-19 19:55:42', '2025-03-19 19:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `fee` double DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` varchar(191) DEFAULT NULL,
  `payment_identifier` varchar(191) DEFAULT NULL,
  `stripe_payout_id` varchar(191) DEFAULT NULL,
  `stripe_transfer_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_user_id_foreign` (`user_id`),
  ADD KEY `attachments_post_id_foreign` (`post_id`),
  ADD KEY `attachments_message_id_foreign` (`message_id`),
  ADD KEY `attachments_type_index` (`type`),
  ADD KEY `attachments_payment_request_id_foreign` (`payment_request_id`),
  ADD KEY `attachments_coconut_id_index` (`coconut_id`);

--
-- Indexes for table `attachment_category`
--
ALTER TABLE `attachment_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attachment_category_attachment_id_content_category_id_unique` (`attachment_id`,`content_category_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_messages_email_index` (`email`);

--
-- Indexes for table `content_categories`
--
ALTER TABLE `content_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`),
  ADD KEY `countries_country_code_index` (`country_code`),
  ADD KEY `countries_phone_code_index` (`phone_code`);

--
-- Indexes for table `country_taxes`
--
ALTER TABLE `country_taxes`
  ADD KEY `country_taxes_tax_id_foreign` (`tax_id`),
  ADD KEY `country_taxes_country_id_foreign` (`country_id`);

--
-- Indexes for table `creator_categories`
--
ALTER TABLE `creator_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creator_category`
--
ALTER TABLE `creator_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `creator_category_user_id_creator_category_id_unique` (`user_id`,`creator_category_id`);

--
-- Indexes for table `creator_offers`
--
ALTER TABLE `creator_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `creator_offers_user_id_foreign` (`user_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_users`
--
ALTER TABLE `featured_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `global_announcements`
--
ALTER TABLE `global_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_invoice_id_unique` (`invoice_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memberships_user_id_foreign` (`user_id`);

--
-- Indexes for table `membership_creators`
--
ALTER TABLE `membership_creators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membership_creators_creator_id_foreign` (`creator_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_from_user_id_foreign` (`from_user_id`),
  ADD KEY `notifications_to_user_id_foreign` (`to_user_id`),
  ADD KEY `notifications_post_id_foreign` (`post_id`),
  ADD KEY `notifications_post_comment_id_foreign` (`post_comment_id`),
  ADD KEY `notifications_subscription_id_foreign` (`subscription_id`),
  ADD KEY `notifications_transaction_id_foreign` (`transaction_id`),
  ADD KEY `notifications_reaction_id_foreign` (`reaction_id`),
  ADD KEY `notifications_withdrawal_id_foreign` (`withdrawal_id`),
  ADD KEY `notifications_type_index` (`type`),
  ADD KEY `notifications_user_message_id_index` (`user_message_id`),
  ADD KEY `notifications_stream_id_foreign` (`stream_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_requests_user_id_foreign` (`user_id`),
  ADD KEY `payment_requests_transaction_id_foreign` (`transaction_id`),
  ADD KEY `payment_requests_status_index` (`status`),
  ADD KEY `payment_requests_type_index` (`type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_status_index` (`status`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `public_pages`
--
ALTER TABLE `public_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `public_pages_slug_index` (`slug`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reactions_user_id_post_id_unique` (`user_id`,`post_id`),
  ADD UNIQUE KEY `reactions_user_id_post_comment_id_unique` (`user_id`,`post_comment_id`),
  ADD KEY `reactions_post_id_foreign` (`post_id`),
  ADD KEY `reactions_post_comment_id_foreign` (`post_comment_id`),
  ADD KEY `reactions_reaction_type_index` (`reaction_type`);

--
-- Indexes for table `referral_code_usages`
--
ALTER TABLE `referral_code_usages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_code_usages_used_by_index` (`used_by`),
  ADD KEY `referral_code_usages_referral_code_index` (`referral_code`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewards_from_user_id_index` (`from_user_id`),
  ADD KEY `rewards_to_user_id_index` (`to_user_id`),
  ADD KEY `rewards_reward_type_index` (`reward_type`),
  ADD KEY `rewards_transaction_id_index` (`transaction_id`),
  ADD KEY `rewards_referral_code_usage_id_index` (`referral_code_usage_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `streams`
--
ALTER TABLE `streams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `streams_pushr_id_unique` (`pushr_id`),
  ADD KEY `streams_user_id_foreign` (`user_id`),
  ADD KEY `streams_status_index` (`status`),
  ADD KEY `streams_slug_index` (`slug`),
  ADD KEY `streams_is_public_index` (`is_public`),
  ADD KEY `streams_requires_subscription_index` (`requires_subscription`);

--
-- Indexes for table `stream_messages`
--
ALTER TABLE `stream_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stream_messages_user_id_foreign` (`user_id`),
  ADD KEY `stream_messages_stream_id_foreign` (`stream_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_paypal_agreement_id_index` (`paypal_agreement_id`),
  ADD KEY `subscriptions_stripe_subscription_id_index` (`stripe_subscription_id`),
  ADD KEY `subscriptions_type_index` (`type`),
  ADD KEY `subscriptions_provider_index` (`provider`),
  ADD KEY `subscriptions_status_index` (`status`),
  ADD KEY `subscriptions_sender_user_id_foreign` (`sender_user_id`),
  ADD KEY `subscriptions_recipient_user_id_foreign` (`recipient_user_id`),
  ADD KEY `subscriptions_paypal_plan_id_index` (`paypal_plan_id`),
  ADD KEY `subscriptions_ccbill_subscription_id_index` (`ccbill_subscription_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_sender_user_id_foreign` (`sender_user_id`),
  ADD KEY `transactions_recipient_user_id_foreign` (`recipient_user_id`),
  ADD KEY `transactions_subscription_id_foreign` (`subscription_id`),
  ADD KEY `transactions_post_id_foreign` (`post_id`),
  ADD KEY `transactions_stream_id_foreign` (`stream_id`),
  ADD KEY `transactions_stripe_transaction_id_index` (`stripe_transaction_id`),
  ADD KEY `transactions_stripe_session_id_index` (`stripe_session_id`),
  ADD KEY `transactions_paypal_payer_id_index` (`paypal_payer_id`),
  ADD KEY `transactions_paypal_transaction_id_index` (`paypal_transaction_id`),
  ADD KEY `transactions_paypal_transaction_token_index` (`paypal_transaction_token`),
  ADD KEY `transactions_coinbase_charge_id_index` (`coinbase_charge_id`),
  ADD KEY `transactions_coinbase_transaction_token_index` (`coinbase_transaction_token`),
  ADD KEY `transactions_nowpayments_payment_id_index` (`nowpayments_payment_id`),
  ADD KEY `transactions_nowpayments_order_id_index` (`nowpayments_order_id`),
  ADD KEY `transactions_ccbill_payment_token_index` (`ccbill_payment_token`),
  ADD KEY `transactions_ccbill_transaction_id_index` (`ccbill_transaction_id`),
  ADD KEY `transactions_ccbill_subscription_id_index` (`ccbill_subscription_id`),
  ADD KEY `transactions_status_index` (`status`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_invoice_id_foreign` (`invoice_id`),
  ADD KEY `transactions_paystack_payment_token_index` (`paystack_payment_token`),
  ADD KEY `transactions_user_message_id_foreign` (`user_message_id`),
  ADD KEY `transactions_mercado_payment_token_index` (`mercado_payment_token`),
  ADD KEY `transactions_mercado_payment_id_index` (`mercado_payment_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_referral_code_unique` (`referral_code`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_auth_provider_index` (`auth_provider`),
  ADD KEY `users_auth_provider_id_index` (`auth_provider_id`),
  ADD KEY `users_gender_id_foreign` (`gender_id`),
  ADD KEY `users_birthdate_index` (`birthdate`),
  ADD KEY `users_location_index` (`location`),
  ADD KEY `users_enable_2fa_index` (`enable_2fa`),
  ADD KEY `users_enable_geoblocking_index` (`enable_geoblocking`),
  ADD KEY `users_open_profile_index` (`open_profile`),
  ADD KEY `users_country_id_foreign` (`country_id`);

--
-- Indexes for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `user_bookmarks_post_id_foreign` (`post_id`);

--
-- Indexes for table `user_codes`
--
ALTER TABLE `user_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_codes_user_id_foreign` (`user_id`),
  ADD KEY `user_codes_code_index` (`code`);

--
-- Indexes for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_devices_user_id_foreign` (`user_id`),
  ADD KEY `user_devices_signature_index` (`signature`);

--
-- Indexes for table `user_genders`
--
ALTER TABLE `user_genders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_genders_gender_name_index` (`gender_name`);

--
-- Indexes for table `user_lists`
--
ALTER TABLE `user_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_lists_user_id_foreign` (`user_id`),
  ADD KEY `user_lists_type_index` (`type`);

--
-- Indexes for table `user_list_members`
--
ALTER TABLE `user_list_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `list_id_user_id` (`list_id`,`user_id`),
  ADD KEY `user_list_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_messages_sender_id_foreign` (`sender_id`),
  ADD KEY `user_messages_receiver_id_foreign` (`receiver_id`),
  ADD KEY `user_messages_isseen_index` (`isSeen`);

--
-- Indexes for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_reports_from_user_id_foreign` (`from_user_id`),
  ADD KEY `user_reports_post_id_index` (`post_id`),
  ADD KEY `user_reports_type_index` (`type`),
  ADD KEY `user_reports_status_index` (`status`),
  ADD KEY `user_reports_user_id_foreign` (`user_id`),
  ADD KEY `user_reports_message_id_index` (`message_id`),
  ADD KEY `user_reports_stream_id_index` (`stream_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_verifies_user_id_foreign` (`user_id`),
  ADD KEY `user_verifies_status_index` (`status`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawals_user_id_foreign` (`user_id`),
  ADD KEY `withdrawals_status_index` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment_category`
--
ALTER TABLE `attachment_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `content_categories`
--
ALTER TABLE `content_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `creator_categories`
--
ALTER TABLE `creator_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `creator_category`
--
ALTER TABLE `creator_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `creator_offers`
--
ALTER TABLE `creator_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `featured_users`
--
ALTER TABLE `featured_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_announcements`
--
ALTER TABLE `global_announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `membership_creators`
--
ALTER TABLE `membership_creators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `payment_requests`
--
ALTER TABLE `payment_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `public_pages`
--
ALTER TABLE `public_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_code_usages`
--
ALTER TABLE `referral_code_usages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `streams`
--
ALTER TABLE `streams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stream_messages`
--
ALTER TABLE `stream_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_codes`
--
ALTER TABLE `user_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_genders`
--
ALTER TABLE `user_genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_lists`
--
ALTER TABLE `user_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=971;

--
-- AUTO_INCREMENT for table `user_list_members`
--
ALTER TABLE `user_list_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_reports`
--
ALTER TABLE `user_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_verifies`
--
ALTER TABLE `user_verifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `user_messages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attachments_payment_request_id_foreign` FOREIGN KEY (`payment_request_id`) REFERENCES `payment_requests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attachments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attachments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_taxes`
--
ALTER TABLE `country_taxes`
  ADD CONSTRAINT `country_taxes_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `country_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `creator_offers`
--
ALTER TABLE `creator_offers`
  ADD CONSTRAINT `creator_offers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `featured_users`
--
ALTER TABLE `featured_users`
  ADD CONSTRAINT `featured_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `memberships`
--
ALTER TABLE `memberships`
  ADD CONSTRAINT `memberships_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `membership_creators`
--
ALTER TABLE `membership_creators`
  ADD CONSTRAINT `membership_creators_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `1` FOREIGN KEY (`user_message_id`) REFERENCES `user_messages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_post_comment_id_foreign` FOREIGN KEY (`post_comment_id`) REFERENCES `post_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_reaction_id_foreign` FOREIGN KEY (`reaction_id`) REFERENCES `reactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_stream_id_foreign` FOREIGN KEY (`stream_id`) REFERENCES `streams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_withdrawal_id_foreign` FOREIGN KEY (`withdrawal_id`) REFERENCES `withdrawals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD CONSTRAINT `payment_requests_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reactions`
--
ALTER TABLE `reactions`
  ADD CONSTRAINT `reactions_post_comment_id_foreign` FOREIGN KEY (`post_comment_id`) REFERENCES `post_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `referral_code_usages`
--
ALTER TABLE `referral_code_usages`
  ADD CONSTRAINT `referral_code_usages_used_by_foreign` FOREIGN KEY (`used_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rewards`
--
ALTER TABLE `rewards`
  ADD CONSTRAINT `rewards_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rewards_referral_code_usage_id_foreign` FOREIGN KEY (`referral_code_usage_id`) REFERENCES `referral_code_usages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rewards_to_user_id_foreign` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rewards_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `streams`
--
ALTER TABLE `streams`
  ADD CONSTRAINT `streams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stream_messages`
--
ALTER TABLE `stream_messages`
  ADD CONSTRAINT `stream_messages_stream_id_foreign` FOREIGN KEY (`stream_id`) REFERENCES `streams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stream_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_recipient_user_id_foreign` FOREIGN KEY (`recipient_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_sender_user_id_foreign` FOREIGN KEY (`sender_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_recipient_user_id_foreign` FOREIGN KEY (`recipient_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_sender_user_id_foreign` FOREIGN KEY (`sender_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_stream_id_foreign` FOREIGN KEY (`stream_id`) REFERENCES `streams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_message_id_foreign` FOREIGN KEY (`user_message_id`) REFERENCES `user_messages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `users_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `user_genders` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_bookmarks`
--
ALTER TABLE `user_bookmarks`
  ADD CONSTRAINT `user_bookmarks_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_codes`
--
ALTER TABLE `user_codes`
  ADD CONSTRAINT `user_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD CONSTRAINT `user_devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_lists`
--
ALTER TABLE `user_lists`
  ADD CONSTRAINT `user_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_list_members`
--
ALTER TABLE `user_list_members`
  ADD CONSTRAINT `user_list_members_list_id_foreign` FOREIGN KEY (`list_id`) REFERENCES `user_lists` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_list_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD CONSTRAINT `user_messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_reports`
--
ALTER TABLE `user_reports`
  ADD CONSTRAINT `user_reports_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_verifies`
--
ALTER TABLE `user_verifies`
  ADD CONSTRAINT `user_verifies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
