


<!DOCTYPE html>
<html>
<head>
    
<!-- Start Head_Tags_1_nextbola_it_com of nextbola.it.com domain -->
<title>NEXTBOLA | Situs Judi Bola Online & Slot Resmi Indonesia</title>

<meta name="description" content="NEXTBOLA adalah situs judi bola online resmi Indonesia dengan pasaran lengkap, slot online terpercaya, odds kompetitif, dan layanan aktif 24 jam nonstop." />

<meta name="keywords" content="nextbola, next bola, situs nextbola, judi bola nextbola, taruhan bola online, slot online indonesia, agen bola terpercaya, pasang bola resmi" />

<meta name="robots" content="index, follow" />
<meta name="googlebot" content="index, follow" />
<meta name="bingbot" content="index, follow" />

<meta name="revisit-after" content="1 days" />
<meta name="rating" content="general" />
<meta name="language" content="id" />

<meta name="geo.country" content="ID" />
<meta name="geo.placename" content="Indonesia" />
<meta name="Slurp" content="all" />

<!-- Open Graph -->
<meta property="og:locale" content="id_ID" />
<meta property="og:type" content="website" />
<meta property="og:title" content="NEXTBOLA | Situs Judi Bola Online Terpercaya Indonesia" />
<meta property="og:description" content="Main judi bola online di NEXTBOLA dengan pasaran lengkap, odds terbaik, dan sistem aman 24 jam." />
<meta property="og:url" content="https://nextbola.it.com/" />
<meta property="og:site_name" content="NEXTBOLA" />

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="NEXTBOLA | Situs Judi Bola Online Indonesia" />
<meta name="twitter:description" content="NEXTBOLA menyediakan taruhan bola online dengan sistem aman, odds tinggi, dan akses cepat 24 jam." />

<!-- Canonical & Icon -->
<link rel="canonical" href="https://nextbola.it.com/" />
<!-- End Head_Tags_1_nextbola_it_com of nextbola.it.com domain -->

<!-- Start Head_Tags_1_nextbola_it_com of all domains -->

