
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
<!-- Start Head_Tags_1_liga228_com of liga228.com domain -->
<meta name="google-site-verification" content="kvCYSpP9T6JT1DV4iE-kAY5rEY0KrZBuvVWkgsQsTFM" />
    <meta name="google-site-verification" content="lsFirLOj1awnq63i0k-Mhh8xhCrF-_HpuBfGqtzxFgg" />
    <meta name="google-site-verification" content="08TNt7_CEcnAlv_Ar45s85s71UEauYzqYPCk3fhxP7w" />
    <meta name="google-site-verification" content="T-_c3StHBFhKkWnDr8g-dDampzpZk9Fksnq6e6TcP4Q" />
    <link rel="canonical" href="https://liga228.com" />
    <title>Liga228 : Judi Bola | Slot Online | Bandar Bola | Agen Bola | Taruhan Bola</title>
    <meta name="description" content="Liga228 agen judi bola, bandar bola, taruhan bola dengan pasaran terlengkap, dan slot online terbesar dan terpercaya di Indonesia." />
    <meta name="keywords" content="judi bola, judi bola online, bandar bola, agen judi bola, agen bola, taruhan bola, casino online, togel online, poker online, tangkas online, slot online" />
 
    <meta name="language" content="ID" />
    <meta name="geo.region" content="ID" />
    <meta name="geo.placename" content="Indonesia" />
    <meta name="categories" content="Agen Bola" />
    <meta name="robots" content="INDEX, FOLLOW" />
    <meta name="viewport" content="width=1100" />
<link rel="amphtml" href="https://inibarugacor.com/liga228/" />
<!-- End Head_Tags_1_liga228_com of liga228.com domain -->

<!-- Start Head_Tags_1_liga228_com of all domains -->

