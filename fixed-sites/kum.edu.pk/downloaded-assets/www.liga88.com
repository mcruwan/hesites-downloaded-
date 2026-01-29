

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
<!-- Start Head_Tags_1_liga88_com of liga88.com domain -->
<title>LIGA88 ⚽️ Situs Judi Bola Pasaran Terlengkap Lisensi SBOBET88</title>
    <meta name="keywords" content="Liga88, Liga 88, Liga88 Link Alternatif, Liga88 Login, Liga88 Link, Sbobet88, Sbobet 88, Agen Judi Bola, Situs Judi Bola, Judi Bola Parlay" />
    <meta name="description" content="LIGA88 adalah pilihan terbaik para pecinta judi bola yang mencari situs resmi sbobet dengan pasaran terlengkap, layanan profesional, dan keamanan tingkat tinggi." />
    <link rel="canonical" href="https://www.liga88.com/" />
    <link rel="Shortcut Icon" href="https://res.cloudinary.com/grup-dewa/image/upload/v1734352666/liga88-icon.png" />
    <link rel="amphtml" href="https://liga88ku.pages.dev/" />
    <meta name="google-site-verification" content="h6QdKpGoQHt-PsbhvCXsXUX3SjBcRhg9tWSEDSAQir0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="index, follow" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="LIGA88 ⚽️ Situs Judi Bola Pasaran Terlengkap Lisensi SBOBET88" />
    <meta property="og:description" content="LIGA88 adalah pilihan terbaik para pecinta judi bola yang mencari situs resmi sbobet dengan pasaran terlengkap, layanan profesional, dan keamanan tingkat tinggi." />
    <meta property="og:url" content="https://www.liga88.com/" />
    <meta content="1 days" name="revisit-after" />
    <meta content="general" name="rating" />
    <meta content="id" name="geo.country" />
    <meta content="Indonesia" name="geo.placename" />
    <meta content="Liga88" name="author" />
    <meta content="all" name="Slurp" />
<!-- End Head_Tags_1_liga88_com of liga88.com domain -->

<!-- Start Head_Tags_1_liga88_com of all domains -->

