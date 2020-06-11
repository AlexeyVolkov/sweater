<ul>
    <li>
        <a href="/explore" class="font-bold text-lg mb-4 block">Explore</a>
    </li>
    <li>
        <a href="{{ auth()->user()->path() }}" class="font-bold text-base mb-4 block">Profile</a>
    </li>
    <li>
        <x-form method="POST" action="{{ route('logout') }}">
            <button class="font-bold text-xs mb-4 block">Log Out</button>
        </x-form>
    </li>
</ul>
