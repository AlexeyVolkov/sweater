<ul>
    <li>
        <a href="{{ route('home') }}" class="font-bold text-lg mb-4 block">Home</a>
    </li>
    <li>
        <a href="/explore" class="font-bold text-lg mb-4 block">Explore</a>
    </li>
    <li>
        <a href="/notifications" class="font-bold text-lg mb-4 block">Notifications</a>
    </li>
    <li>
        <a href="{{ auth()->user()->path() }}" class="font-bold text-lg mb-4 block">Profile</a>
    </li>
</ul>
