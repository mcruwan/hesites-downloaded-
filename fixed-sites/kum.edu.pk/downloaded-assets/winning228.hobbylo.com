
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    
<!-- Start Head_Tags_1_winning228_hobbylo_com of winning228.hobbylo.com domain -->
<title>Winning228 : Judi Bola, Agen Bola, SBOBET, Togel SGP & Situs Judi Bola</title>
<meta content="Winning228 adalah situs judi bandar bola online dan agen taruhan SBOBET, serta bandar judi togel singapore terbesar dengan layanan 24 jam non-stop." name="description" />
    <meta content="Situs Judi Bola, Agen Taruhan Sbobet, Bandar Judi Bola, Agen Bola, Taruhan Bola, Judi Bola, Togel Sgp/Singapore, Bandar Bola" name="keywords" />
    <meta content="index, follow" name="robots" />
    <meta content="1 days" name="revisit-after" />
    <meta content="general" name="rating" />
    <meta content="id" name="geo.country" />
    <meta content="Indonesia" name="geo.placename" />
    <meta content="all" name="Slurp" />
    <meta name="google-site-verification" content="kco1SbOfBYx-iu4881qTxcKEdwNjkT2OKS59svKoxyg" />
<link rel="canonical" href="https://66winning228.site"/>
<!-- End Head_Tags_1_winning228_hobbylo_com of winning228.hobbylo.com domain -->

<!-- Start Head_Tags_1_winning228_hobbylo_com of all domains -->

