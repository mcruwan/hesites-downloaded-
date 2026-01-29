
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    
<!-- Start Head_Tags_1_bos228_it_com of bos228.it.com domain -->
<title>BOS228 : Gaming Bola And Mix Parlay Online Terpercaya.</title>
    <meta name="description" content="BOS228 merupakan platform gaming bola dan mix parlay online terpercaya yang menghadirkan pengalaman taruhan olahraga yang aman, praktis, dan profesional. Dengan sistem permainan yang stabil, pilihan pasaran lengkap, serta dukungan berbagai jenis taruhan bola dan parlay, BOS228 menjadi pilihan ideal bagi pemain pemula maupun berpengalaman. Didukung teknologi modern dan layanan yang responsif, BOS228 berkomitmen memberikan kenyamanan serta transparansi dalam setiap permainan." />
    <meta name="keywords" content="situs judi online, judi bola resmi, taruhan bola, slot online, casino online, togel online, situs judi resmi" />
    <meta prefix="og: http://ogp.me/ns#" property="og:type" content="website" />
    <meta prefix="og: http://ogp.me/ns#" property="og:title" content="BOS228 : Gaming Bola And Mix Parlay Online Terpercaya." />
    <meta prefix="og: http://ogp.me/ns#" property="og:description" content="BOS228 merupakan platform gaming bola dan mix parlay online terpercaya yang menghadirkan pengalaman taruhan olahraga yang aman, praktis, dan profesional. Dengan sistem permainan yang stabil, pilihan pasaran lengkap, serta dukungan berbagai jenis taruhan bola dan parlay, BOS228 menjadi pilihan ideal bagi pemain pemula maupun berpengalaman. Didukung teknologi modern dan layanan yang responsif, BOS228 berkomitmen memberikan kenyamanan serta transparansi dalam setiap permainan." />
    <meta prefix="og: http://ogp.me/ns#" property="og:url" content="https://bos228.it.com/" />
    <meta prefix="article: http://ogp.me/ns/article#" property="article:published_time" content="2020-04-20" />
    <meta prefix="article: http://ogp.me/ns/article#" property="article:modified_time" content="2020-10-18" />
    <meta prefix="og: http://ogp.me/ns#" property="og:site_name" content="bos228" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:url" content="https://bos228.it.com/" />
    <meta name="twitter:title" content="Situs Judi Online Bola88 Taruhan Bola Resmi" />
    <meta name="twitter:description" content="BOS228 merupakan platform gaming bola dan mix parlay online terpercaya yang menghadirkan pengalaman taruhan olahraga yang aman, praktis, dan profesional. Dengan sistem permainan yang stabil, pilihan pasaran lengkap, serta dukungan berbagai jenis taruhan bola dan parlay, BOS228 menjadi pilihan ideal bagi pemain pemula maupun berpengalaman. Didukung teknologi modern dan layanan yang responsif, BOS228 berkomitmen memberikan kenyamanan serta transparansi dalam setiap permainan." />
    <meta content="1 days" name="revisit-after" />
    <meta content="id" name="geo.country" />
    <meta content="Indonesia" name="geo.placename" />
    <meta content="document" name="resource-type"/>
    <meta name="DC.Title" content="BOS228 : Gaming Bola And Mix Parlay Online Terpercaya." />
    <meta name="DC.Subject" content="BOS228 : Gaming Bola And Mix Parlay Online Terpercaya." />
    <meta name="DC.Description" content="BOS228 merupakan platform gaming bola dan mix parlay online terpercaya yang menghadirkan pengalaman taruhan olahraga yang aman, praktis, dan profesional. Dengan sistem permainan yang stabil, pilihan pasaran lengkap, serta dukungan berbagai jenis taruhan bola dan parlay, BOS228 menjadi pilihan ideal bagi pemain pemula maupun berpengalaman. Didukung teknologi modern dan layanan yang responsif, BOS228 berkomitmen memberikan kenyamanan serta transparansi dalam setiap permainan." />
    <meta name="DC.Language" content="id" />
    <meta content="id" http-equiv="Content-Language"/>
    <meta content="all" name="spiders"/>
    <meta content="all" name="webcrawlers"/>
    <meta content="Indonesia" name="geo.placename" />
    <link rel="canonical" href="https://bos228.it.com/" />
    <link rel="amphtml" href="https://inibarugacor.com/bos228/" />
    <link hreflang="id" rel="alternate" href="https://bos228.it.com/" />
