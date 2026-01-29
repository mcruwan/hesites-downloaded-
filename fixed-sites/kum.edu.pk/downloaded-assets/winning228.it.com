
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    
<!-- Start Head_Tags_1_winning228_it_com of winning228.it.com domain -->
<title>Winning228 | Situs Judi Bola Online, Slot Gacor & Togel Resmi</title>

<meta name="description" content="Winning228 adalah situs judi bola online resmi Indonesia dengan layanan slot gacor dan togel terpercaya. Menyediakan pasaran lengkap, odds tinggi, dan akses aman 24 jam nonstop." />

<meta name="keywords" content="winning228, winning 228, situs winning228, judi bola winning228, slot gacor winning228, togel online winning228, agen bola terpercaya, taruhan bola indonesia" />

<meta name="robots" content="index, follow" />
<meta name="googlebot" content="index, follow" />
<meta name="bingbot" content="index, follow" />

<meta name="revisit-after" content="1 days" />
<meta name="rating" content="general" />

<meta name="geo.country" content="ID" />
<meta name="geo.placename" content="Indonesia" />
<meta name="language" content="id" />

<meta name="Slurp" content="all" />

<!-- Open Graph -->
<meta property="og:locale" content="id_ID" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Winning228 | Situs Judi Bola Online & Slot Gacor Resmi" />
<meta property="og:description" content="Main judi bola online di Winning228 dengan slot gacor dan togel resmi. Sistem aman, pasaran lengkap, dan layanan 24 jam." />
<meta property="og:url" content="https://winning228.it.com/" />
<meta property="og:site_name" content="Winning228" />

<!-- Canonical & Icon -->
<link rel="canonical" href="https://winning228.it.com/" />
<!-- End Head_Tags_1_winning228_it_com of winning228.it.com domain -->

<!-- Start Head_Tags_1_winning228_it_com of all domains -->

<!-- End Head_Tags_1_winning228_it_com of all domains -->


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

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//winning228.it.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; top: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="79317D7A" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="yIu+jLsZ9IJxIGr26CViqy55l/orQMtr3ZDvc0y8vaultfnbPzohgExpAxWLhdPWQZ5jdk42F62dF8VFgvgqZJ8KCRmuw8Phmd0QBUmE6Ct446H+oDVoKxNz205Mphqnyr5X9RhvRs/AOq1Upvnxtpeoccz2k6Katn3FJC9PsQPKUyZSmrVscQxmBRU5XsEt0PdpsxAQ64ZSF3zK0BtMDBiC26spkuCq/bI0roJ4Ppk=" />
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
                
<!-- Start WL_Footer_winning228_it_com of winning228.it.com domain -->
<h1 class="text-center">JUDI BOLA-AGEN BOLA-SITUS BOLA</h1>
                <h2 class="text-center font-large font-bold">Winning228 Judi Bola, Agen Bola, Situs Bola, Taruhan Bola Terpercaya Di Indonesia</h2>
                <p class="justify-content-center">Winning228 Adalah <strong>Agen Bola</strong> paling terpercaya saat ini di indonesia yang menjadi nomor satu untuk di indonesia saat ini dan merupakan <a href="https://66winning228.site"><strong>Judi bola</strong></a> untuk para pecinta judi online yang berada di indonesia. Jadi tidak perlu anda pikirkan lagi cara mencari situs tempat bermain judi bola online yang paling aman hanya ada di sini dengan minimal deposit 25ribu saja, anda sudah bisa bermain sepuas nya di <strong>situs bola</strong> Kami. Disini juga tersedia berbagai macam promo dan bonus untuk anda para pencinta Bettingan Bola, jadi pastikan segera bergabung bersama website kami sekarang. Bukan hanya kemenangan yang akan anda dapatkan tapi rasa puas, aman dan nyaman juga akan terjamin dengan di layani selama 24 jam online oleh Customer service yang terbaik dan profesional.</p>
                <h3 class="text-center font-large font-bold">Jenis Permainan Di Situs Judi Online Winning228</h3>
                <p class="justify-content-center">Merupakan website berbasis terbesar yang ada di indonesia, website kami juga menyediakan berbagai macam jenis permainan <a href="https://66winning228.site"><strong>Judi Online</strong></a> antara lain seperti games : Casino Online, Togel, Poker Domino, Tembak Ikan, Slot, dan Pasaran Bola Online ada disini terlengkap di indonesia, silahkan dikunjungin untuk para pecinta dan pemain judi online. <strong>Bandar Bola</strong> Winning228 disini juga menyediakan Pasar Taruhan Bola <a href="https://en.wikipedia.org/wiki/Sportsbook" rel="nofollow">Sportbook</a> terlengkap dari liga-liga terbaik benua Eropa dan Asia dengan jadwal yang paling padat sekalipun ada di website kami. Hanya disini dengan permainan terbanyak dan terlengkap dan permainan yang fair Play.</p>
                <h4 class="text-center font-large font-bold">Cara Menjadi Member Winning228 Agen Sbobet, Judi Bola, Taruhan Bola</h4>
                <p class="justify-content-center">Untuk pendaftaran menjadi Member Winning228 sangat lah mudah dan gampang, anda hanya perlu menyiapkan data diri dan nomor rekening yang aktif, maka anda sudah bisa menjadi member setia di website <a href="https://66winning228.site"><strong>Taruhan Bola</strong></a> Winning228. Bukan hanya itu ketika anda menjadi member setia kami, anda juga bisa mendapatkan berbagai macam bonus menarik antara lain seperti bonus referral bagi anda yang berhasil mengajak teman-teman anda bermain bersama kami dan untuk bonus referral anda berlaku seumur hidup tanpa ada syarat apapun dan juga ada berbagai jenis bonus promo setiap minggu nya yang akan hadir dan memanjakan anda member setia kami <strong>Winning228.</strong></p>
<!-- End WL_Footer_winning228_it_com of winning228.it.com domain -->

<!-- Start WL_Footer_winning228_it_com of all domains -->

<!-- End WL_Footer_winning228_it_com of all domains -->
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