<!-- End Head_Tags_1_liga228_com of all domains -->


            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-116749842-2"></script>
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag() { dataLayer.push(arguments); }
                gtag('js', new Date());
                gtag('config', 'UA-116749842-2');
            </script> 


    <link rel="Shortcut Icon" href="Images/favicon.ico" />
    <link rel="stylesheet" href="Images/theme/v1/header.css" />
    <link rel="stylesheet" href="Images/theme/v1/footer.css?v=1" />
    <link href="https://fonts.googleapis.com/css?family=Exo+2:500,500i,800,800i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <link rel="stylesheet" href="css/common.css" />
    <link rel="stylesheet" href="Images/theme/v1/css/nyroModal.full.css" />
    <script type="text/javascript" src="Images/theme/v1/js/jQuery.js"></script>
    <script type="text/javascript" src="Images/theme/v1/js/jquery.nyroModal-1.6.2.pack.js"></script>

    <script type="text/javascript" src="js/common.js?v=20241218"></script>
    <script type="text/javascript" src="js/header.js?v=20250106"></script>
    <script type="text/javascript" src="js/login.js?v=20250303"></script>

    <script language="javascript" type="text/javascript">	       
        $().ready(function () {
            $('#btnReg').click(function () {
                popUpRegister('');
            });
            $('#btnPromo').click(function () {
                var url = 'Images/theme/v1/promo/promo.html?v=3'
                popUpPromo(url, 1000, 1000);
            });
        });
    </script>
    <style type="text/css">
        .hasil {
            position: absolute;
            right: 75px;
            top: 160px;
            text-align: center
        }

        .TogelBall {
            color: #ffffff;
            font-family: Impact, Arial, Serif;
            font-size: 60px;
            letter-spacing: 14px;
        }

        .menu > li > a {
            padding: 0px 9px !important;
        }
    </style>
    <script type="text/javascript">

        /***********************************************
            * Local Time script- © Dynamic Drive (http://www.dynamicdrive.com)
            * This notice MUST stay intact for legal use
            * Visit http://www.dynamicdrive.com/ for this script and 100s more.
            ***********************************************/

        var weekdaystxt = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
        //var monthstxt = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        var monthstxt = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"];

        function showLocalTime(container, servermode, offsetMinutes, displayversion) {
            if (!document.getElementById || !document.getElementById(container)) return;
            this.container = document.getElementById(container);
            this.displayversion = displayversion;

            var servertimestring = (servermode == "server-php") ? '<? print date("F d, Y H:i:s", time())?>' : (servermode == "server-ssi") ? '<!--#config timefmt="%B %d, %Y %H:%M:%S"--><!--#echo var="DATE_LOCAL" -->' : '01/29/2026 08:41:08';
            this.localtime = this.serverdate = new Date(servertimestring);
            this.localtime.setTime(this.serverdate.getTime() + offsetMinutes * 60 * 1000); //add user offset to server time
            this.updateTime();
            this.updateContainer();
        };

        showLocalTime.prototype.updateTime = function () {
            var thisobj = this;
            this.localtime.setSeconds(this.localtime.getSeconds() + 1);
            setTimeout(function () { thisobj.updateTime() }, 1000); //update time every second
        };

        showLocalTime.prototype.updateContainer = function () {
            var thisobj = this;
            if (this.displayversion == "long")
                this.container.innerHTML = this.localtime.toLocaleString();
            else if (this.displayversion == "short") {
                var hour = this.localtime.getHours();
                var minutes = this.localtime.getMinutes();
                var seconds = this.localtime.getSeconds();
                var ampm = (hour >= 12) ? "PM" : "AM";
                if (hour > 12) {
                    hour = hour - 12;
                }
                var dayofweek = weekdaystxt[4]; //weekdaystxt[this.localtime.getDay()]
                var monthofyear = monthstxt[this.localtime.getMonth()];
                var day = this.localtime.getDate();
                var year = this.localtime.getFullYear();

                //this.container.innerHTML = formatField(hour, 1) + ":" + formatField(minutes) + ":" + formatField(seconds) + " " + ampm + " " + dayofweek + ""
                this.container.innerHTML = monthofyear + "/" + day + "/" + year + "/" + formatField(hour) + ":" + formatField(minutes) + ":" + formatField(seconds) + " " + '(GMT+7)'// + " " + ampm 
                //this.container.innerHTML = day + " " + monthofyear + " " + year + " - " + formatField(hour) + ":" + formatField(minutes) + ":" + formatField(seconds)
            } else if (this.displayversion == "timeonly") {
                var hour = this.localtime.getHours();
                var minutes = this.localtime.getMinutes();
                var seconds = this.localtime.getSeconds();
                var ampm = (hour >= 12) ? "PM" : "AM";
                this.container.innerHTML = formatField(hour, 1) + ":" + formatField(minutes) + ":" + formatField(seconds) + "" + ampm;
                ;
            } else if (this.displayversion == "datetimegmt") {
                var monthofyear = monthstxt[this.localtime.getMonth()];
                var day = this.localtime.getDate();
                var year = this.localtime.getFullYear();
                var hour = this.localtime.getHours();
                /*var ampm = (hour >= 12) ? "PM" : "AM"
                if (hour > 12) {
                    hour = hour - 12;
                }*/
                var minutes = this.localtime.getMinutes();
                var seconds = this.localtime.getSeconds();

                var dayofweek = weekdaystxt[this.localtime.getDay()];
                //this.container.innerHTML = hour + ":" + formatField(minutes) + ":" + formatField(seconds) + formatField(ampm) + "  " + monthofyear + " " + day + ", " + year + " GMT+7"
                this.container.innerHTML = monthofyear + "/" + day + "/" + year + " " + hour + ":" + formatField(minutes) + ":" + seconds /*+ formatField(ampm)*/ + "  (GMT+8)";
            }
            setTimeout(function () { thisobj.updateContainer() }, 1000); //update container every second
        };

        function formatField(num, isHour) {
            if (typeof isHour != "undefined") { //if this is the hour field
                var hour = (num > 12) ? num - 12 : num;
                return (hour == 0) ? 12 : hour;
            }
            return (num <= 9) ? "0" + num : num; //if this is minute or sec field
        }
    </script>
    <script type="text/javascript">
        function popupPanduan() {
            window.open('Images/panduan/panduan.html', 'Panduan', 'width=1200,height=1200,toolbars=no,scrollbars=no,status=no,resizable=no');

        }
    </script>

    
    <link rel="stylesheet" href="css/header.submenu.css?v=1762746734915" />
    <style type="text/css">
        .menu > li > a {
            padding: 0px 10px !important;
        }

        .sub-menu .gameNav li:hover {
            text-decoration: underline !important
        }

        .main_width {
            width: 956px;
            background-color: #284883
        }

        .arrow-down {
            margin-top: -21px;
            margin-right: 6px;
        }

        .sub-menu {
            top: 160px;
            padding-top: 14px;
            padding-bottom: 23px
        }

        .arrow-down-submenu {
            font-size: 13px;
            color: #fff
        }

        .slot365-game {
            width: 103px;
        }

        .slot365txt {
            margin-left: -16px;
        }

        .slot-game {
            width: 70px;
        }

        .slottxt {
            margin-left: -16px;
        }

        .casino-game {
            width: 90px;
        }

        .casinotxt {
            margin-left: -15px;
        }

        .fish-game {
            width: 65px;
        }

        .fishtxt {
            margin-left: -14px;
        }
        .sub-menu .gameNav li {
            margin: 10px -9px 0 0 !important;
        }
    </style>
    
