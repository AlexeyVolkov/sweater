<div class="border border-blue-400 rounded-lg py-6 px-8 mb-8">
    <form action="/tweets" method="post">
        @csrf

        <textarea name="body" id="" class="w-full" placeholder="What's up doc? Talk" required></textarea>

        <hr class="my-4">

        <footer class="flex justify-between">
            <img src="{{ auth()->user()->avatar }}" alt="{{ auth()->user()->name }} Avatar"
                class="rounded-full h-12 mr-2">
            <button type="submit" class="bg-blue-500 rounded-lg shadow py-2 px-2 text-white">Post</button>
        </footer>

    </form>
</div>