<!-- End Head_Tags_1_winning228_hobbylo_com of all domains -->


            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-121777269-2"></script>
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag() { dataLayer.push(arguments); }
                gtag('js', new Date());
                gtag('config', 'UA-121777269-2');
            </script> 


    <link rel="icon" href="Images/favicon.ico" />
    <link href="Images/theme/v1/css/stylesheets.min.css?v=0.0.6" rel="stylesheet">
    <link href="Images/theme/v1/css/font-awesome.min.css" rel="stylesheet">
    <link href="Images/theme/v1/css/owl.carousel.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,800" rel="stylesheet">
    <link rel="stylesheet" href="css/common.css" />
    <script src="Images/theme/v1/js/jquery.min.js"></script>

    <script type="text/javascript" src="js/common.js?v=20241218"></script>
    <script type="text/javascript" src="js/header.js?v=20250106"></script>
    <script type="text/javascript" src="js/login.js?v=20250303"></script>

    <script language="javascript" type="text/javascript">	       

        function openMenu(srcIframeMenu) {
            $('#iframe-menu').prop('src', srcIframeMenu)
            $('#div-menu').css('display', 'block');
            $('#container').css('display', 'none');
            $('#p-b-4').css('display', 'none');
            $('#footer').css('display', 'none');
        }
        function gotoMenu(mn) {
            var srcIframeMenu = ''
            switch (mn) {
                case 'panduan': srcIframeMenu = 'Images/theme/v1/menu/panduan.html?v=2'; break;
                case 'promo': srcIframeMenu = 'Images/theme/v1/menu/promo.html'; break;
            }
            localStorage.removeItem('mn')
            if (srcIframeMenu !== '') openMenu(srcIframeMenu)
        }
        function openPromo() {
            window.open('Images/theme/v1/promo/promo.html', 'Promo', 'width=1100,height=950,toolbars=no,scrollbars=no,status=no,resizable=no');
        }
        function drawTogel(records) {
            //records = [{ RNo: 1, HasilTogelId: 841, Togel: "Singapore", Date: "26/11/2015", Number: "2222" }]
            //records = []
            var strTogel = ''
            var strTogel2 = '';
            if (records.length > 0) {
                if (records.length >= 1) {
                    let record = records.find(country => (country.Togel.toUpperCase() === 'SINGAPORE' || country.Togel.toUpperCase() === 'SINGAPURA') || country.Togel.toUpperCase() === 'SGP')
                    strTogel += '<div class="card-title flex items-center content-center">' +
                        '<img src="Images/theme/v1/img/singaporepools.png" width="30" alt>&nbsp; Hasil Togel ' + record.Togel.replace('SGP', 'SINGAPORE').toUpperCase() + '</div>' +
                        '<div class="card-body">' +
                        '<p class="result-date">' + record.Date + '</p>' +
                        '<ul class="result-togel">' +
                        '<li class="bubble">' + record.Number[0] + '</li>' +
                        '<li class="bubble">' + record.Number[1] + '</li>' +
                        '<li class="bubble">' + record.Number[2] + '</li>' +
                        '<li class="bubble">' + record.Number[3] + '</li>' +
                        '</ul>' +
                        '</div>'
                }
            } else {
                //strTogel = '<center> NO DATA TOGEL</center>'
                //strTogel2 = '<center> NO DATA TOGEL</center>'
            }

            var count = 0;
            records.forEach((record, index) => {
                if (count < 6 && record.Togel.toUpperCase() !== 'SINGAPORE' && record.Togel.toUpperCase() !== 'SGP') {
                    count++
                    strTogel2 += `<div class="card m-b-05 togel-item-2">
                    <div class="card-title flex content-center togel-country">${record.Togel.toUpperCase()}</div>
                    <div class="card-body"><p class="result-date">${record.Date}</p>
                        <ul class="result-togel">
                            <li class="bubble">${record.Number[0]}</li>
						    <li class="bubble">${record.Number[1]}</li>
                            <li class="bubble">${record.Number[2]}</li>
                            <li class="bubble">${record.Number[3]}</li>
                        </ul>
                    </div>
                </div>`
                }
                else {
                    //if (count === 0) strTogel2 = 'NO DATA TOGEL'
                }
            })
            $('#divTogel').html(strTogel)
            $('#divTogel2').html(strTogel2)
        }
        $().ready(function () {
            $('#btnReg').click(function () {
                popupRegister('');
            });
            fetchTogel(function (records) {
                drawTogel(records)
            })
            gotoMenu(localStorage.getItem('mn'));
        })
    </script>
    <style>
        @media only screen and (min-device-width : 768px) and (max-device-width : 1024px) {
            #container {
                margin-left: 30px !important;
            }
        }

        img#modal-content-may-2021 {
            width: auto !important;
            position: static !important;
            height: auto !important;
        }

        .togel-item-2 {
            width: 160px;
            margin-right: 17px;
        }

        .togel-country {
            font-weight: bold
        }

        img.modal-content-may-2021 {
            width: 700px !important;
            position: relative !important;
            right: 2px !important;
            top: 2px !important;
            border-radius: 0 !important;
            height: 369px !important;
            border: none !important;
        }

        nav.menu-header .menu-header__items li {
            margin-left: -3px;
        }

        nav.announcement-header {
            top: 145px;
        }
    </style>

    
    <link rel="stylesheet" href="css/header.submenu.css?v=1762746734915" />
    <style type="text/css">
        nav.menu-header .menu-header__items li {
            margin-left: -7px;
        }

        nav.announcement-header {
            z-index: 1;
        }

        .sub-menu .gameNav li:hover {
            text-decoration: underline !important
        }

        .main_width {
            width: 1050px;
            background-color: #173d76;
        }

        #sub-menu-slot365 .main_width {
            padding-bottom: 50px
        }

        .sub-menu {
            top: 27px;
            padding-top: 12px;
            padding-bottom: 23px
        }
    </style>
    
</head>
<body>
    <!-- Start Header -->
    <header class="global-header">
        <div class="container">
            <div class="global-header__inner flex items-center content-between">
                <div class="main-logo">
                    <a href="#" class="logo">
                        <img src="Images/logo.png" alt="" />
                    </a>
                </div>
                <div class="box-login">
                    <form name="ctl00" method="post" action="index-logged-in.html" id="ctl00" class="box-login__form">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//winning228.hobbylo.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; top: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="79317D7A" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="Rn72MwWRb8Fo/nKwnikDVc/WQj3u88dc3nvNmXtqv/Dkh+28eQ+a5qPLrbYbJuRac3QJOIMT5nQhW0VIfnqt1EglKmlrOdsBgxAJQKqy9vm3I1kBe1G6fhzyp5bwplSGggJ+tZWaVZiJOoweEQ0JekWX/chZDSqGF1AiIyTMMXmaoc08qaTyGGNjiOnZ7RpEbRyvVNnRVzVXA8K2Yst/QhMRBuFFR+jCHujpPc42wLI=" />