<meta name="google-site-verification" content="scKAYZ1cyqn6Nsl-7nXzABAaoD5S8Z3NU8RUBAkfTRw" />
<!-- End Head_Tags_1_bos228_it_com of bos228.it.com domain -->

<!-- Start Head_Tags_1_bos228_it_com of all domains -->

<!-- End Head_Tags_1_bos228_it_com of all domains -->



    <link rel="icon" href="Images/favicon.ico" />
    <!--CSS-->
    <link href="Images/theme/v1/css/style.css" rel="stylesheet" />
    <link href="Images/theme/v1/css/style1.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Flex&display=swap" rel="stylesheet" />

    <!--JS-->
    <script type="text/javascript" src="Images/theme/v1/js/jquery.min.js"></script>

    <script type="text/javascript" src="js/common.js?v=20241218"></script>
    <script type="text/javascript" src="js/header.js?v=20250106"></script>
    <script type="text/javascript" src="js/login.js?v=20250303"></script>

    <script language="javascript" type="text/javascript">
        $().ready(function () {
            $('#btnReg').click(function () {
                popUpRegister('');
            });
            window.addEventListener("message", (event) => {
                let message = JSON.parse(event.data);
                if (message.ACT === 'ClickLPItem') {
                    let leftPanel = document.getElementById('fraPanel');
                    let iframe = document.getElementById('fraMain');
                    if (leftPanel) {
                        leftPanel.style.width = '1024px';
                    }
                    if (iframe) {
                        iframe.style.display = 'none';
                    }
                }
            });

        });
        // Fix focusout txtCode when login unsuccessful. 
        // Temporary focus to btnReg to focusout txtCode.
        function focusBtnReg() {
            $('#btnReg').focus();
        }
        function setScrollingFraMain(path) {
            console.log(path);
            if (path.indexOf('Home') > -1) {
                $('#fraMain').contents().find('body').css('overflow', 'hidden');
            } else {
                // src: https://stackoverflow.com/questions/17109338/horizontal-scroll-bar-for-iframe-with-content-that-has-overflow-x-hidden
                $('#fraMain').contents().find('body').css('overflow-x', 'hidden');
                $('#fraMain').contents().find('body').css('overflow-y', 'scroll');
            }
        }
    </script>

    <style>
        body, html {
            width: 100%;
            margin: 0;
            padding: 0
        }

        .body {
            height: 100%
        }

        .panel {
            width: 205px;
            height: 725px;
            float: left
        }

        .home {
            width: 819px;
            height: 850px;
            float: left;
        }

        div#login div.row {
            display: flex;
        }
    </style>

    <style>
        marquee {
            margin-top: -28px;
        }

        @media only screen and (min-device-width: 375px) and (max-device-width: 812px) and (-webkit-min-device-pixel-ratio: 3) {
            .pass {
                margin-top: -8px;
            }

            .imobile {
                margin-right: 50px;
            }

            div.row:first-child span {
                margin-top: -3px;
            }

            #btnSignIn {
                margin-top: -3px;
            }
        }
    </style>

    
    <link rel="stylesheet" href="css/header.submenu.css?v=1762746734915" />
    <style type="text/css">
        .main_width {
            width: 1024px;
            height: 110px;
            background-color: #42A926;
            margin: 0 auto;
        }

        .sub-menu {
            top: 78px;
            padding-top: 2px;
            padding-bottom: 23px;
        }
    </style>
    
</head>
<body>
    <div>
        <div id="wrapper">
            <div id="header">
                <a href="#">
                    <img id="logo" src="Images/logo.png" alt="" />
                </a>
                <div style="text-align: right;margin-top:5px" class="imobile">
                    <div id="btnReg" class="daftar">
                        <img src="Images/theme/v1/img/daftar.png" alt="daftar" />
                    </div>
                    <form name="form1" method="post" action="Defaults/Default255.aspx" id="form1" style="display: inline-block;">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//bos228.it.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; top: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A2B827E0" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="nT73UwnD1ijikY55X/SKCfZZZkIepnekMk9jqIiEmIN51zLNxY8OQ4Y8tn/3Mbs3W2NFbRQRLgc2hufxqmiVo0ni+/+kOWALmh4VqQx1K+GaXyLRK+6wN90aayXuFEM2EH7yCFrjV21ik4NLeygQZFqX3vesUkd8RkRlbg5+E7QiA1lk2cL1Chul4a+MzuP5lWtDJgEZEy8Iy7+gq+Hsl5fb8pB/DtvzAvYNUIWp/Is=" />
