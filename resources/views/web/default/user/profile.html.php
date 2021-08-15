<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/bootstrap-5.0.2-dist/css/bootstrap.min.css">

    <style>
        .btn-follow {
            text-rendering: optimizeLegibility;
            -webkit-text-size-adjust: 100%;
            margin: 0;
            font: inherit;
            vertical-align: baseline;
            display: inline-block;
            text-align: center;
            -webkit-font-smoothing: antialiased;
            -webkit-appearance: none;
            outline: none;
            font-weight: 700;
            white-space: nowrap;
            font-family: gt walsheim pro, helvetica, arial, sans-serif;
            border: 2px solid #3722d3;
            box-sizing: border-box;
            color: #3722d3;
            border-radius: 20px;
            text-decoration: none;
            font-size: 15px;
            line-height: 20px;
            padding: 6px 13px 7px;
            min-width: 75px;
        }


        .btn-follow:hover {
            border: 2px solid #3722d3;
            color: #3722d3;
        }

        .follow-stats .follow-stats-wrapper-user-stats .number {
            font-size: 22px;
            font-weight: 700;
        }

        .follow-stats .follow-stats-wrapper-user-stats .follow-stat {
            font-weight: 400;
        }

        .am-user-profile-info {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
        }

        .am-user-profile-info .am-info {
            display: flex;
            flex-direction: column;
        }

        .follow-stats-wrapper-user-stats a {
            margin-right: 0.5rem;
            margin-left: 0.5rem;
        }

        @media screen and (min-width:992px) {
            .am-user-profile-info {
                display: block;
            }

            .am-user-profile-info .am-info {
                flex-direction: column-reverse;
            }
        }
    </style>
</head>

