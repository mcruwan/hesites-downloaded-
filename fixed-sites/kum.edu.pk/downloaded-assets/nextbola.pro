


<!DOCTYPE html>
<html>
<head>
    
<!-- Start Head_Tags_1_nextbola_pro of nextbola.pro domain -->
<!-- Primary SEO Meta Tags -->
<title>NEXTBOLA | Berita Sepak Bola, Statistik & Hiburan Digital</title>
<meta name="description" content="NEXTBOLA adalah platform berita olahraga dan hiburan digital yang menghadirkan informasi terbaru seputar sepak bola, statistik pertandingan, dan update Piala Dunia 2026." />
<meta name="keywords" content="nextbola, berita bola, hasil pertandingan, jadwal liga, statistik bola, piala dunia 2026, berita olahraga, analisa bola, sepak bola dunia" />
<meta name="robots" content="index, follow" />
<meta name="revisit-after" content="1 days" />
<meta name="rating" content="general" />
<meta name="geo.country" content="ID" />
<meta name="geo.placename" content="Indonesia" />
<meta name="language" content="id" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Canonical & Favicon -->
<link rel="canonical" href="https://nextbola.pro/" />
<link rel="icon" type="image/png" href="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1748015151/FAVICON_NEXTBOLA_wifg6r.png" />

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website" />
<meta property="og:title" content="NEXTBOLA | Berita Sepak Bola, Statistik & Hiburan Digital" />
<meta property="og:description" content="NEXTBOLA menyajikan berita sepak bola terkini, hasil pertandingan, klasemen liga, dan statistik tim favorit Anda." />
<meta property="og:url" content="https://nextbola.pro/" />
<meta property="og:image" content="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1761975133/BANNER_NEXTBOLA_1_f1bhrn.png" />

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="NEXTBOLA | Berita Sepak Bola, Statistik & Hiburan Digital" />
<meta name="twitter:description" content="Temukan berita bola terbaru, analisa pertandingan, dan info Piala Dunia 2026 hanya di NEXTBOLA." />
<meta name="twitter:image" content="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1761975133/BANNER_NEXTBOLA_1_f1bhrn.png" />

<!-- JSON-LD Schema -->
<script type="application/ld+json">
{
 "@context": "https://schema.org",
 "@type": "WebSite",
 "name": "NEXTBOLA",
 "url": "https://nextbola.pro/",
 "description": "NEXTBOLA adalah situs berita olahraga dan hiburan digital yang menyajikan update sepak bola, statistik, dan analisa pertandingan.",
 "potentialAction": {
   "@type": "SearchAction",
   "target": "https://nextbola.pro/?s={search_term_string}",
   "query-input": "required name=search_term_string"
 }
}
</script>
<!-- End Head_Tags_1_nextbola_pro of nextbola.pro domain -->

<!-- Start Head_Tags_1_nextbola_pro of all domains -->

<!-- End Head_Tags_1_nextbola_pro of all domains -->



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
                 popupRegister('97D940');
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
            <form name="form1" method="post" action="Defaults/Default273.aspx?ref=97D940" id="form1" class="item-5">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//nextbola.pro/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; bottom: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="68865478" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="tHovets61WxUSHWM7/xMVeaNwZ4MqcIj8UUtJ8yXJQPDxnlbZ3jb0cnZzCetIc0XobEhQ3CbSB97y3KvuXX2gnP1wTPigmyRGGOnYZvo4KRGAkP/6r31DtvyF3xV5ueLWTe5r8SvjBk9/1f1w+YXG+M7o/piEDY0X3fR47wDBdbaMpvfqn6AgQMgceY7HfOYHroyt/GyzyrmeegLUCIHgRpMgdVov2gXmIrGaeZMs8Q=" />
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
                            <span class="input-group-text-r">1878</span>
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
            
<!-- Start WL_Footer_nextbola_pro of nextbola.pro domain -->

<!-- End WL_Footer_nextbola_pro of nextbola.pro domain -->

<!-- Start WL_Footer_nextbola_pro of all domains -->

<!-- End WL_Footer_nextbola_pro of all domains -->
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