</div>
                        <div id="login">
                            <div class="row">
                                <span style="padding-right: 5px;">
                                    <input name="txtUsername" type="text" id="txtUsername" class="login" maxLength="12" placeholder="User Name" tabindex="1" />
                                </span>
                                <span id="code">
                                    
                                    <input name="txtCode" type="text" id="txtCode" placeholder="Code" tabindex="3" maxlength="4" />
                                    <span>3405</span>
                                </span>
                            </div>
                            <div class="row">
                                <span style="padding-right: 5px;" class="pass">
                                    <input name="txtPassword" type="password" id="txtPassword" class="login" placeholder="Password" tabindex="2" /></span>
                                <span>
                                    <input name="btnSignIn" type="button" id="btnSignIn" class="btnLogin" />
                                </span>
                            </div>
                        </div>
                    </form>
                   
                    <div id="info">
                        <img src="Images/theme/v1/img/info.png" alt="info" style="float: left;" />
                        <marquee onmouseout="scrollDelay=1" onmouseover="scrollDelay=10000" scrolldelay="1" scrollamount="5" style="width: 665px; margin-left: -3px"><a class="Message" href="_view/msglog.aspx" target="_blank" style="color: #fff; text-decoration: none; font-weight: bold;">SELAMAT DATANG  DI BOS228 AGEN JUDI BOLA ONLINE TERBESAR DAN TERPERCAYA DI INDONESIA&#10;PROMO BOS228 BONUS CASHBACK 5% DAN UNTUK BONUS CASHBACK SLOT 5%&#10;CUKUP 1 AKUN UNTUK SEMUA PERMAINAN. BOLA, CASINO, TANGKAS, TOGEL, POKER ,BANDARQ, ADU Q, DOMINOQQ, CAPSA SUSUN, SLOT DAN PERANG BACCARAT.</a></marquee>
                    </div>
                </div>
            </div>
            <div id="menu" style="position:relative">
                 <ul id="main-menu" 
                     tag-parent-sub-menu="a"
                     data-id="main-menu"
                     data-is-guest="true"
                     class="clearfix" >
                     <li id="home">
                         <a hhref="/" target="_parent">
                             <img src="Images/theme/v1/img/menu/home.png" alt="home">
                             <div>Home</div>
                         </a>
                     </li>
                     <li v-for="(key, index) in Object.keys(menus)" class="">
                         <menu-item class-name="nav-item" :is-guest="isGuest"
                             :name="menus[key][0].GameType">
                             <image-item class-name="" :image-data="menus[key][0]" width="60px" height="60px"
                                 :cache-version="cacheVersion"></image-item>
                             <div> {{ getGameMenuDisplayNameByLang(menus[key][0]) }}
                             <down-arrow type="text" :has-sub-game="menus[key][0].HasSubGame" :game-type="menus[key][0].GameType"
                                 :is-guest="isGuest">
                             </down-arrow>
                                 </div>
                             <submenu class-name="" :submenu-data="menus[key]" :is-guest="isGuest" :cache-version="cacheVersion">
                             </submenu>
                         </menu-item>
                     </li>
                     <li id="promo">
                         <a href="https://bqg0.short.gy/PromoBos228" target="_blank">
                             <img src="Images/theme/v1/img/menu/promo.png" alt="promo">
                             <div>PROMO</div>
                         </a>
                     </li>
                     <li id="livebola">
                         <a href="https://bqg0.short.gy/RTPBOS228" target="_blank">
                             <img src="Images/theme/v1/img/menu/livebola.png" alt="rtp slot">
                             <div>RTP SLOT</div>
                         </a>
                     </li>
                 </ul>
            </div>
            <div class="body" id="body" style="height: 100%; width: 1024px; background: transparent; position: relative; margin: 0 auto">
                <div class="panel">
                    <iframe style="height: 100%; width: 205px;overflow-y: scroll;" src="_bet/panel.aspx" frameborder="0" name="fraPanel" id="fraPanel" scrolling="yes"></iframe>
                </div>
                <div class="home" style="position: absolute; left: 206px;">
                    <iframe onload="setScrollingFraMain(this.contentWindow.location.pathname)" style="height: 100%; width: 100%;" src="_View/Home.aspx" name="fraMain" id="fraMain" frameborder="0"></iframe>
                </div>
                <section class="m-t-1 m-b-1">
                    <div class="container m-auto">
                        <article class="text-justify">
                               <img id="provider" src="Images/theme/v1/img/provider.png" style="margin-top: 40px"/>
                            
