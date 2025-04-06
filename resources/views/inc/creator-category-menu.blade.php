<div class="content-category-menu mb-3">
    <h5 class="text-bold mt-3">Creator Categorise</h5>
    <ul class="nav flex-column category-nav">
        @foreach (\App\CreatorCategory::latest()->get() as $contentCategory)
            <li class="nav-item">
                <a href="{{ route('creator.show', $contentCategory) }}" role="button"
                    class="nav-link h-pill h-pill-primary text-muted d-flex justify-content-between">
                    <div class="d-flex justify-content-center align-items-center">
                        <div class="icon-wrapper d-flex justify-content-center align-items-center">
                            <i class="bi bi-{{ $contentCategory->icon }}"></i>
                        </div>
                        <span
                            class="d-none d-md-block d-xl-block d-lg-block ml-2 text-truncate side-menu-label">{{ $contentCategory->title }}</span>
                    </div>
                </a>
            </li>
        @endforeach
    </ul>
</div>

<style>
    .content-category-menu .category-nav .nav-item {
        margin-bottom: 0 !important;
    }

    .content-category-menu .nav-link {
        padding: 0 0.75rem;
        border-radius: 1.5rem;
        font-size: 0.9rem;
        transition: all 0.2s ease;
    }

    .content-category-menu .icon-wrapper {
        width: 1.5rem;
        height: 1.5rem;
    }

    .content-category-menu .icon-wrapper i {
        font-size: 1.2rem !important;
    }

    .content-category-menu .bi {
        font-size: 1rem;
    }

    .content-category-menu .side-menu-label {
        font-size: 0.85rem;
        margin-left: 0.5rem !important;
    }

    .content-category-menu .nav-link:hover {
        background-color: rgba(var(--bs-primary-rgb), 0.1);
        color: var(--bs-primary) !important;
    }
</style>