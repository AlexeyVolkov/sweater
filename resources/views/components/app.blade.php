<x-master>
    <section class="px-8">
        <main class="container mx-auto">
            <div class="lg:flex lg:justify-between items-start">
                <div class="lg:w-32">
                    @include('_sidebar-links')
                </div>
                <div class="lg:flex-1 lg:mx-10">
                    {{ $slot }}
                </div>
                <div class="lg:w-1/6 p-4 bg-gray-200 rounded-xl border border-gray-300">
                    @include('_friends-list')
                </div>
            </div>
        </main>
    </section>
</x-master>