<!-- Start WL_Footer_bos228_it_com of bos228.it.com domain -->
<div style="text-align: center;">
	<div style="color: black; background-color: #008000;">
	<img itemprop="image" src="https://res.cloudinary.com/dq4tub8mm/image/upload/v1740025521/Desain_tanpa_judul_98_h0s6po.png" alt="BOS228" width="100%" />
	<h1 style="font-size: 22pt; text-align: center;">BOS228 - SITUS JUDI SLOT ONLINE JACKPOT BESAR , AGEN BANDAR BOLA & BANDAR TOGEL TERLENGKAP DI INDONESIA. </h1>
					<p style="font-size: 12pt; text-align: justify;">Selamat datang di BOS228 yang merupakan sebuah platform Judi Online yang menyediakan berbagai jenis permainan yang bisa anda mainkan hanya dalam 1 ID. Jenis permainan yang beragam seperti Judi Bola, Slot Online, Live Casino, Togel Online, Poker Dominoqq dan masih banyak game lainnya yang terdapat di dalam BOS228 dapat memudahkan anda mencari game yang sesuai dengan selera anda dalam menghasilkan pendapatan tambahan ataupun sekedar mengisi waktu luang.</p>
					<h2 style="font-size: 20pt; text-align: center;">PENJELASAN SINGKAT PERMAINAN BANDAR BOLA & SITUS SLOT ONLINE BOS228.</h2>
					<p style="font-size: 12pt; text-align: justify;">Bagi anda pecinta judi bola, BOS228 menyediakan platform Sportsbook yang menyediakan pasaran terlengkap dan terbaik. Berbagai jenis cabang olahraga seperti Sepakbola, Bola Basket, Tennis dan lainnya tersedia bagi anda untuk memudahkan anda mendapatkan rupiah tambahan. Tersedia juga berbabgai jenis taruhan seperti single bet, mix parlay, 1x2 sehingga anda dapat bertaruh sesuai selera anda.</p>
					<h3 style="font-size: 19pt; text-align: center;">LAYANAN LENGKAP AGEN SLOT ONLINE & BANDAR BOLA TERBESAR BOS228.</h3>
					<p style="font-size: 12pt; text-align: justify;">Untuk kenyamanan maksimal bagi member kami , kami sebagai Situs Slot Online terbaik menyediakan layanan deposit dan withdraw via bank lokal Indonesia. Kami juga menyediakan layanan deposit via E-Wallet, Dana maupun Pulsa sehingga memudahkan member kami untuk melakukan deposit dan bermain di Bandar Bola Terpercaya BOS228.</p>
				</div>
			</div>
<!-- End WL_Footer_bos228_it_com of bos228.it.com domain -->

<!-- Start WL_Footer_bos228_it_com of all domains -->

<!-- End WL_Footer_bos228_it_com of all domains -->
                        </article>
                    </div>
                </section>
            </div>

        </div>
    </div>

    <a style="width: 150px; height: 150px; position: fixed; left: 0; top: 600px; z-index: 9999999" href="https://bqg0.short.gy/bannerpokerqq" target="_blank">
            <img title="" alt="" width="150" height="150" src="Images/HOTGAME(2).gif" /></a>
    <a style="width: 150px; height: 150px; position: fixed; left: 0; top: 753px; z-index: 9999999" href="https://bqg0.short.gy/DEMOSLOTBS228" target="_blank">
        <img title="" alt="" width="150" height="150" src="Images/DEMOSLOTBOS228.gif" /></a>

    <div style="position: fixed; bottom: 0; right: 0">
        <!-- This code must be installed within the body tags -->
        <script type="text/javascript">
            var lhnAccountN = "34870-1";
            var lhnButtonN = 9764;
            var lhnChatPosition = 'default';
            var lhnInviteEnabled = 0;
            var lhnWindowN = 58389;
            var lhnDepartmentN = 51302;
        </script>
        <script src="//www.livehelpnow.net/lhn/widgets/chatbutton/lhnchatbutton-current.min.js" type="text/javascript" id="lhnscript"></script>    
    </div>

    <script type="text/javascript" src="Images/theme/v1/js/wowslider.js"></script>
    <script type="text/javascript" src="Images/theme/v1/js/script.js"></script>

    <script src="js/vue3.3.7.global.js" type="text/javascript"></script>
    <script type="text/javascript">const mountEl = document.querySelector("#main-menu");</script>
    <script src="js/header.menu.vue.js?v=1762746734915" type="text/javascript"></script>
    <script type="text/javascript">menu.mount("#main-menu");</script>

</body>
</html>