<!-- End Head_Tags_1_nextbola_it_com of all domains -->



    <link rel="icon" href="Images/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="Images/theme/v1/css/style.css?v=4">
    <script src="Images/theme/v1/js/jquery-3.4.1.min.js"></script>

    <script type="text/javascript" src="js/common.js?v=20241218"></script>
    <script type="text/javascript" src="js/header.js?v=20250106"></script>
    <script type="text/javascript" src="js/login.js?v=20250303"></script>

     <script language="javascript" type="text/javascript">
         $().ready(function () {
             $('#btnReg').click(function () {
                 popupRegister('');
            });
         })

         function popupLivechat() {
             window.open('https://www.livehelpnow.net/lhn/lcv.aspx?d=51623&ms=&zzwindow=59091&lhnid=34870&custom1=&custom2=&custom3=&pcv=&opid=0', 'LiveChat', 'width=500,height=500,toolbars=no,scrollbars=no,status=no,resizable=no');
         }
     </script>


    <script type="text/javascript">
        function drawTogelL(records) {
            var strTogel = ''
            for (var i = 0; i < records.length && i < 2; i++) {
                strTogel += '<div class="TogelItem">' +
                    '<span class="TogelCountry">' + records[i].Togel + '</span>' +
                    '<br/>' +
                    '<span class="TogelBall">' + records[i].Number[0] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[1] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[2] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[3] + '</span>' +
                    '</div>'
            }
            $('#divTogelL').html(strTogel)
        }

        function drawTogelR(records) {
            var strTogel = ''
            for (var i = 2; i < records.length && i < 4; i++) {
                strTogel += '<div class="TogelItem">' +
                    '<span class="TogelCountry">' + records[i].Togel + '</span>' +
                    '<br/>' +
                    '<span class="TogelBall">' + records[i].Number[0] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[1] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[2] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[3] + '</span>' +
                    '</div>'
            }
            $('#divTogelR').html(strTogel)
        }
        $().ready(function () {
            fetchTogel(function (records) {
                drawTogelL(records)
                drawTogelR(records)
            })
        })
    </script>

    <style>
        .games-in [class^="item-"], .games [class^="item-"] {
            padding: 0 0.8rem;
        }

        .item-13 {
            position: relative;
        }

            .item-13 .numbers {
                position: absolute;
                top: 52px;
                left: 0;
                width: 100%;
                display: flex;
                justify-content: space-around;
                align-items: center;
                z-index: 1;
                padding: 0 20px;
            }

            .item-13 .location {
                position: absolute;
                top: 13px;
                width: 100%;
                text-align: center;
                font-size: 20px;
                font-weight: bold;
                color: white;
            }

        .item-5 {
            position: relative;
            left: 93px;
        }

        .btn-reg {
            position: relative;
            left: 93px;
        }        

        .TogelBall {
            color: #fff;
            line-height: 39px;
            font-size: 32px;
            font-weight: bold;
            letter-spacing: 2px;
        }

        .TogelItem {
            width: 225px;
            height: 100%;
            text-align: center;
            float: left;
            padding-top: 5px
        }

        .TogelCountry {
            text-transform: uppercase;
            font-family: Sans-Serif;
            font-weight: bold;
            font-size: 24px;
        }

        .HasilL {
            height: 65px;
            float: left;
            position: relative;
            top: -75px
        }

        .HasilR {
            height: 65px;
            float: right;
            position: relative;
            top: -75px
        }

        .announcement-bar-v2 {
            width: 76%;
        }
        .games .item-1:last-child a {
            color: rgb(0,255,255);
            background: unset;
            -webkit-background-clip: unset;
            -webkit-text-fill-color: unset;
        }
    </style>
    <style type="text/css">
        .games-in .item-1 a:hover, .games .item-1 a:hover {
            -webkit-text-fill-color: unset;
        }

        .games-in .item-1 a, .games .item-1 a {
            -webkit-text-fill-color: unset;
        }

        @media screen and (max-width: 768px) {
            .item-13 .numbers {
                padding: 0 14px !important;
            }

            .numbers {
                top: 40px !important;
            }

            .number {
                height: 21px !important;
            }

            .item-5 {
                position: relative;
                left: 0 !important;
            }
            .btn-reg {
                position: relative;
                left: 0!important;
            }

            .TogelBall {
                color: #fff;
                line-height: 0px;
                font-size: 10px;
                font-weight: bold;
                letter-spacing: 2px;
            }

            .TogelItem {
                width: 80px;
                height: 100%;
                text-align: center;
                float: left;
            }

            .TogelCountry {
                text-transform: uppercase;
                font-family: Sans-Serif;
                font-weight: bold;
                font-size: 10px;
            }

            .HasilL {
                height: 30px;
                float: left;
                position: relative;
                top: -38px
            }

            .HasilR {
                height: 30px;
                float: right;
                margin-right: 5px;
                position: relative;
                top: -38px
            }
        }
        @media only screen and (max-width: 768px) {
            .banner-wa {
                bottom: 86px!important;
            }

            .banner1 {
                width: 70px;
                height: 70px;
            }
        }
    </style>
    
    
    <link rel="stylesheet" href="css/header.submenu.css?v=1762746734915" />
    <style type="text/css">
        .sub-menu .gameNav li:hover {
            background: linear-gradient(0deg, #FBA913 30%, #FDC200 62%);
        }

        .main_width {
            width: 1090px;
            height: 110px;
            background-color: #1e1e1e;
            margin: 0
        }

        .sub-menu {
            top: 73px;
            padding-top: 1px;
            padding-bottom: 23px;
        }

        .arrow-down {
            margin-left: 4px;
            border-left: 5px solid transparent;
            border-right: 5px solid transparent;
            border-top: 8px solid var(--color-secondary);
            margin-top: 48px;
        }

        .gameNav li a img {
            max-width: 100% !important;
        }
    </style>
    
</head>
<body>
    <div class="container">
        <div class="header items m-t-1 m-b-1">
            <div class="item-4">
                <div class="logo">
                    <a href="#">
                        <img src="Images/logo.gif?v=19022025" alt="Logo NEXTBOLA">
                    </a>
                </div>
            </div>
            <div class="item-3">
                <a id="btnReg" href="#" type="button">
                    <input type="button" value="DAFTAR" class="btn-reg">
                </a>
            </div>
            <form name="form1" method="post" action="Defaults/Default273.aspx" id="form1" class="item-5">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//nextbola.it.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; bottom: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="68865478" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="pjzTSgo22g+kkDNtW9ZwGGvtzvQzYzwRveb5as+IjSU5YkT/QeBQh229wmu5w2DE8Seg8p0qwt8yI+nQoq72vI1r+bZJYdtseW2okVA1FnS1dnHaFPiLI5I7TeqZcLIwJnqdUVkYBDb1sz0kTxJIo1NgoRgZVumQVM0j6C1wOkmS1UlMKxoviuyredfvwKmh328ckT9yWXVBjPJWZmk+4Wjs56pYTmx0oid/Ye9XFLk=" />
</div>
                <div class="items login-area">
                    <div class="item-6 m-b-half">
                        <input name="txtUsername" type="text" id="txtUsername" class="username" tabindex="1" maxLength="12" placeholder="User Name" />
                    </div>                    
                    <div class="item-6 m-b-half">
                        <input name="txtPassword" type="password" id="txtPassword" tabindex="2" placeholder="Password" />
                    </div>   
                    <div class="item-6 m-b-half">
                        <div class="input-group">
                            <input name="txtCode" type="text" id="txtCode" style="border-radius: 5px 0 0 5px;" tabindex="3" placeholder="Code" maxlength="4" />
                            <span class="input-group-text-r">2020</span>
                        </div>
                    </div>
                    <div class="item-6">
                        <a href="#">
                            <input name="btnSignIn" type="button" id="btnSignIn" tabindex="4" class="btn-login" value="LOGIN">
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="menu-bg">
        <div class="container">
            <ul id="main-menu"
                tag-parent-sub-menu="a"
                data-id="main-menu"
                data-is-guest="true"
                class="games items" style="position: relative">
                <li class="item-1">
                    <a href="#">
                        <img src="Images/theme/v1/img/icon/home.png" alt="Situs LiveBola">
                            HOME
                    </a>
                </li>
                <li class="item-1" v-for="(key, index) in Object.keys(menus)">
                    <menu-item class-name="nav" :is-guest="isGuest" :name="menus[key][0].GameType">
                    <image-item class-name="hover" :image-data="menus[key][0]" :cache-version="cacheVersion"></image-item>
                        {{ getGameMenuDisplayNameByLang(menus[key][0]) }}
                    <down-arrow type="text" 
                        :has-sub-game="menus[key][0].HasSubGame" 
                        :game-type="menus[key][0].GameType" 
                        :is-guest="isGuest">
                    </down-arrow>
                    <submenu class-name="" 
                        :submenu-data="menus[key]" 
                        :is-guest="isGuest" 
                        :cache-version="cacheVersion">
                    </submenu>
                    </menu-item>
                </li>
                <li class="item-1">
                    <a href="https://rebrand.ly/SlotDemoNEXT" target="_blank" rel="nofollow noopener">
                        <img src="Images/theme/v1/img/icon/demo-slot.gif" alt="Promosi LiveBola" style="max-width: 50px">
                        DEMO SLOT
                    </a>
                </li>
                <li class="item-1">
                    <a href="https://rebrand.ly/PromoNextBola" target="_blank" rel="nofollow noopener">
                        <img src="Images/theme/v1/img/icon/promo.png" alt="Promosi LiveBola">
                        PROMO
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="marquee-section items m-t-1 m-b-1">
            <a href="#">
                <img src="Images/theme/v1/img/info.png">
            </a>
            <a href="#">
                <img src="Images/theme/v1/img/border.png">
            </a>
            <div class="announcement-bar-v2">
                <div class="announcement-marquee">
                    <div id="div-marquee" style="width: 840px; height: 26px">
                        <input id="text-marquee" type="hidden" value="Link Anti NAWALA : altnextbola.com | Hanya dengan 1 ID Sudah Bisa Bermain Semua Game | Bonus Cashback Mencapai 5% untuk SPORTBOOK &amp; Refferal&nbsp;Seumur&nbsp;Hidup!" />
                        <script type="text/javascript">
                            initMarquee('')
                        </script>
                    </div>
                </div>
            </div>
            <a href="#">
                <img src="Images/theme/v1/img/border.png">
            </a>
            <div class="item-2">
                <a href="#" onclick="popupLivechat()" class="livechat">
                    <img src="Images/theme/v1/img/live-chat.gif" alt="">
                </a>
            </div>
        </div>

        <div class="frame-banner">
            <div class="banner-slideshow">
                <img src="Images/theme/v1/img/banner/05.png" alt="Slide 1" class="slide active">
                <img src="Images/theme/v1/img/banner/06.png" alt="Slide 2" class="slide">
                <img src="Images/theme/v1/img/banner/07.png" alt="Slide 3" class="slide">
                <img src="Images/theme/v1/img/banner/08.png" alt="Slide 4" class="slide">
                <img src="Images/theme/v1/img/banner/09.png?v=09102025" alt="Slide 5" class="slide">
                <img src="Images/theme/v1/img/banner/10.png" alt="Slide 6" class="slide">
                <img src="Images/theme/v1/img/banner/11.png" alt="Slide 7" class="slide">
            </div>
            <script>
                let currentSlide = 0;
                const slides = document.querySelectorAll(".banner-slideshow .slide");

                slides.forEach((slide, index) => {
                    if (index !== 0) slide.classList.remove("active"); // pastikan hanya slide 0 aktif
                });

                setInterval(() => {
                    slides[currentSlide].classList.remove("active");
                    currentSlide = (currentSlide + 1) % slides.length;
                    slides[currentSlide].classList.add("active");
                }, 5000); // Ganti setiap 5 detik (bisa kamu ubah sesuka hati)
            </script>


        </div>

        <div class="social items m-t-2">
            <div class="item-3">
                <a href="https://rebrand.ly/WANextBola" target="_blank">
                    <img src="Images/theme/v1/img/social/whatsapp.png" alt="">
                </a>
            </div>
            <div class="item-3">
                <a href="https://rebrand.ly/IGNextbola" target="_blank">
                    <img src="Images/theme/v1/img/social/instagram.png" alt="">
                </a>
            </div>
            <div class="item-3">
                <a href="https://rebrand.ly/FBNextbola" target="_blank">
                    <img src="Images/theme/v1/img/social/facebook.png" alt="">
                </a>
            </div>
            <div class="item-3">
                <a href="https://rebrand.ly/BuktiJPNextBola" target="_blank">
                    <img width="250" height="64" src="Images/theme/v1/img/prediksi.gif" alt="">
                </a>
            </div>
        </div>

        <div class="result items m-t-2">
            <div class="item-12">
                <img src="Images/theme/v1/img/result-togel.png" alt="">
                <div class="HasilL" id="divTogelL"></div>
                <div class="HasilR" id="divTogelR"></div>
            </div>
            <ul class="m-b-1">
            </ul>
        </div>

        <div class="item-row" id="divTogel">
        </div>

        <div class="product_down">
            <div class="box_product">
                <a href="#" class="hvr-grow">
                    <img src="Images/theme/v1/img/banner2/sportbook.png" alt="NUMBER-GAME" /></a>
            </div>
        </div>
        <!-- Tengah -->
        <div class="product_up">
            <ul>
                <li><a href="#" class="hvr-grow">
                    <img src="Images/theme/v1/img/banner2/poker.png" alt="poker"></a></li>
                <li><a href="#" class="hvr-grow">
                    <img src="Images/theme/v1/img/banner2/togel.png" alt="BOLA-TANGKAS"></a></li>
                <li><a href="#" class="hvr-grow">
                    <img src="Images/theme/v1/img/banner2/casino.png" alt="casino"></a></li>
            </ul>
        </div>
        <!-- Bawah -->
        <div class="product_down">
            <div class="box_product">
                <a href="#" class="hvr-grow">
                    <img src="Images/theme/v1/img/banner2/slot.png" alt="NUMBER-GAME" /></a>
            </div>
        </div>
        <img src="Images/theme/v1/img/provider.png" alt="">
        <div class="site-article">
            
<!-- Start WL_Footer_nextbola_it_com of nextbola.it.com domain -->

<!-- End WL_Footer_nextbola_it_com of nextbola.it.com domain -->

<!-- Start WL_Footer_nextbola_it_com of all domains -->

<!-- End WL_Footer_nextbola_it_com of all domains -->
        </div>
    </div>

    <a style="position: fixed; right: 0px; bottom: 155px" href="https://rebrand.ly/RTPNEXTBOLA" target="_blank">
        <img class="banner1" width="150" height="150" src="Images/RTP-SLOT.gif?v=2"></a>
    <a class="banner-wa" style="position: fixed; right: 0px; bottom: 10px;" href="https://rebrand.ly/GRUPWANEXTBOLA " target="_blank">
        <img class="banner1" width="150" height="150" src="Images/WHATSAPP.gif?v=2"></a>

    <script src="cdn.jsdelivr.net/npm/swiper%409/swiper-element-bundle.min.html"></script>
    <script type="text/javascript">
        var lhnAccountN = "11332-1";
        var lhnButtonN = 9688;
        var lhnChatPosition = 'default';
        var lhnInviteEnabled = 0;
        var lhnWindowN = 26362;
        var lhnDepartmentN = 27395;
    </script>
    <script src="www.livehelpnow.net/lhn/widgets/chatbutton/lhnchatbutton-current.min.html" type="text/javascript" id="lhnscript"></script>
    <script>
        $.ajax({
            url: "https://209.97.168.204/api/banners",
            data: {
                website: "NEXTBOLA.com",
                option: ""
            }
        }).done(function (data, textStatus, jqXHR) {
            if (data.meta.code === 200) {
                var html = "";
                jQuery.each(data.data, function (i, val) {
                    html += '<swiper-slide><img class="border-slider" style="display:block;margin:auto;" src="https://209.97.168.204/' + val.image_path + '" alt="' + val.title + '"></swiper-slide>';
                });
                $('#swiper-slide').html(html);
            } else {
                $('.banner').empty();
            }
        });

        $.ajax({
            url: "https://209.97.168.204/api/banners",
            data: {
                website: "NEXTBOLA.com",
                type: "banner-bottom"
            }
        }).done(function (data, textStatus, jqXHR) {
            if (data.meta.code === 200) {
                var html = "";
                jQuery.each(data.data, function (i, val) {
                    html += '<div class="item-4"><img src="https://209.97.168.204/' + val.image_path + '" alt="' + val.title + '"></div>';
                });
                $('.banner-bottom').html(html);
            } else {
                $('.banner-bottom').empty();
            }
        });

        $('.livechat').on('click', function (e) {
            e.preventDefault();
            OpenLHNChat(); return false;
        });

    </script>    
            
    <script src="js/vue3.3.7.global.js"></script>
    <script>const mountEl = document.querySelector("#main-menu");</script>
    <script src="js/header.menu.vue.js?v=1762746734915"></script>
    <script>menu.mount("#main-menu");</script>

</body>
</html>