</div>
                        <input name="txtUsername" type="text" id="txtUsername" style="border-top-left-radius: 5px; border-bottom-left-radius: 5px;" maxLength="12" placeholder="User Name" tabindex="1" />
                        <input name="txtPassword" type="password" id="txtPassword" placeholder="Password" tabindex="2" />
                        <input name="txtCode" type="text" id="txtCode" class="code" placeholder="Code" tabindex="3" maxlength="4" />
                        <img border="0" align="absmiddle" src="public/img.aspx" width="66px"
                            height="32px" alt="" />
                        <button id="btnSignIn" type="button" class="btn-login">Login</button>
                        <a id="btnReg" type="button" class="register">DAFTAR</a>
                    </form>
                </div>
            </div>
        </div>
    </header>

    <nav class="menu-header">
        <div class="container flex items-center">
              <ul id="main-menu"
                    tag-parent-sub-menu="a"
                    data-id="main-menu"
                    data-is-guest="true"
                    class="menu-header__items" style="height: 54px;">
                    <li><a href="/"><i class="fas fa-home"></i></a></li>
                    <li v-for="(key, index) in Object.keys(menus)" class="">
                        <menu-item style="text-decoration: none; padding-left: 0px;" class-name="" :is-guest="isGuest"
                            :name="menus[key][0].GameType">
                            <image-item style="width:25px;height:25px" class-name="" :image-data="menus[key][0]"
                                :cache-version="cacheVersion"></image-item>
                            {{ getGameMenuDisplayNameByLang(menus[key][0]) }}
                            <down-arrow type="text" :has-sub-game="menus[key][0].HasSubGame" :game-type="menus[key][0].GameType"
                                :is-guest="isGuest">
                            </down-arrow>
                            <submenu class-name="" :submenu-data="menus[key]" :is-guest="isGuest" :cache-version="cacheVersion">
                            </submenu>
                        </menu-item>
                    </li>
                  <li><a href="https://rebrand.ly/LinkDEMOSLOTWIN228" target="_blank">
                      <img src="Images/theme/v1/img/menus/winning228-demo-slot.gif" style="height: 25px; width: 25px"
                          alt="" />DEMO SLOT</a></li>
                </ul>
            <div class="menu-header__right">
                <a class="mobile-version" href="#" title="Mobile Version">
                    <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                        width="30px" height="30px" viewBox="0 0 35 35" style="enable-background: new 0 0 35 35;" xml:space="preserve">
                        <g>
                            <path d="M25.302,0H9.698c-1.3,0-2.364,1.063-2.364,2.364v30.271C7.334,33.936,8.398,35,9.698,35h15.604
            c1.3,0,2.364-1.062,2.364-2.364V2.364C27.666,1.063,26.602,0,25.302,0z M15.004,1.704h4.992c0.158,0,0.286,0.128,0.286,0.287
            c0,0.158-0.128,0.286-0.286,0.286h-4.992c-0.158,0-0.286-0.128-0.286-0.286C14.718,1.832,14.846,1.704,15.004,1.704z M17.5,33.818
            c-0.653,0-1.182-0.529-1.182-1.183s0.529-1.182,1.182-1.182s1.182,0.528,1.182,1.182S18.153,33.818,17.5,33.818z M26.021,30.625
            H8.979V3.749h17.042V30.625z" />
                        </g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g>
                    </svg>
                </a>
                <a class="livechat" href="#"><i class="far fa-comment"></i>&nbsp;LIVECHAT</a>
            </div>
        </div>
    </nav>
    <nav class="announcement-header">
        <div class="container flex warp">
            <div class="announcement-header__message">
                <i class="fas fa-bullhorn" title="Message"></i>
                <div id="div-marquee" style="width: 918px;">
                    <input id="text-marquee" type="hidden" value="Link ALT : amanwinning228.com | Game terlengkap hanya dengan 1 ID | Diskon Togel Terbesar | BONUS Cashback 5% &amp; BONUS Referral Seumur Hidup" />
                    <script type="text/javascript">
                        initMarquee()
                    </script>
                </div>
                   </div>
            <div class="announcement-header__share">
                <ul>
                    <li><a href="https://rebrand.ly/PromoW228" target="_blank" class="btn-secondary">PROMO</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>
    <!-- End Header -->
    <!-- Start Body -->
    <div class="container" id="container">
        <div class="items flex warp">
            <div class="item-9 m-b-1 p-remove-r">
                <div class="slider-area owl-carousel">
                    <div class="loading">
                    </div>
                </div>
            </div>
            <div class="item-3 m-b-1">
                <div class="card m-b-05" id="divTogel">
                </div>
                <ul class="contacts">
                    <li><a href="https://rebrand.ly/WAwinning228" target="_blank" class="whatsapp"><i class="fab fa-whatsapp color-whatsapp"></i>&nbsp;WA.WINNING228</a></li>
                    <li><a href="#" class="line-it-button" data-lang="en" data-type="friend" data-lineid="@cs.winning228"><i class="fab fa-line color-line"></i>&nbsp;cs.winning228</a></li>
                    <li><a href="#"><i class="fab fa-skype color-skype"></i>&nbsp;cs.winning228</a></li>
                    <li><a href="#" class="livechat"><i class="far fa-comment"></i>&nbsp; Livechat</a></li>
                </ul>
            </div>
        </div>
        <div class="togel-part" id="divTogel2" style="display: flex; justify-content: center">
        </div>
        <div class="items flex warp m-b-2">
            <div class="item-3 item-category">
                <a href="#">
                    <h1 class="item-category__title"></h1>
                    <img class="img-responsive" src="Images/theme/v1/img/sportsbook.jpeg?v=2" alt="SPORTSBOOK" />
                </a>
            </div>
            <div class="item-3 item-category">
                <a href="#">
                    <h1 class="item-category__title"></h1>
                    <img class="img-responsive" src="Images/theme/v1/img/casino-slot.jpeg?v=2" alt="CASINO & SLOT" />
                </a>
            </div>
            <div class="item-3 item-category">
                <a href="#">
                    <h1 class="item-category__title"></h1>
                    <img class="img-responsive" src="Images/theme/v1/img/pkv.png?v=4" alt="PKV GAMES" />
                </a>
            </div>
            <div class="item-3 item-category">
                <a href="#">
                    <h1 class="item-category__title"></h1>
                    <img class="img-responsive" src="Images/theme/v1/img/togel.jpeg?v=2" alt="TOGEL" />
                </a>
            </div>
        
        </div>
        
    </div>

    <div class="p-b-4" id="p-b-4">
        <div class="m-b-2" style="background: url(Images/theme/v1/img/bar.png) top center repeat-X; width: 100%; height: 96px">
            <div class="container">
                <img class="img-responsive" src="Images/theme/v1/img/game.png?v=4" alt="">
            </div>
        </div>
        <div class="container">
            <div class="text-white">
                