</head>
<body style="min-width: 1024px;">
    <a href="#advertise" class="popup_ads" id="popup_ads"></a>
    <div style="background-color: #fff; position: absolute; width: 100%; height: 41px; top: 133px"></div>
    <form name="form1" method="post" action="Defaults/Default75.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//liga228.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; top: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="49D3013D" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="FvudFvtZmuP/rjfNKoH3NMF60LYR3UGxSviIIe0dO7GXT6orHejbwAzRjGOio5ur2T3TO3SqOyFgRNCfe+3VFEnPhx7wZ7Nr9zqkoh/2QqEWcNryNc5VE7VdfMCXBg/7HBKQl2riLqjEC88/nmoRzrcpwopXEYOEMEATDHqlbcQspSO4fGHOqgT+cynNaI4nKrqSGOclBShtcdomNXTQ8Tkgwmnlrb8CoFEBF4SpDs8lKLUKLTts+IbIGY6fa5Pu41TWj49vPLIT5Oz4leUTPw==" />
</div>
        <div class="wrapper" style="width: 100%; position: relative;">
            <div class="header" style="margin: 0 auto; width: 955px;">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td rowspan="2" style="vertical-align: top; padding-top: 8px">
                            <a href="#">
                                <img src="Images/logo.png" alt="LIGA228" title="LIGA228" /></a>
                        </td>
                        <td>
                            <table border="0" cellspacing="0" cellpadding="0" align="right">
                                <tr>
                                    <td>
                                        <table border="0" cellspacing="0" cellpadding="0" align="right" style="width: 545px; height: 50px">
                                            <tr>
                                                <td>
                                                    <input name="txtUserName" type="text" id="txtUserName" onfocus="clearText(this)" onblur="clearText(this)" value="User Name" tabindex="1" maxLength="12" />
                                                </td>
                                                <td>
                                                    <div id="div1">
                                                        <input name="Text1" type="text" id="Text1" value="Password" onfocus="changeBox()" tabindex="2" title="Password" />
                                                    </div>
                                                    <div id="div2" style="display: none">
                                                        <input name="txtPassword" type="password" id="txtPassword" onblur="restoreBox()" tabindex="2" />
                                                    </div>
                                                </td>
                                                <td>
                                                    <input name="txtCode" type="text" id="txtCode" onfocus="clearText(this)" onblur="clearText(this)" tabindex="3" maxlength="4" title="Code" />
                                                </td>
                                                <td>
                                                    <img border="0" align="absmiddle" src="public/img.aspx" width="80px"
                                                        height="30px" alt="" style="border-radius: 5px;" />
                                                </td>
                                                <td>
                                                    <input name="btnSignIn" type="button" id="btnSignIn" tabindex="4" class="btnLogin" style="text-decoration: none; cursor: pointer; border: 0;" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: right; height: 30px; padding-right: 4px"><a href="#" id="btnReg" class="btnReg"></a></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <img src="Images/theme/v1/css/images/contact.png?v=1" usemap="#map1" />
                            <map id="map1" name="map1">
                                <area alt="" shape="rect" coords="584,0,688,50" href="#" onclick="OpenLHNChat();return false;" />
                                <area alt="" shape="rect" coords="0,2,105,48" href="#" id="btnPromo" />
                            </map>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                             <ul id="main-menu"
                                tag-parent-sub-menu="a"
                                data-id="main-menu"
                                data-is-guest="true"
                                class="menu" style="height: 41px">
                                <li style="width: 55px"><a href="#">
                                    <img style="margin-left: -7px;" src="Images/theme/v1/css/images/home.png" /></a></li>
                                <li v-for="(key, index) in Object.keys(menus)" class="">
                                    <menu-item class-name="" :is-guest="isGuest"
                                        :name="menus[key][0].GameType">
                                        {{ getGameMenuDisplayNameByLang(menus[key][0]) }}
                                        <down-arrow type="text" :has-sub-game="menus[key][0].HasSubGame" :game-type="menus[key][0].GameType"
                                            :is-guest="isGuest">
                                        </down-arrow>
                                        <submenu class-name="" :submenu-data="menus[key]" :is-guest="isGuest" :cache-version="cacheVersion">
                                        </submenu>
                                    </menu-item>
                                </li>
                                <li><a href="#" style="background: none" onclick="popupPanduan()">PANDUAN</a></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <table border="0" cellspacing="0" cellpadding="0" style="height: 30px; background: url(Images/theme/v1/css/images/marquee.png) no-repeat">
                                <tr>
                                    <td style="width: 305px; text-align: center">
                                        <span id="timecontainer"></span>
                                        <script type="text/javascript">
                                            new showLocalTime("timecontainer", "server-asp", 0, "short")
                                        </script>
                                    </td>
                                    <td>
                                        <div id="div-marquee" style="width: 650px">
                                            <input id="text-marquee" type="hidden" value="SELAMAT DATANG  DI LIGA228 AGEN JUDI BOLA ONLINE TERBESAR DAN TERPERCAYA DI INDONESIA&#10;PROMO LIGA228 BONUS CASHBACK 5% DAN UNTUK BONUS TURN OVER DI GAME POKER-QQ 0.3%&#10;CUKUP 1 AKUN UNTUK SEMUA PERMAINAN. BOLA, CASINO, TANGKAS, TOGEL, POKER ,BANDARQ, ADU Q, DOMINOQQ, CAPSA SUSUN, SLOT DAN PERANG BACCARAT." />
                                            <script type="text/javascript">
                                                initMarquee()
                                            </script>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
            <div style="margin: 0 auto; width: 955px; height: 650px; background: transparent; position: absolute; top: 207px; left: 0; right: 0">
                <iframe style="background: transparent" src="Images/theme/v1/index.html?v=07052025" allowtransparency="true" width="100%" frameborder="0" scrolling="no" height="640px"></iframe>
                
                <div id="livechat">
                    <a href="#" onclick="OpenLHNChat();return false;">
                        <img src="Images/theme/v1/css/images/livechat.gif"></a>
                </div>
                <div style="top: 180px; position: absolute; right: 0; margin-right: -42px;">
                    <a href="https://bqg0.short.gy/RTPLG228" target="_blank">
                        <img src="Images/theme/v1/css/images/Liga228Rtp.gif"></a>
                </div>
            </div>
        </div>
        <div id="footer">
            
