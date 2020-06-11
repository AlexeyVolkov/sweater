<h3 class="font-bold text-lg mb-4">Following</h3>

<ul>
    @forelse (auth()->user()->follows as $friend)
    <li class="{{ $loop->last ? '' : 'mb-4' }}">
        <div class="flex items-center text-sm">
            <a href="{{ $friend->path() }}">
                <img src="{{ $friend->avatar }}" alt="{{ $friend->name }}" class="rounded-full h-12 mr-2">
            </a>
            <a href="{{ $friend->path() }}">
                {{ $friend->name }}
            </a>
        </div>
    </li>

    @empty

    <li>No friends yet</li>

    @endforelse
</ul>
