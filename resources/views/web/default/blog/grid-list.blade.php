<div class="blog-grid-card">
    <div class="blog-grid-image">
        <img src="{{ $post->image }}" class="img-cover" alt="{{ $post->title }}">
    </div>
    <div class="blog-grid-detail">
        <a href="{{ $post->getUrl() }}">
            <h3 class="blog-grid-title mt-10 mb-30">{{ $post->title }}</h3>
        </a>

        <div class="mt-40 blog-grid-desc">{!! truncate($post->description, 160) !!}</div>

        <div class="blog-grid-footer d-flex align-items-center justify-content-between mt-15">
            <span>
                <i data-feather="user" width="20" height="20" class=""></i>
                <span class="ml-5 icon">{{ $post->author->full_name }}</span>
            </span>

            <span class="d-flex align-items-center">
                <i data-feather="message-square" width="20" height="20" class=""></i>
                <span class="ml-5">{{ $post->comments_count }}</span>
            </span>
        </div>
    </div>
</div>