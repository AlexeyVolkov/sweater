<h3 class="font-bold text-lg mb-4">Friends</h3>

<ul>
    @foreach (range(1,8) as $item)
    <li class="mb-4">
        <div class="flex items-center text-sm">
            <img src="https://avatars.dicebear.com/api/avataaars/JohnDoe{{$item}}.svg" alt="John {{$item}} Doe"
                class="rounded-full h-12 mr-2">
            John {{$item}} Doe
        </div>
    </li>
    @endforeach
</ul>