<!-- End Head_Tags_1_liga88_com of all domains -->


            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-34506801-22"></script>
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag() { dataLayer.push(arguments); }
                gtag('js', new Date());
                gtag('config', 'UA-34506801-22');
            </script> 


    <link rel="stylesheet" href="Images/theme/v1/header.css?v=1" />
    <link rel="stylesheet" href="css/common.css" />
    <script type="text/javascript" src="Images/theme/v1/js/jquery.js"></script>
    <script type="text/javascript" src="Images/theme/v1/js/jquery.nyroModal-1.6.2.pack.js"></script>

    <script type="text/javascript" src="js/common.js?v=20241218"></script>
    <script type="text/javascript" src="js/header.js?v=20250106"></script>
    <script type="text/javascript" src="js/login.js?v=20250303"></script>

    <script language="javascript" type="text/javascript">	       
        $().ready(function () {
            $('#btReg').click(function () {
                popUpRegister('');
            });
        });
    </script>
    <script type="text/javascript">
        /***********************************************
        * Local Time script- © Dynamic Drive (http://www.dynamicdrive.com)
        * This notice MUST stay intact for legal use
        * Visit http://www.dynamicdrive.com/ for this script and 100s more.
        ***********************************************/

        var weekdaystxt = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
        var monthstxt = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        //var monthstxt = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]

        function showLocalTime(container, servermode, offsetMinutes, displayversion) {
            if (!document.getElementById || !document.getElementById(container)) return
            this.container = document.getElementById(container)
            this.displayversion = displayversion

            var servertimestring = (servermode == "server-php") ? '<? print date("F d, Y H:i:s", time())?>' : (servermode == "server-ssi") ? '<!--#config timefmt="%B %d, %Y %H:%M:%S"--><!--#echo var="DATE_LOCAL" -->' : '01/29/2026 08:41:01'
            this.localtime = this.serverdate = new Date(servertimestring)
            this.localtime.setTime(this.serverdate.getTime() + offsetMinutes * 60 * 1000) //add user offset to server time
            this.updateTime()
            this.updateContainer()
        }

        showLocalTime.prototype.updateTime = function () {
            var thisobj = this
            this.localtime.setSeconds(this.localtime.getSeconds() + 1)
            setTimeout(function () { thisobj.updateTime() }, 1000) //update time every second
        }

        showLocalTime.prototype.updateContainer = function () {
            var thisobj = this
            if (this.displayversion == "long")
                this.container.innerHTML = this.localtime.toLocaleString()
            else if (this.displayversion == "short") {
                var hour = this.localtime.getHours()
                var minutes = this.localtime.getMinutes()
                var seconds = this.localtime.getSeconds()
                var ampm = (hour >= 12) ? "PM" : "AM"
                var dayofweek = weekdaystxt[4]//weekdaystxt[this.localtime.getDay()]
                var monthofyear = monthstxt[this.localtime.getMonth()]
                var day = this.localtime.getDate();
                var year = this.localtime.getFullYear();
                this.container.innerHTML = dayofweek + ",  " + day + " " + monthofyear + " " + year + " " + formatField(hour, 1) + ":" + formatField(minutes) + ":" + formatField(seconds) + " GMT"
            }
            else if (this.displayversion == "timeonly") {
                var hour = this.localtime.getHours()
                var minutes = this.localtime.getMinutes()
                var seconds = this.localtime.getSeconds()
                var ampm = (hour >= 12) ? "PM" : "AM"
                this.container.innerHTML = formatField(hour, 1) + ":" + formatField(minutes) + ":" + formatField(seconds) + "" + ampm
            }
            else if (this.displayversion == "datetimegmt") {
                var monthofyear = monthstxt[this.localtime.getMonth()]
                var day = this.localtime.getDate();
                var year = this.localtime.getFullYear();
                var hour = this.localtime.getHours();
                var ampm = (hour >= 12) ? "PM" : "AM"
                if (hour > 12) {
                    hour = hour - 12;
                }
                var minutes = this.localtime.getMinutes()
                var seconds = this.localtime.getSeconds()
                var dayofweek = weekdaystxt[this.localtime.getDay()]
                this.container.innerHTML = monthofyear + "/" + day + "/" + year + " " + hour + ":" + formatField(minutes) + formatField(ampm) + "  GMT+8"
            }
            setTimeout(function () { thisobj.updateContainer() }, 1000) //update container every second
        }
        function formatField(num, isHour) {
            if (typeof isHour != "undefined") { //if this is the hour field
                var hour = (num > 12) ? num - 12 : num
                return (hour == 0) ? 12 : hour
            }
            return (num <= 9) ? "0" + num : num //if this is minute or sec field
        }
    </script>
    <!-- fancybox start -->

    
    <!-- fancybox end -->
    
    <script language="javascript" type="text/javascript">
        function popUpPannduan() {
            window.open('Images/Panduan.html', 'Panduan Bola', 'width=1024,height=768,toolbars=no,scrollbars=yes,status=no,resizable=no');
        }
    </script>
    <style type="text/css">
        ul.Bg li {
            padding: 0 !important;
        }

        a.navbar3 {
            font-size: 11px !important;
        }

        #sectionWrapper #sectionContent1 #sectionRight {
            background: url(Images/theme/v1/img/bg/right.png?v=5) no-repeat !important;
        }
    </style>

    
    <link rel="stylesheet" href="css/header.submenu.css?v=1762746734915" />
    <style type="text/css">
        .sub-menu .gameNav li:hover {
            text-decoration: underline !important;
        }

        .main_width {
            width: 980px;
            height: 110px;
            background-color: #000000;
        }

        .sub-menu {
            top: 159px;
            padding-top: 11px;
            padding-bottom: 23px
        }

        .arrow-down {
            border-top: 6px solid #000;
            margin-top: 8px;
        }

        .arrow-down-submenu {
            font-size: 13px;
            color: #fff
        }
        .sub-menu .gameNav li {
            margin: 10px -8px 0 0 !important;
        }
    </style>
    