<!-- Start WL_Footer_winning228_hobbylo_com of winning228.hobbylo.com domain -->
<h1 class="text-center">JUDI BOLA-AGEN BOLA-SITUS BOLA</h1>
                <h2 class="text-center font-large font-bold">Winning228 Judi Bola, Agen Bola, Situs Bola, Taruhan Bola Terpercaya Di Indonesia</h2>
                <p class="justify-content-center">Winning228 Adalah <strong>Agen Bola</strong> paling terpercaya saat ini di indonesia yang menjadi nomor satu untuk di indonesia saat ini dan merupakan <a href="https://66winning228.site"><strong>Judi bola</strong></a> untuk para pecinta judi online yang berada di indonesia. Jadi tidak perlu anda pikirkan lagi cara mencari situs tempat bermain judi bola online yang paling aman hanya ada di sini dengan minimal deposit 25ribu saja, anda sudah bisa bermain sepuas nya di <strong>situs bola</strong> Kami. Disini juga tersedia berbagai macam promo dan bonus untuk anda para pencinta Bettingan Bola, jadi pastikan segera bergabung bersama website kami sekarang. Bukan hanya kemenangan yang akan anda dapatkan tapi rasa puas, aman dan nyaman juga akan terjamin dengan di layani selama 24 jam online oleh Customer service yang terbaik dan profesional.</p>
                <h3 class="text-center font-large font-bold">Jenis Permainan Di Situs Judi Online Winning228</h3>
                <p class="justify-content-center">Merupakan website berbasis terbesar yang ada di indonesia, website kami juga menyediakan berbagai macam jenis permainan <a href="https://66winning228.site"><strong>Judi Online</strong></a> antara lain seperti games : Casino Online, Togel, Poker Domino, Tembak Ikan, Slot, dan Pasaran Bola Online ada disini terlengkap di indonesia, silahkan dikunjungin untuk para pecinta dan pemain judi online. <strong>Bandar Bola</strong> Winning228 disini juga menyediakan Pasar Taruhan Bola <a href="https://en.wikipedia.org/wiki/Sportsbook" rel="nofollow">Sportbook</a> terlengkap dari liga-liga terbaik benua Eropa dan Asia dengan jadwal yang paling padat sekalipun ada di website kami. Hanya disini dengan permainan terbanyak dan terlengkap dan permainan yang fair Play.</p>
                <h4 class="text-center font-large font-bold">Cara Menjadi Member Winning228 Agen Sbobet, Judi Bola, Taruhan Bola</h4>
                <p class="justify-content-center">Untuk pendaftaran menjadi Member Winning228 sangat lah mudah dan gampang, anda hanya perlu menyiapkan data diri dan nomor rekening yang aktif, maka anda sudah bisa menjadi member setia di website <a href="https://66winning228.site"><strong>Taruhan Bola</strong></a> Winning228. Bukan hanya itu ketika anda menjadi member setia kami, anda juga bisa mendapatkan berbagai macam bonus menarik antara lain seperti bonus referral bagi anda yang berhasil mengajak teman-teman anda bermain bersama kami dan untuk bonus referral anda berlaku seumur hidup tanpa ada syarat apapun dan juga ada berbagai jenis bonus promo setiap minggu nya yang akan hadir dan memanjakan anda member setia kami <strong>Winning228.</strong></p>
