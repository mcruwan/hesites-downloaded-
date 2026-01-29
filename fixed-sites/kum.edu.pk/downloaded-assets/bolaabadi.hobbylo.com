

<!DOCTYPE html>
<html>
<head>
    
<!-- Start Head_Tags_1_bolaabadi_hobbylo_com of bolaabadi.hobbylo.com domain -->
<!-- Primary SEO Meta Tags -->
<title>BOLAABADI | Situs Judi Bola, Slot Gacor & Togel Resmi Terpercaya</title>
<meta name="description" content="BOLAABADI adalah situs judi bola resmi dan terpercaya di Indonesia. Menyediakan pasaran taruhan bola terlengkap, slot gacor RTP tinggi, dan togel Singapore & Hongkong online." />
<meta name="keywords" content="bolaabadi, situs bola abadi, situs judi bola terpercaya, taruhan bola resmi, slot gacor hari ini, judi bola online, togel online terpercaya, agen sbobet, bola abadi" />
<meta name="robots" content="index, follow" />
<meta name="revisit-after" content="1 days" />
<meta name="rating" content="general" />
<meta name="geo.country" content="ID" />
<meta name="geo.placename" content="Indonesia" />
<meta name="Slurp" content="all" />
<meta name="language" content="id" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="google-site-verification" content="ZkmKSt2F0c41lWoVHkDK52Fvq9UDGNHNwAIqQpOVAEU" />

<!-- Canonical & AMP -->
<link rel="canonical" href="https://bolaabadi.pro/" />
<link rel="icon" type="image/x-icon" href="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1745052202/FAVICON_BOLA_ABADI_leyg86.png" />

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website" />
<meta property="og:title" content="BOLAABADI | Situs Judi Bola, Slot Gacor & Togel Resmi Terpercaya" />
<meta property="og:description" content="BOLAABADI adalah situs judi bola resmi dan terpercaya di Indonesia. Menyediakan pasaran taruhan bola terlengkap, slot gacor RTP tinggi, dan togel Singapore & Hongkong online" />
<meta property="og:url" content="https://bolaabadi.pro/" />
<meta property="og:image" content="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1745052202/FAVICON_BOLA_ABADI_leyg86.png" />

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="BOLAABADI | Situs Judi Bola, Slot Gacor & Togel Resmi Terpercaya" />
<meta name="twitter:description" content="BOLAABADI adalah situs judi bola resmi dan terpercaya di Indonesia. Menyediakan pasaran taruhan bola terlengkap, slot gacor RTP tinggi, dan togel Singapore & Hongkong online" />
<meta name="twitter:image" content="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1745052202/FAVICON_BOLA_ABADI_leyg86.png" />

<!-- JSON-LD Schema -->
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "BOLAABADI",
  "url": "https://bolaabadi.pro/",
  "potentialAction": {
    "@type": "SearchAction",
    "target": "https://bolaabadi.pro/?s={search_term_string}",
    "query-input": "required name=search_term_string"
  }
}
</script>
<!-- End Head_Tags_1_bolaabadi_hobbylo_com of bolaabadi.hobbylo.com domain -->

<!-- Start Head_Tags_1_bolaabadi_hobbylo_com of all domains -->

