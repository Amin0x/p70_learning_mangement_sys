const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix
    // .js('resources/js/app.js', 'public/assets/default/js')

    // scss
    .sass('resources/sass/app.scss', 'public/assets/default/css')
    // .sass('resources/sass/panel.scss', 'public/assets/default/css')
    // .sass('resources/sass/rtl-app.scss', 'public/assets/default/css')

// scripts
// .babel('resources/js/parts/main.js', 'public/assets/default/js/parts/main.min.js')
// .babel('resources/js/parts/home.js', 'public/assets/default/js/parts/home.min.js')
// .babel('resources/js/parts/webinar_show.js', 'public/assets/default/js/parts/webinar_show.min.js')
// .babel('resources/js/parts/comment.js', 'public/assets/default/js/parts/comment.min.js')
// .babel('resources/js/parts/time-counter-down.js', 'public/assets/default/js/parts/time-counter-down.min.js')
// .babel('resources/js/parts/navbar.js', 'public/assets/default/js/parts/navbar.min.js')
// .babel('resources/js/panel/public.js', 'public/assets/default/js/panel/public.min.js')
// .babel('resources/js/panel/webinar.js', 'public/assets/default/js/panel/webinar.min.js')
// .babel('resources/js/panel/join_webinar.js', 'public/assets/default/js/panel/join_webinar.min.js')
// .babel('resources/js/panel/make_next_session.js', 'public/assets/default/js/panel/make_next_session.min.js')
// .babel('resources/js/panel/quiz.js', 'public/assets/default/js/panel/quiz.min.js')
// .babel('resources/js/panel/comments.js', 'public/assets/default/js/panel/comments.min.js')
// .babel('resources/js/parts/quiz-start.js', 'public/assets/default/js/parts/quiz-start.min.js')
// .babel('resources/js/parts/meeting.js', 'public/assets/default/js/parts/meeting.min.js')
// .babel('resources/js/parts/reserve_meeting.js', 'public/assets/default/js/parts/reserve_meeting.min.js')
// .babel('resources/js/parts/contact-info.js', 'public/assets/default/js/parts/contact-info.min.js')
// .babel('resources/js/parts/profile.js', 'public/assets/default/js/parts/profile.min.js')
// .babel('resources/js/parts/img_cropit.js', 'public/assets/default/js/parts/img_cropit.min.js')
// .babel('resources/js/panel/user_setting.js', 'public/assets/default/js/parts/user_setting.min.js')


// admin
// .babel('resources/js/admin/webinar.js', 'public/assets/admin/js/webinar.min.js')
// .babel('resources/js/admin/quiz.js', 'public/assets/default/js/admin/quiz.min.js')
;