<!-- End WL_Footer_winning228_hobbylo_com of winning228.hobbylo.com domain -->

<!-- Start WL_Footer_winning228_hobbylo_com of all domains -->

<!-- End WL_Footer_winning228_hobbylo_com of all domains -->
            </div>
        </div>
    </div>
    <!-- End Body -->
    <footer id="footer">
        <div class="bg-dark-soft p-t-1 p-b-1">
            <div class="container text-center">
                <span class="m-0 text-white">Copyright © Winning228 <span id="year"></span></span>
            </div>
        </div>
    </footer>

    <div id="div-menu" style="margin: 0 auto; background: transparent; position: relative; display: none; position: absolute; left: 423px;">
        <iframe id="iframe-menu" style="background: transparent; height: 1100px; width: 1049px" src="" allowtransparency="true" width="100%" height="100%" frameborder="0" scrolling="yes"></iframe>
    </div>

   <a style="width: 150px; height: 150px; position: fixed; left: 0px; top: 187px; z-index: 99;" href="https://rebrand.ly/altBANDARQ228" target="_blank">
        <img title="" alt="" src="Images/bandarq228-banner.gif"></a>
    <a style="width: 150px; height: 150px; position: fixed; left: 0px; top: 340px; z-index: 99;" href="https://rebrand.ly/altGarenaQQ" target="_blank">
        <img title="" alt="" src="Images/garenaqq-banner.gif"></a>

    <a style="width: 150px; height: 150px; position: fixed; right: 0; bottom: 0;"
        href="https://rebrand.ly/GRUPWAWIN228" target="_blank">
        <img title="" alt="" width="150px"
            height="150px" src="Images/winning228-wa.gif"
            style="width: 150px; height: 150px" /></a>

    <script src="Images/theme/v1/js/owl.carousel.min.js"></script>
    <script src="Images/theme/v1/js/main.js?v=0.0.9"></script>
    <input id="ext-version" type="hidden" value="1.0">
    <!-- This code must be installed within the body tags -->
    <script type="text/javascript">
        var lhnAccountN = "34870-1";
        var lhnButtonN = 9001;
        var lhnChatPosition = 'default';
        var lhnInviteEnabled = 0;
        var lhnDepartmentN = 41588;
        var lhnWindowN = 42110;
    </script>
    <script src="https://www.livehelpnow.net/lhn/widgets/chatbutton/lhnchatbutton-current.min.js" type="text/javascript" id="lhnscript"></script>
 
    <script src="js/vue3.3.7.global.js"></script>
    <script>const mountEl = document.querySelector("#main-menu");</script>
    <script src="js/header.menu.vue.js?v=1762746734915"></script>
    <script>menu.mount("#main-menu");</script>
</body>
</html>