<!-- End Head_Tags_1_bolaabadi_hobbylo_com of all domains -->



    <link rel="icon" href="Images/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

    <link rel="stylesheet" href="Images/theme/v1/css/stylesheets.mine67d.css?v=4">

    <script type="text/javascript" src="js/common.js?v=20241218"></script>
    <script type="text/javascript" src="js/header.js?v=20250106"></script>
    <script type="text/javascript" src="js/login.js?v=20250303"></script>

    <script language="javascript" type="text/javascript">	       
        $().ready(function () {
            $('#btnReg').click(function () {
                popupRegister('');
            });
        });
        function openLiveChat() {
            window.open('https://www.livehelpnow.net/lhn/lcv.aspx?d=42629&ms=&zzwindow=44080&lhnid=34870&custom1=&custom2=&custom3=&pcv=&opid=0', 'LiveChat' + Date.now(), 'width=500,height=500,toolbars=no,scrollbars=no,status=no,resizable=no');
        }
    </script>
    <script type="text/javascript">
        function drawTogel(records) {
            var strTogel = ''
            for (var i = 0; i < records.length && i < 4; i++) {
                strTogel += '<div class="item-13">' +
                    '<a href="#">' +
                    '<img src="Images/theme/v1/img/togel/togel.png" class="bg" alt="Background">' +
                    '<div class="numbers">' +
                    '<img src="Images/theme/v1/img/togel/' + records[i].Number[0] + '.png" class="number" style="height: 33px;">' +
                    '<img src="Images/theme/v1/img/togel/' + records[i].Number[1] + '.png" class="number" style="height: 33px;">' +
                    '<img src="Images/theme/v1/img/togel/' + records[i].Number[2] + '.png" class="number" style="height: 33px;">' +
                    '<img src="Images/theme/v1/img/togel/' + records[i].Number[3] + '.png" class="number" style="height: 33px;">' +
                    '</div>' +
                    '<div class="location" style="text-transform: uppercase;">' + records[i].Togel + '</div>' +
                    '</a>' +
                    '</div>'
            }
            $('#divTogel').html(strTogel)
        }
        $().ready(function () {
            fetchTogel(function (records) {
                drawTogel(records)
            })
        })
    </script>

    <style>
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
        }
    </style>
    <style type="text/css">
        .games-in .item-1 a:hover, .games .item-1 a:hover {
            -webkit-text-fill-color: unset;
        }

        .games-in .item-1 a, .games .item-1 a {
            -webkit-text-fill-color: unset;
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
                        <img src="Images/logo.png" alt="Logo BolaAbadi">
                    </a>
                </div>
            </div>
            <div class="item-3">
                <a href="#">
                    <input type="button" id="btnReg" value="DAFTAR" class="btn-reg">
                </a>
            </div>
            <form name="form1" method="post" action="Defaults/Default268.aspx" id="form1" class="item-5">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//bolaabadi.hobbylo.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; bottom: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DB93945C" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="woy2WPvLvG462k7V6T9Uulv9w+iqVpr0jQ6ZZJJ6Qe36/h/Z3ldMmDkbLBszOLc9j1QFDIiNYVuGxY08ZVS5QLWT4T9cEI8SeLDmsdi8z+d7fCmX/3Q9OfhujrdRS52TahY0MPr59adXA/u7ikj+8jWcVD805fpRNWBd+NSv3nmxmN5DMwuxMgkYzTA0qjeRS2Rgqv4hxHmCOucXRrq7zfbNbEzh/TgLTZDynY9j9E0=" />
</div>
                <div class="items login-area">
                    <div class="item-6 m-b-half">
                     <input name="txtUsername" type="text" id="txtUsername" class="username" maxLength="12" placeholder="User Name" tabindex="1" />
                    </div>
                    <div class="item-6 m-b-half">
                        <div class="input-group">
                             <input name="txtCode" type="text" id="txtCode" style="border-radius: 5px 0 0 5px;" placeholder="Code" tabindex="3" maxlength="4" />
                            <span class="input-group-text-r">1024</span>
                        </div>
                    </div>
                    <div class="item-6 m-b-half">
                       <input name="txtPassword" type="password" id="txtPassword" placeholder="Password" tabindex="2" />
                    </div>
                    <div class="item-6 m-b-half">
                        <a href="#">
                            <input name="btnSignIn" type="button" id="btnSignIn" tabindex="4" class="btn-login" value="LOGIN">
                        </a>
                    </div>
                </div>
            </form>
        </div>
         <ul id="main-menu"
            tag-parent-sub-menu="a"
            data-id="main-menu"
            data-is-guest="true"
            class="games items"
            style="position: relative">
            <li class="item-1"><a href="#gamelist"><img src="Images/theme/v1/img/MenuIcon/home.png?v=2" alt="">HOME</a></li>
            <li v-for="(key, index) in Object.keys(menus)" class="item-1">
                <menu-item style ="" class-name="" :is-guest="isGuest" :name="menus[key][0].GameType">
                    <image-item style ="" class-name="hover" :image-data="menus[key][0]" :cache-version="cacheVersion"></image-item>
                    {{ getGameMenuDisplayNameByLang(menus[key][0]) }}
                    <down-arrow type="text" :has-sub-game="menus[key][0].HasSubGame" :game-type="menus[key][0].GameType"
                        :is-guest="isGuest">
                    </down-arrow>
                    <submenu class-name="" :submenu-data="menus[key]" :is-guest="isGuest" :cache-version="cacheVersion">
                    </submenu>
                </menu-item>
            </li>
             <li class="item-1"><a href="https://rebrand.ly/PKVGAMESBolaAbadi" target="_blank">
                 <img src="Images/theme/v1/img/MenuIcon/pkvgames.png" alt="">PKV GAMES</a></li>
             <li class="item-1" style="margin-left: 14px;"><a href="https://rebrand.ly/DemoSlotBOLAABADI" target="_blank">
                 <img src="Images/theme/v1/img/MenuIcon/demo-slot.gif" alt="">Demo SLot</a></li>
             <li class="item-1" style="margin-left: 13px;"><a href="https://rebrand.ly/PromoBolaAbadi" target="_blank">
                 <img src="Images/theme/v1/img/MenuIcon/promo.png" alt="">PROMO</a></li>
        </ul>
        <div class="marquee-section items m-t-1 m-b-1">
            <a href="#">
                <img src="Images/theme/v1/img/info.png" alt="Logo BolaAbadi">
            </a>
            <div class="announcement-bar-v2">
                <div class="announcement-marquee">
                    <div id="div-marquee" style="width: 840px; height: 26px">
                        <input id="text-marquee" type="hidden" value="Link Anti NAWALA : altbolaabadi.com | Hanya dengan 1 ID Sudah Bisa Bermain Semua Game | Bonus Cashback Mencapai 5% untuk SPORTBOOK &amp; Refferal&nbsp;Seumur&nbsp;Hidup" />
                        <script type="text/javascript">
                            initMarquee('#000')
                        </script>
                    </div>
                </div>
            </div>
            <div class="item-2">
                <a href="#" onclick="openLiveChat()" class="livechat" method="chat">
                    <img src="Images/theme/v1/img/live-chat.gif" alt="">
                </a>
            </div>
        </div>
        <div class="frame-banner">
            <div class="banner-slideshow">
                <img src="Images/theme/v1/img/banner/10.png" alt="Slide 1" class="slide active">
                <img src="Images/theme/v1/img/banner/11.png" alt="Slide 2" class="slide">
                <img src="Images/theme/v1/img/banner/12.png" alt="Slide 3" class="slide">
                <img src="Images/theme/v1/img/banner/13.png" alt="Slide 4" class="slide">
                <img src="Images/theme/v1/img/banner/14.png" alt="Slide 5" class="slide">
                <img src="Images/theme/v1/img/banner/15.png" alt="Slide 6" class="slide">
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
                <a href="https://rebrand.ly/WABolaAbadi" target="_blank">
                    <img src="Images/theme/v1/img/social/whatsapp.png" alt="">
                </a>
            </div>
            <div class="item-3">
                <a href="https://rebrand.ly/InstagramBolaAbadi" target="_blank">
                    <img src="Images/theme/v1/img/social/instagram.png" alt="">
                </a>
            </div>
            <div class="item-3">
                <a href="https://rebrand.ly/FBBolaAbadi" target="_blank">
                    <img src="Images/theme/v1/img/social/facebook.png" alt="">
                </a>
            </div>
            <div class="item-3">
                <a href="https://rebrand.ly/BuktiJPBolaAbadi" target="_blank">
                    <img width="250" height="64" src="Images/theme/v1/img/prediksi.gif?v=2" alt="">
                </a>
            </div>
        </div>
        <div class="result items m-t-2">
            <div class="item-12">
                <img src="Images/theme/v1/img/result-togel.png" alt="">
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
        </div>
    </div>

    <a style="width: 150px; height: 150px; position: fixed; right: 0; bottom: 0;"
        href="https://rebrand.ly/GRUPWABOLAABADI" target="_blank">
        <img title="" alt="" width="150px"
            height="150px" src="Images/bolaabadi-wa.gif"
            style="width: 150px; height: 150px" /></a>


    <script src="../cdn.jsdelivr.net/npm/swiper%409/swiper-element-bundle.min.js"></script>
    <script type="text/javascript">
        var lhnAccountN = "11332-1";
        var lhnButtonN = 9688;
        var lhnChatPosition = 'default';
        var lhnInviteEnabled = 0;
        var lhnWindowN = 26362;
        var lhnDepartmentN = 27395;
    </script>
    <script src="../www.livehelpnow.net/lhn/widgets/chatbutton/lhnchatbutton-current.min.js" type="text/javascript" id="lhnscript"></script>
    <script>
        $.ajax({
            url: "https://209.97.168.204/api/banners",
            data: {
                website: "BolaAbadi.com",
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
                website: "BolaAbadi.com",
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
    <script src="js/vue3.3.7.global.js" type="text/javascript"></script>
    <script type="text/javascript">const mountEl = document.querySelector("#main-menu");</script>
    <script src="js/header.menu.vue.js?v=1762746734915" type="text/javascript"></script>
    <script type="text/javascript">menu.mount("#main-menu");</script>
</body>
</html>