</head>
<body>
    
    
    <img src="Images/theme/v1/img/bg/bg.jpg" class="bg">
    
    <form name="loginForm" method="post" action="Defaults/Default8.aspx" id="loginForm" style="position: relative">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//www.liga88.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; top: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="78DE2804" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="kZn1fZpeHwrN30z35hK5u4ShaM+eVNiV483m+xk4hJfNlGzU0KmM1p9Hqo7J+A2+oUdhXZvikyOtL8qXwliiEUab5B8w366j9tMuahF03bNRF4HabDv6AFa9o+qQJKKoqHYV8mTPJGRnvmTxsVnr5wGfYqzykotDxPpzE9WXI23VN4gBF/urX/p7iE4mMIO4i2zdUN7hi6PNcGBVt7kTNgWFa6ziBC1beUNwERS/jvaX3NynjVefJuBRaICo3FFoYAI/S4Nld4oq9ihGmmKaew==" />
</div>
        <div id="container" style="margin: 0 auto">
            <div>
                <table border="0" cellspacing="0" cellpadding="0" height="100%" style="margin: 0 auto">
                    <tr>
                        <td>
                            <table border="0" cellspacing="0" cellpadding="0" width="980px" height="100%">
                                <tr>
                                    <td width="315px" height="172px">
                                        <a href="">
                                            <img src="Images/logo.png" alt="" title="" /></a>
                                    </td>
                                    <td width="665px" align="left">
                                        <table border="0" cellspacing="0" cellpadding="0" align="left" style="width: 665px; height: 66px">
                                            <tr style="width: 665px; height: 68px"></tr>
                                            <tr style="width: 665px; height: 66px">
                                                <td>
                                                    <table border="0" cellspacing="0" cellpadding="0" align="left" style="background: url(Images/theme/v1/img/bg/login.png); background-repeat: no-repeat; width: 665px; height: 66px">
                                                        <tr>
                                                            <td rowspan="2" style="width: 65px; text-align: right;">
                                                                <a href="https://x.com/situsliga88" target="_blank">
                                                                    <img src="Images/theme/v1/img/btn/twitter.png" style="" /></a>
                                                            </td>
                                                            <td rowspan="2" style="width: 70px; text-align: center;">
                                                                <a href="https://www.facebook.com/situsliga88" target="_blank">
                                                                    <img src="Images/theme/v1/img/btn/facebook.png" /></a>
                                                            </td>
                                                            <td rowspan="2" style="width: 215px; padding-left: 7px">
                                                                <span id="timecontainer"></span>
                                                                <script type="text/javascript">
                                                                    new showLocalTime("timecontainer", "server-asp", 0, "short");
                                                                </script>
                                                            </td>
                                                            <td style="width: 15px;"></td>
                                                            <td style="width: 345px; height: 64px;">
                                                                <table border="0" cellspacing="0" cellpadding="0" width="100%" height="100%">
                                                                    <tr style="width: 100%;">
                                                                        <td style="width: 130px;">
                                                                            <input name="txtUserName" type="text" id="txtUserName" style="text-align: left; width: 128px; border: none; background: none; margin-top: 7px; height: 15px; margin-left: 2px" onfocus="clearText(this)" onblur="clearText(this)" value="User Name" tabindex="1" maxLength="12" />
                                                                        </td>
                                                                        <td style="width: 75px;">
                                                                            <input name="txtCode" type="text" id="txtCode" onfocus="clearText(this)" onblur="clearText(this)" tabindex="3" maxlength="4" style="width: 75px; border: none; background: none; margin-top: 7px; height: 20px; text-align: center" title="Code" />
                                                                        </td>
                                                                        <td style="width: auto;">
                                                                            <input name="btnSignIn" type="button" id="btnSignIn" tabindex="4" class="btnLogin" style="text-decoration: none; cursor: pointer; border: 0; width: 95px; height: 24px; cursor: pointer; margin-left: 4px; margin-top: 7px;" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="width: 100%;">
                                                                        <td style="width: 130px; padding-left: 2px;">
                                                                            <div id="div1">
                                                                                <input name="Text1" type="text" id="Text1" style="text-align: left; width: 128px; background: none; border: none; height: 15px; margin-bottom: 5px;" value="Password" onfocus="changeBox()" tabindex="2" title="Password" />
                                                                            </div>
                                                                            <div id="div2" style="display: none;">
                                                                                <input name="txtPassword" type="password" id="txtPassword" style="text-align: left; width: 128px; background: none; border: none; height: 15px; margin-bottom: 5px;" onblur="restoreBox()" tabindex="2" />
                                                                            </div>
                                                                        </td>
                                                                        <td style="width: 75px; text-align: center;">
                                                                            <img border="0" align="absmiddle" src="public/img.aspx" style="width: 75px; height: 20px; margin-bottom: 5px;">
                                                                        </td>
                                                                        <td style="width: auto;">
                                                                            <a href="#" id="btReg">
                                                                                <img src="Images/theme/v1/img/btn/register.png" tabindex="5" style="margin-left: 5px; margin-bottom: 5px;" /></a>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>

                                            <tr style="width: 665px; height: 38px">
                                                <td>
                                                    <div id="sectionMenu">
                                                        <ul id="main-menu" tag-parent-sub-menu="a" data-id="main-menu" data-is-guest="true" class="Bg" style="margin: 0; padding: 0; text-align: center">
                                                            <li class="linkfade" style="background: none; width: 35px;"><a href="#">
                                                                <img src="Images/theme/v1/img/btn/menu-home.png" style="margin-top: -3px;" /></a></li>
                                                            <li v-for="(key, index) in Object.keys(menus)" class="linkfade">
                                                                <menu-item class-name="navbar3" :is-guest="isGuest" :name="menus[key][0].GameType">
                                                                  {{ getGameMenuDisplayNameByLang(menus[key][0]) }}
                                                                    <down-arrow type="text" :has-sub-game="menus[key][0].HasSubGame" :game-type="menus[key][0].GameType"
                                                                        :is-guest="isGuest">
                                                                    </down-arrow>
                                                                    <submenu class-name="" :submenu-data="menus[key]" :is-guest="isGuest" :cache-version="cacheVersion">
                                                                    </submenu>
                                                                </menu-item>
                                                            </li>
                                                            <li class="linkfade" style="width: 83px; background-size: 105px 30px;"><a class="navbar3" href="#">Mobile Web</a></li>
                                                            <li class="linkfade" style="width: 91px; background-size: 155px 30px;"><a class="navbar3" href="#" onclick="popUpPannduan();">PANDUAN BOLA</a></li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr style="position: absolute; top: 159px">
                        <td style="background: url(Images/theme/v1/img/bg/info_df.png) no-repeat; height: 50px; background-size: 988px 50px;">
                            <div id="div-marquee" style="float: left; width: 940px; padding-top: 3px; margin-left: 27px" align="right">
                                <input id="text-marquee" type="hidden" value="SELAMAT DATANG DI LIGA88 SITUS BETTING ONLINE DENGAN PASARAN BOLA TERBAIK! LINK ALT: WWW.LIGA88AMAN.COM / WWW.LIVELIGA88.XYZ / WWW.LIGA88ID.ASIA - MAINKAN SEMUA PERMAINAN HANYA DENGAN SATU ID! INFORMASI PENTING: SELALU CEK REKENING TUJUAN SEBELUM ANDA MELAKUKAN DEPOSIT BOSSKU! DIKARENAKAN REK TUJUAN DEPOSIT BISA BERUBAH KAPAN SAJA! TERIMA KASIH" />
                                <script type="text/javascript">
                                    initMarquee('#000')
                                </script>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>

            <div style="width: 980px; position: relative; margin: 0 auto">
                <div id="bottom" style="width: 980px; height: 680px; margin-top: 30px;">
                    <iframe src="Images/theme/v1/index.html?v=8" width="100%" height="100%" allowtransparency="true" frameborder="0" scrolling="no"></iframe>
                </div>
                <div style="width: 245px; position: absolute; right: 19px; top: 278px">
                    <table width='100%' height='100%' border='0' cellspacing='0' cellpadding='0'><tr><td style='background:url(Images/theme/v1/img/bg/hasilTogelResult_bg.png) no-repeat;width: 245px;height: 63px;text-align:center'><span class='TogelCountry'>*SINGAPORE*</span></br><span class='Togel'>9683</span></td></tr><tr><td style='background:url(Images/theme/v1/img/bg/hasilTogelResult_bg.png) no-repeat;width: 245px;height: 63px;text-align:center'><span class='TogelCountry'>BANGKOK</span></br><span class='Togel'>9362</span></td></tr><tr><td style='background:url(Images/theme/v1/img/bg/hasilTogelResult_bg.png) no-repeat;width: 245px;height: 63px;text-align:center'><span class='TogelCountry'>CAMBODIA</span></br><span class='Togel'>3582</span></td></tr><tr><td style='background:url(Images/theme/v1/img/bg/hasilTogelResult_bg.png) no-repeat;width: 245px;height: 63px;text-align:center'><span class='TogelCountry'>CHINA</span></br><span class='Togel'>5119</span></td></tr><tr><td style='background:url(Images/theme/v1/img/bg/hasilTogelResult_bg.png) no-repeat;width: 245px;height: 63px;text-align:center'><span class='TogelCountry'>HANOI</span></br><span class='Togel'>9075</span></td></tr><tr><td style='background:url(Images/theme/v1/img/bg/hasilTogelResult_bg.png) no-repeat;width: 245px;height: 63px;text-align:center'><span class='TogelCountry'>HONGKONG</span></br><span class='Togel'>2754</span></td></tr></table>
                </div>
                <a href="#" onclick="OpenLHNChat();return false;" style="width: 225px; height: 40px; margin: 0 auto; position: absolute; right: 25px; top: 170px;"></a>
            </div>
            
