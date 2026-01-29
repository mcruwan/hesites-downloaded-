

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
<!-- Start Head_Tags_1_liga88_it_com of liga88.it.com domain -->
<title>LIGA88 Zona Seru Online Buat Kamu yang Mau Cari Cuan Cepat!</title>
<meta name="keywords" content="Togel Online, Judi Togel, Togel SGP, Agen Togel, Bandar Bola, Taruhan Bola, Pasaran BOla Online, Agen SBOBET Terpercaya" />
<meta name="description" content="LIGA88 jadi zona seru digital tempat kamu bisa nikmati hiburan nonstop, event menarik, dan kesempatan cuan cepat kapan saja, di mana saja." />
<meta name="google-site-verification" content="AXgb5EYeal5NF2O2Xf621PrmV81HAXFW60G8DPS9a-w" />
<link rel="Shortcut Icon" href="https://res.cloudinary.com/grup-dewa/image/upload/v1734352666/liga88-icon.png" />
<link rel="canonical" href="https://liga88.it.com/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="robots" content="index, follow" />
<meta property="og:type" content="website" />
<meta property="og:title" content="LIGA88 Zona Seru Online Buat Kamu yang Mau Cari Cuan Cepat!" />
<meta property="og:description" content="LIGA88 jadi zona seru digital tempat kamu bisa nikmati hiburan nonstop, event menarik, dan kesempatan cuan cepat kapan saja, di mana saja." />
<meta property="og:url" content="https://liga88.it.com/" />
<meta content="1 days" name="revisit-after" />
<meta content="general" name="rating" />
<meta content="id" name="geo.country" />
<meta content="Indonesia" name="geo.placename" />
<meta content="Liga88" name="author" />
<meta content="all" name="Slurp" />
<!-- End Head_Tags_1_liga88_it_com of liga88.it.com domain -->

<!-- Start Head_Tags_1_liga88_it_com of all domains -->

<!-- End Head_Tags_1_liga88_it_com of all domains -->


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

            var servertimestring = (servermode == "server-php") ? '<? print date("F d, Y H:i:s", time())?>' : (servermode == "server-ssi") ? '<!--#config timefmt="%B %d, %Y %H:%M:%S"--><!--#echo var="DATE_LOCAL" -->' : '01/29/2026 08:40:05'
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

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//liga88.it.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; top: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="78DE2804" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="F3Yu33StXExNDixwOtefE2/ipY2hHAnECWQdtlG5buFsZlHcndEDN5DYykN89UGOYUFsmJKfW+fLY1l563FivizJ1ZXc9KJMSR8avvkThW3LPr/h4v6TB6rWbOqiUFYu6OZQOYpkw6TYjCYyRrLPoNpfZ8GMjj2CBx18cH1it5aS5RbH1DW7f5jPuhs19EmvV4W6o8p7URNkT5sYd4ynWvD5llBOm1LVu1iPlXnopgaxK4jw/dq1QzBWA1qfBkl0FBU2VMRju6zx8H+NZTVT3w==" />
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
            
<!-- Start WL_Footer_liga88_it_com of liga88.it.com domain -->
<div><h1 style="text-align: center;"><span style="font-size: 18pt; color: yellow; text-align: center">LIGA88 Agen Bola Online, Agen Togel SGP dan Situs Bola Terpercaya</span></h1><p style="font-size: 11pt; color: yellow; text-align: center">
            LIGA88 sebagai salah satu situs <a title="judi bola terpercaya" href="https://liga88.it.com/"><strong>Judi Bola Terpercaya</strong></a> lengkap dengan berbagai macam permainan yang ada di dalam nya seperti, <a title="bandar bola terpercaya" href="https://liga88.it.com/"><strong>Bandar Bola Online</strong></a>, dan Judi Togel Online, <a title="poker qq online" href="https://liga88.it.com/"><strong>Poker QQ Online</strong></a> dan Agen Casino Terpercaya. Pilihan tepat dan cerdas bagi pada pecinta <a title="taruhan bola online" href="https://liga88.it.com/"><strong>Taruhan Bola Online</strong></a> jika bergabung bersama kami. Karena kami menyediakan berbagai macam odds pilihan sesuai keinginan para bettor setia kami, odds dapat di pilih sesuai keinginan seperti pasaran odds Indonesia, Malaysia, dan Hongkong sungguh sangat variatif dan sempurna menurut kami.
    Selain itu, LIGA88 juga memiliki berbagai macam jenis permainan yang dapat di mainkan langsung hanya dalam 1 Akun saja, seperti Casino, Poker Online, Dimonoqq Online, Togel Online dengan berbagai Pasaran, Number Game, Tangkas, Slot, Tembak Ikan dan masih banyak lagi yang tidak dapat kami sebutkan dalam artikel ini. Pastinya setiap permainana yang di sedaikan pasti sudah sangat familiar di semua kalangan penjudi, dan Komisi besar-besaran dari semua Game di LIGA88.</p><h2 style="text-align: center;"><span style="font-size: 16pt; color: yellow; text-align: center">Kemudahan Bermain Pasaran Bola dan Agen SBOBET Di LIGA88</span></h2><p style="font-size: 11pt; color: yellow; text-align: center">LIGA88 memberikan berbagai kemudahan dalam bermain <a title="agen judi casino online" href="https://liga88.it.com/"><strong>Agen Judi Casino Online</strong></a> dan <a title="judi togel sgp" href="https://liga88.it.com/"><strong>Judi Togel SGP</strong></a> di sini. Cukup membuka alamat resmi kami dan pilih Menu Daftar, kemudian isi semua data diri teman-teman dengan lengkap dan benar. Jikalau sudah selesai, maka tinggal memasukan Username dan Password yang sengaja kami sediakan untuk teman-teman seklian. Maka dari itu teman- teman sudah dapat melihat semua game-game yang sudah kami sediakan. Cukup dengan melakukan Setor Dana / Deposit ke rek yang telah tertera, dan nanti akan segera di proses dengan operator – operator handal kami.</p><h3 style="text-align: center;"><span style="font-size: 14pt; color: yellow; text-align: center">Komisi Dan Diskon Terbesar Agen Bola,  Agen Casino Terpercaya LIGA88</span></h3><p style="font-size: 11pt; color: yellow; text-align: center">LIGA88 memberikan banyak Komisi di setiap game nya baik itu dalam permainan <a title="agen bola" href="https://liga88.it.com/"><strong>Agen Bola</strong></a> atau Casino, tidak lupa kami berikan juga Diskon besar-besaran untuk semua Pasaran <a title="togel online" href="https://liga88.it.com/"><strong>Togel Online</strong></a>. Setiap Komisi dan Diskon di masukan secara otomatis ke dalam Akun yang sudah terdaftar di LIGA88. Tidak lupa kami sampaikan juga bahwa LIGA88 memberikan Bonus Referral yang berlaku seumur hidup untuk semua Bonus Hunter apabila merekomendasikan <a title="situs bola online" href="https://liga88.it.com/"><strong>Situs Bola Online</strong></a> LIGA88 di semua kalangan di Indonesia seperti Sosmed dan lain sebagainnya. Sekian dari saya dan Terima Kasih telah meluangkan sedikit waktu untuk membaca Artiket Pendek yang suguhkan untuk Anda. Salam LIGA88.</p></div>
<!-- End WL_Footer_liga88_it_com of liga88.it.com domain -->

<!-- Start WL_Footer_liga88_it_com of all domains -->

<!-- End WL_Footer_liga88_it_com of all domains -->
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
