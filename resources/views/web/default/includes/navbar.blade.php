@php
    if (empty($authUser) and auth()->check()) {
        $authUser = auth()->user();
    }
@endphp

<div id="navbarVacuum"></div>


<div class="aa-header">
        <div class="aa-header__warpper">
            <div class="aa-header__small d-lg-none d-sm-block">
                <div class=" d-flex justify-content-between align-items-center">
                    <div><a href="#" id="aaMenuTriger"><img class="d-inline-block p-2" style="margin-left: 8px;" src="assets/imgs/align-justify.svg" alt=""></a></div>
                    <div class="h1"  style="transform: translate(100px,0px);">LOGO</div>
                    <div style="margin-right: 12px;">
                        <a href="/cart/" tabindex="0" class="" style="margin:0 1rem; width: 24px; height: 24px; display: inline-flex; justify-content: center;align-items: center;">
                            <svg id="icon-cart" viewBox="0 0 24 24" width="24" height="24"><path d="M15.55 13c.75 0 1.41-.41 1.75-1.03l3.58-6.49A.996.996 0 0020.01 4H5.21l-.94-2H1v2h2l3.6 7.59-1.35 2.44C4.52 15.37 5.48 17 7 17h12v-2H7l1.1-2h7.45zM6.16 6h12.15l-2.76 5H8.53L6.16 6zM7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zm10 0c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z"></path></svg>
                        </a>
                        <button class="aa-btn aa-btn-signup">Sign up</button>
                        <button class="aa-btn aa-btn-signin">Login</button>
                    </div>
                </div>
            </div>
            <div class="aa-header__xl d-none d-lg-block">
                <div class=" d-flex justify-content-between align-items-center">
                    <div class="h1">LOGO</div>
                    <div><button class="aa-header__xl__btn-category">Categories</button></div>
                    <div class=" flex-grow-1 px-5">
                        <input class="aa-header__xl__serch" type="text" name="" id="" placeholder="Search">
                    </div>
                    <div style="margin-right: 12px;">
                        <a href="/cart/" tabindex="0" class="" style="margin:0 1rem; width: 24px; height: 24px; display: inline-flex; justify-content: center;align-items: center;">
                            <svg id="icon-cart" viewBox="0 0 24 24" width="24" height="24"><path d="M15.55 13c.75 0 1.41-.41 1.75-1.03l3.58-6.49A.996.996 0 0020.01 4H5.21l-.94-2H1v2h2l3.6 7.59-1.35 2.44C4.52 15.37 5.48 17 7 17h12v-2H7l1.1-2h7.45zM6.16 6h12.15l-2.76 5H8.53L6.16 6zM7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zm10 0c-1.1 0-1.99.9-1.99 2s.89 2 1.99 2 2-.9 2-2-.9-2-2-2z"></path></svg>
                        </a>
                        <a class="aa-btn aa-btn-signup">Sign up</a>
                        <a class="aa-btn aa-btn-signin">Login</a>
                    </div>
                </div>
            </div>
            <div class="aa-cat-menu"></div>
        </div>
    </div>

@push('scripts_bottom')
    <script src="/assets/default/js/parts/navbar.min.js"></script>
@endpush