<!-- Start WL_Footer_liga88_com of liga88.com domain -->
<div><h1 style="text-align: center;"><span style="font-size: 18pt; color: yellow; text-align: center">Liga88 Agen Situs Judi Bola Parlay Terbesar di Indonesia Lisensi SBOBET88</span></h1><p style="font-size: 11pt; color: yellow; text-align: center">
            Saat ini, dunia taruhan olahraga semakin berkembang pesat, terutama di Indonesia. Salah satu nama yang menjadi sorotan dalam industri ini adalah Liga88, sebuah agen situs judi bola parlay terbesar yang telah mendapatkan lisensi resmi dari <a href="https://www.liga88.com/">Sbobet88</a>. Dengan reputasi yang kuat dan layanan berkualitas, Liga88 telah menjadi pilihan utama bagi para penggemar judi bola.</p><h2 style="text-align: center;"><span style="font-size: 16pt; color: yellow; text-align: center">Login Liga88 Link Alternatif Menggunakan Android dan iOS</span></h2><p style="font-size: 11pt; color: yellow; text-align: center"> Liga88 adalah salah satu platform taruhan online terbesar di Indonesia. Namun, terkadang akses ke situs resmi Liga88 dapat dibatasi atau terblokir karena regulasi tertentu. Untuk mengatasi hal ini, Liga88 menyediakan link alternatif yang dapat digunakan untuk mengakses situsnya, baik melalui perangkat Android maupun iOS. Berikut adalah <a href="https://www.liga88.com/">Liga88 Link Alternatif</a> : LIGA88AMAN.COM ataupun bisa anda cari di pencarian google dengan mengetik : Liga88, di posisi nomor 1 atau baris paling atas sudah pasti website resmi kami.</p><h3 style="text-align: center;"><span style="font-size: 14pt; color: yellow; text-align: center">Liga88 Situs Judi Online Resmi Terlengkap Online 24 Jam</span></h3><p style="font-size: 11pt; color: yellow; text-align: center">Selamat datang di <a href="https://www.liga88.com/">Liga88</a>, situs judi online resmi yang menyediakan berbagai permainan terbaik untuk para pecinta taruhan. Liga88 hadir dengan layanan profesional dan sistem yang aman, menjamin kenyamanan Anda dalam bermain judi online kapan saja dan di mana saja. Liga88 merupakan situs judi online terlengkap anda hanya perlu daftar terus login untuk mengakses situs kami, setelah itu silahkan melakukan deposit dengan minimal Rp 25.000,- saja anda sudah bisa memainkan semua games yang tersedia di liga88 : Judi Bola, Tangkas, Togel Online, Pkv Games, Slot Gacor, Casino Online dan Tembak ikan.</p></div>