<!-- Start WL_Footer_liga228_com of liga228.com domain -->
<h1 style="text-align: center; font-size: 26px; color: white;">Liga228 agen judi bola, bandar bola, taruhan bola dengan pasaran terlengkap, dan slot online terbesar dan terpercaya di Indonesia.</h1>
        <p style="text-align: center; justify; font-size: 13px; color: white;">Liga228 merupakan situs judi bola online resmi yang sangat terkenal dan paling banyak diminati oleh banyak kalangan pengemar <a href="https://vipliga228.com/"><strong>judi bola</strong></a> online dari masa ke masa sampai sekarang ini. Sebagai agen bandar bola terpercaya, liga228 sebagai agen judi bola juga menyediakan berbagai macam permainan seperti yang sekarang ini sedang ramai dan digemari para bettors adalah <a href="https://vipliga228.com/"><strong>slot online</strong></a> terbesar di tanah air, dan masih banyak permainan yang dapat dimainkan dalam 1 ID, yaitu poker online, togel online, live casino, tembak ikan, sabung ayam dan tangkas online. Liga228 memberikan kemudahan pada para bettors untuk melakukan transaksi deposit dan withdraw yang dapat dilakukan 24 jam online, serta dibantu dengan layanan customer service yang ramah, cekatan dan profesional. Jika anda mencari <a href="https://vipliga228.com/"><strong>agen judi bola</strong></a> online, bandar bola terbaik dan terpercaya, anda dapat memilih Liga228 dengan sistem deposit dan withdraw yang cepat, sehingga anda tidak perlu takut untuk ketinggalan taruhan bola berjalan anda.</p>
        <h2 style="text-align: center; font-size: 23px; color: white;">Bonus Dan Keuntungan Bergabung Bersama Situs Judi Online Terpercaya</h2>
        <p style="text-align: center; justify; font-size: 13px; color: white;">Keuntungan bermain di situs <a href="liga228.com"><strong>judi online</strong></a> online liga228, ada memberikan bonus-bonus besar untuk para bettorsnya yang suka bermain taruhan bola online dengan bonus cashback terbesar sebesar 5% dan bukan hanya cashback yang diberikan akan tetapi juga memberikan bonus referral 1% seumur hidup, dan masih ada lagi yaitu bonus rollingan turn over 0.3% untuk permainan poker online yang akan di bagikan setiap hari senin, dan tentunya jika anda mereferensikan teman dan kerabat anda bermain bersama agen judi bola terpercaya yaitu Liga228.serta komisi 0.8% khusus live casino secara otomatis langsung masuk ke ID anda.  Liga228 merupakan situs judi online resmi dengan pasaran bola terlengkap, mulai dari liga terbaik benua Eropa hingga Asia dengan jadwal yang selalu ada setiap harinya. jadi pastikan segera bergabung bersama Liga228 saat ini juga. Dapatkan keuntungan dan bonus besarnya hanya di Liga228.</p>
        <h3 style="text-align: center; font-size: 20px; color: White;">Liga228 Agen Bandar Bola Diskon Togel Online Terbesar</h3>
        <p style="text-align: center; justify; font-size: 13px; color: white;">Liga228 agen bandar bola terpercaya dan jika anda mencari pasaran bola online dengan pasaran terbaik dan terlengkap untuk melakukan betting atau <a href="https://liga228.com/"><strong>taruhan bola</strong></a>, liga228 adalah pilihan yang paling tepat. Liga228 ialah situs judi bola online resmi juga menyediakan permainan seperti togel online dengan diskon togel terbesar untuk 4D diskon 66%, 3D diskon 59%, 2D diskon 29%. Semua dapat anda lakukan atau mainkan cukup dengan daftarkan 1 ID untuk bermain semua permainan yang disediakan liga228. Dan liga228 sebagai <a href="https://vipliga228.com/"><strong>bandar bola online</strong></a> juga memberikan kemudahan dalam bertransaksi deposit dan withdraw, di support oleh Bank lokal di Indonesia terbaik dan terpercaya, serta deposit pulsa dan e-wallet, minimal deposit hanya 25 ribu.  Kepuasan dan kenyamanan para bettors liga228 merupakan prioritas utama kami.</p>