<body>
    <div style="max-width: 1000px; margin: 0 auto;">
        <div class="row">
            <div class="col-lg-3 col-md-12">
                <div class="am-user-profile-info">
                    <div class="am-photo-w">
                        <div class="am-photo text-center">
                            <img class="rounded-circle" src="{{ $user->getAvatar() }}" alt="Amin Omer" style="width: 150px; height: 150px">
                            @if($user->offline)
                            <span class="user-circle-badge unavailable d-flex align-items-center justify-content-center">
                                <i data-feather="slash" width="20" height="20" class="text-white"></i>
                            </span>
                            @elseif($user->verified)
                            <span class="user-circle-badge has-verified d-flex align-items-center justify-content-center">
                                <i data-feather="check" width="20" height="20" class="text-white"></i>
                            </span>
                            @endif
                        </div>
                        <div class="am-name text-center h4 mt-2">
                        {{ $user["full_name"] }}
                        </div>
                        <div class="text-center  mt-2">
                            <div class="rounded d-inline-block px-4" style="font-size: 13px;font-weight: 700; line-height: 18px; background-color: #002333; color: #00ff84;">
                                teacher
                            </div>
                        </div>
                    </div>
                    <div class="am-info">
                        <div class="follow-stats mt-3">
                            <div class="follow-stats-wrapper-user-stats d-flex justify-content-around">
                                <a href="javascript:;" class="text-decoration-none text-dark mr-2 text-center">
                                    <div class="follow-stat followers">
                                        <h2 class="number"><span>36,661</span></h2> Followers
                                    </div>
                                </a>

                                <a href="javascript:;" class="text-decoration-none text-dark ml-2 text-cente">
                                    <div class="follow-stat following">
                                        <h2 class="number"><span>--</span></h2> Following
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="am-btn-follow-w text-center mt-3">
                            <a href="javascript:;" class="btn btn-follow" title="Follow" rel="nofollow"><i data-feather="plus"></i> Follow</a>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="user-information-social-links text-center">
                    <a href="https://www.urlwebsite.com/" class="social-media-link icon-globe secondary no-underline"
                        target="_blank" rel="noreferrer">urlwebsite.com/</a>
                </div>

            </div>
            <div class="col-lg-9">
                <h4>About</h4>
                <div>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit nulla adipisci optio dicta
                    dolorum mollitia aliquid. Sed ducimus voluptatem sit harum commodi id iure placeat deserunt, in,
                    perferendis, quas nulla?
                </div>
                <div class="section">
                    <div class="section-header">
                        <h2>Teaching</h2>
                    </div>
                    <div class="section-content row classes populated">                  
                        
                        <div class="col-4 class-column">
                            <div class="card ss-card ss-class shadow-sm"  style="border-radius: 20px; overflow: hidden;">
                                <div class="ss-card--top-el skillshare-original-gradient"></div>
                                <div role="img" aria-label="skillshare original" class="ss-card--top-el skillshare-original"></div>


                                <a class="ss-card__thumbnail js-class-preview" href="#" aria-label="">
                                    <div class="ss-card__thumbnail-img-holder">
                                        <img width="458" height="252" class="thumbnail-img img-fluid" src="assets/imgs/w1.jpg" alt="class image" loading="lazy">
                                        <div style="position:absolute" class="play-button ss-icon-nsk-play-arrow-rounded ss-card--top-el"></div>
                                    </div>
                                </a>

                                <div class="ss-card__content-wrapper p-3">
                                    <div class="ss-card__content">
                                        <div class="ss-class__stats" style="display: flex; justify-content: space-between;">
                                            <div class="ss-class__stats__duration" style="font-size: 13px; font-weight: 700;">1h 33m</div>
                                            <div class="ss-class__stats__stud-count" style="font-size: 13px; font-weight: 700;">14,501 students</div>
                                        </div>

                                        <div class="ss-card__title-wrapper" style="margin-top: 8px;">
                                            <p class="ss-card__title">
                                                <a href="#" style="text-decoration: none; font-size: 18px; font-weight: 700; color: #212121;">Fundamentals of Photo Editing</a>
                                            </p>
                                        </div>

                                        <div class="ss-card__placeholder-container">
                                            <div class="ss-card__teacher-placeholder">
                                            </div>

                                            <div class="wishlist-button-container">
                                                <div class="sc-gisBJw gAvyyl">
                                                    <span class="ref">
                                                        <div class="save-class" role="button">
                                                            <div class="icon sc-bdVaJa jqPDNX">
                                                                <svg class="save-class-icon" height="24" role="button" viewBox="0 0 24 24" width="24"> 
                                                                    <title>Save Class</title>
                                                                    <g fill="none" fill-rule="nonzero">
                                                                        <path fill="#394649"
                                                                            d="M6 20.586l5.224-5.223a1.1 1.1 0 0 1 1.556 0L18 20.586V4a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1v16.586zM7 2h10a2 2 0 0 1 2 2v17.31a.7.7 0 0 1-1.195.495l-5.732-5.734a.1.1 0 0 0-.142 0l-5.736 5.734A.7.7 0 0 1 5 21.31V4a2 2 0 0 1 2-2z">
                                                                        </path>
                                                                    </g>
                                                                </svg>
                                                            </div>
                                                        </div>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="section">
                    <div class="section-header">
                        <h2>NEW CLASS! Take Control of your Personal Finances</h2>
                    </div>
                    <div class="section-content row discussions use-flexbox populated">
                        <div class="col-2 discussion-column">
                            <div class="discussion-grid-item-wrapper">
                                <a href="#" class="link-main no-bold">
                                    <div class="discussion-grid-item">
                                        <div class="discussion-header-wrapper">
                                            <div class="discussion-header">
                                                <div class="discussion-title font-size-6">
                                                    <strong>NEW CLASS! Take Control of your Personal Finances</strong>
                                                </div>
                                                <div class="discussion-data font-size-6">about 1 year ago<span class="middot">·</span><span class="ss-icon-empty-comment">4</span></div>
                                            </div>
                                        </div>
                                        <div class="horizontal-rule"></div>
                                        <div class="discussion-content-wrapper">
                                            <div class="discussion-content">Hi Everyone!I’ve taught a bunch of classes,</div>
                                        </div>
                                        <div class="fade-text"></div>
                                    </div>
                                </a>
                            </div>
                        </div>
                      
                    </div>
                </div>

            </div>
        </div>
    </div>

    <script src="assets/bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>

</html>