<!-- End WL_Footer_liga88_com of liga88.com domain -->

<!-- Start WL_Footer_liga88_com of all domains -->

<!-- End WL_Footer_liga88_com of all domains -->
        </div>
        
        <div id="livechat">
            <a href="#" onclick="OpenLHNChat();return false;">
                <img src="Images/theme/v1/img/livechat1.png" class="linkfade" /></a>
            <!-- This code must be installed within the body tags -->
            <script type="text/javascript">
                var lhnAccountN = "11332-1";
                var lhnButtonN = 7158;
                var lhnChatPosition = 'default';
                var lhnInviteEnabled = 1;
                var lhnWindowN = 28489;
                var lhnInviteN = 40728;
                var lhnDepartmentN = 29626;
            </script>
            <a href="http://www.livehelpnow.net/products/live-chat-system" target="_blank" style="font-size: 10px;" id="lhnHelp">best live chat</a>
            <script src="//www.livehelpnow.net/lhn/widgets/chatbutton/lhnchatbutton-current.min.js" type="text/javascript" id="lhnscript"></script>
        </div>

        <a style="width: 150px; height: 150px; position: absolute; left: 10px; top: 215px;" href="https://pedu.li/dewaqq" target="_blank">
            <img title="" alt="" width="150px" height="150px" src="Images/PKVHOKI.gif?v=10042023" /></a>
        <a style="width: 150px; height: 150px; position: absolute; left: 10px; top: 377px;" href="https://pedu.li/imcpoker" target="_blank">
            <img title="" alt="" width="150px" height="150px" src="Images/bandarqq.gif?v=10042025" /></a>
        <a style="width: 150px; height: 150px; position: absolute; left: 10px; top: 539px;" href="https://rtpliga88.org" target="_blank">
            <img title="" alt="" width="150px" height="150px" src="Images/RTP-Liga88-150x150.gif" /></a>
        
        <a style="width: 180px; height: 100px; position: absolute; right: 10px; top: 215px;" href="https://t.ly/liga88" target="_blank">
            <img title="" alt="" width="180px" height="100px" src="Images/liga88.gif?v=18122023" /></a>
    </form>
     <script src="js/vue3.3.7.global.js"></script>
    <script>const mountEl = document.querySelector("#main-menu");</script>
    <script src="js/header.menu.vue.js?v=1762746734915"></script>
    <script>menu.mount("#main-menu");</script>
</body>
</html>
