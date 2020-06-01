<h3 class="font-bold text-lg mb-4">Following</h3>

<ul>
    @foreach (auth()->user()->follows as $friend)
    <li class="mb-4">
        <div class="flex items-center text-sm">
            <a href="{{ route('profile', $friend->name) }}">
                <img src="{{ $friend->avatar }}" alt="{{ $friend->name }}" class="rounded-full h-12 mr-2">
            </a>
            <a href="{{ route('profile', $friend->name) }}">
                {{ $friend->name }}
            </a>
        </div>
    </li>
    @endforeach
</ul>
