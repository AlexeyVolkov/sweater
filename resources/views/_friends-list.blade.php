<h3 class="font-bold text-lg mb-4">Following</h3>

<ul>
    @foreach (auth()->user()->follows as $friend)
    <li class="mb-4">
        <div class="flex items-center text-sm">
            <img src="{{ $friend->avatar }}" alt="{{ $friend->name }}" class="rounded-full h-12 mr-2">
            {{ $friend->name }}
        </div>
    </li>
    @endforeach
</ul>
