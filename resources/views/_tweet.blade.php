<div class="flex p-4 {{ $loop->last ? '' : 'border-b border-b-gray-400' }}">
    <div class="mr-2 flex-shrink-0">
        <a href="{{ $tweet->user->path() }}">
            <img src="{{ $tweet->user->avatar }}" alt="{{ $tweet->user->name }}" class="rounded-full h-12 mr-2">
        </a>
    </div>
    <div>
        <a href="{{ $tweet->user->path() }}">
            <h5 class="font-bold mb-4">{{ $tweet->user->name }}</h5>
        </a>
        <p class="text-sm">{{ $tweet->body }}</p>
    </div>
</div>