<!-- End WL_Footer_liga228_com of liga228.com domain -->

<!-- Start WL_Footer_liga228_com of all domains -->

<!-- End WL_Footer_liga228_com of all domains -->
        </div>
        <div style="display: none">
            <!-- This code must be installed within the body tags -->
            <script type="text/javascript">
                var lhnAccountN = "34870-1";
                var lhnButtonN = 8955;
                var lhnChatPosition = 'default';
                var lhnInviteEnabled = 1;
                var lhnWindowN = 41389;
                var lhnInviteN = 42582;
                var lhnDepartmentN = 41234;
            </script>
            <a href="http://www.livehelpnow.net/help-desk-software" target="_blank" style="font-size: 10px;" id="lhnHelp">help desk software</a>
            <script src="//www.livehelpnow.net/lhn/widgets/chatbutton/lhnchatbutton-current.min.js" type="text/javascript" id="lhnscript"></script>
        </div>

        <a style="width: 150px; height: 150px; position: absolute; left: 0; top: 212px;" href="https://bqg0.short.gy/bannerpokerqq" target="_blank">
            <img title="" alt="" width="150px" height="150px" src="Images/HOTGAME(2).gif" /></a>
        <a style="width: 150px; height: 150px; position: absolute; left: 0; top: 380px;" href="https://bqg0.short.gy/DEMOSLOTLG228" target="_blank">
            <img title="" alt="" width="150px" height="150px" src="Images/BENNERLG228.gif?v=20112025" /></a>

    </form>
    <script src="js/vue3.3.7.global.js"></script>
    <script>const mountEl = document.querySelector("#main-menu");</script>
    <script src="js/header.menu.vue.js?v=1762746734915"></script>
    <script>menu.mount("#main-menu");</script>
</body>
</html>
