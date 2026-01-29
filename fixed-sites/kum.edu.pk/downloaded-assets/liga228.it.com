
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
<!-- Start Head_Tags_1_liga228_it_com of liga228.it.com domain -->
<meta name="google-site-verification" content="kvCYSpP9T6JT1DV4iE-kAY5rEY0KrZBuvVWkgsQsTFM" />
    <meta name="google-site-verification" content="lsFirLOj1awnq63i0k-Mhh8xhCrF-_HpuBfGqtzxFgg" />
    <meta name="google-site-verification" content="08TNt7_CEcnAlv_Ar45s85s71UEauYzqYPCk3fhxP7w" />
    <meta name="google-site-verification" content="T-_c3StHBFhKkWnDr8g-dDampzpZk9Fksnq6e6TcP4Q" />
    <link rel="canonical" href="https://liga228.it.com/" />
    <title>Liga228 Gaming Bola And Mix Parlay Online Terpercaya</title>
    <meta name="description" content="Liga228 merupakan platform gaming bola dan mix parlay online terpercaya yang menawarkan beragam pilihan taruhan olahraga dengan sistem yang aman dan mudah diakses. Dengan pasaran pertandingan yang lengkap, fitur mix parlay yang fleksibel, serta dukungan teknologi server yang stabil, Liga228 memberikan pengalaman bermain yang nyaman bagi pemain pemula hingga berpengalaman. Didukung layanan profesional dan sistem permainan yang transparan, Liga228 menjadi pilihan tepat bagi pecinta taruhan bola online." />
    <meta name="keywords" content="Liga228, Situs Liga228, Agen Liga228, MixParlay Liga228, Liga 228, Parlay Liga228, casino Liga228, togel Liga228, poker Liga228, tangkas online, slot online" />
 
<link rel="amphtml" href="https://inibarugacor.com/liga228/" />
    <meta name="language" content="ID" />
    <meta name="geo.region" content="ID" />
    <meta name="geo.placename" content="Indonesia" />
    <meta name="categories" content="Liga228" />
    <meta name="robots" content="INDEX, FOLLOW" />
    <meta name="viewport" content="width=1100" />
<meta name="google-site-verification" content="scKAYZ1cyqn6Nsl-7nXzABAaoD5S8Z3NU8RUBAkfTRw" />
<!-- End Head_Tags_1_liga228_it_com of liga228.it.com domain -->

<!-- Start Head_Tags_1_liga228_it_com of all domains -->

<!-- End Head_Tags_1_liga228_it_com of all domains -->


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

            var servertimestring = (servermode == "server-php") ? '<? print date("F d, Y H:i:s", time())?>' : (servermode == "server-ssi") ? '<!--#config timefmt="%B %d, %Y %H:%M:%S"--><!--#echo var="DATE_LOCAL" -->' : '01/29/2026 08:41:37';
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

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//liga228.it.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; top: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="49D3013D" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="E5zorePSnP2C8kprq1u5DWUBAd3cr216j99+mKMtoJDomsjOqryrFUnBrNA1uxcHYLmdYpRRQdOncn3iJ/t/QGgrJyfO6gR2mDM8kXnkezqHhtvfEMDpZJ/5xcQTLbQvUk/+TNCSIHI9tp4FJqj/LPGc0JWLYx7wYgoAV1PesbztU17z0woi5yJvnUCGIS3elX0gNprceYOCRa+3XMpc5YW3Fpcjp6hJ1RihAKwAra+DaSlnd+EMtEKDsCNSu2xK6HlQFhAumEp2eNzmRTsYYQ==" />
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
            
<!-- Start WL_Footer_liga228_it_com of liga228.it.com domain -->
<h1 style="text-align: center; font-size: 26px; color: white;">Liga228 Agen Judi Bola Bandar Bola Slot Online Terbaik di Indonesia</h1>
        <p style="text-align: center; justify; font-size: 13px; color: white;">Liga228 merupakan situs judi bola online resmi yang sangat terkenal dan paling banyak diminati oleh banyak kalangan pengemar <a href="https://webliga228.com/"><strong>judi bola</strong></a> online dari masa ke masa sampai sekarang ini. Sebagai agen bandar bola terpercaya, liga228 sebagai agen judi bola juga menyediakan berbagai macam permainan seperti yang sekarang ini sedang ramai dan digemari para bettors adalah <a href="https://webliga228.com/"><strong>slot online</strong></a> terbesar di tanah air, dan masih banyak permainan yang dapat dimainkan dalam 1 ID, yaitu poker online, togel online, live casino, tembak ikan, sabung ayam dan tangkas online. Liga228 memberikan kemudahan pada para bettors untuk melakukan transaksi deposit dan withdraw yang dapat dilakukan 24 jam online, serta dibantu dengan layanan customer service yang ramah, cekatan dan profesional. Jika anda mencari <a href="https://webliga228.com/"><strong>agen judi bola</strong></a> online, bandar bola terbaik dan terpercaya, anda dapat memilih Liga228 dengan sistem deposit dan withdraw yang cepat, sehingga anda tidak perlu takut untuk ketinggalan taruhan bola berjalan anda.</p>
        <h2 style="text-align: center; font-size: 23px; color: white;">Bonus Dan Keuntungan Bergabung Bersama Situs Judi Online Terpercaya</h2>
        <p style="text-align: center; justify; font-size: 13px; color: white;">Keuntungan bermain di situs <a href="https://webliga228.com/"><strong>judi online</strong></a> online liga228, ada memberikan bonus-bonus besar untuk para bettorsnya yang suka bermain taruhan bola online dengan bonus cashback terbesar sebesar 5% dan bukan hanya cashback yang diberikan akan tetapi juga memberikan bonus referral 1% seumur hidup, dan masih ada lagi yaitu bonus rollingan turn over 0.3% untuk permainan poker online yang akan di bagikan setiap hari senin, dan tentunya jika anda mereferensikan teman dan kerabat anda bermain bersama agen judi bola terpercaya yaitu Liga228.serta komisi 0.8% khusus live casino secara otomatis langsung masuk ke ID anda.  Liga228 merupakan situs judi online resmi dengan pasaran bola terlengkap, mulai dari liga terbaik benua Eropa hingga Asia dengan jadwal yang selalu ada setiap harinya. jadi pastikan segera bergabung bersama Liga228 saat ini juga. Dapatkan keuntungan dan bonus besarnya hanya di Liga228.</p>
        <h3 style="text-align: center; font-size: 20px; color: White;">Liga228 Agen Bandar Bola Diskon Togel Online Terbesar</h3>
        <p style="text-align: center; justify; font-size: 13px; color: white;">Liga228 agen bandar bola terpercaya dan jika anda mencari pasaran bola online dengan pasaran terbaik dan terlengkap untuk melakukan betting atau <a href="https://webliga228.com/"><strong>taruhan bola</strong></a>, liga228 adalah pilihan yang paling tepat. Liga228 ialah situs judi bola online resmi juga menyediakan permainan seperti togel online dengan diskon togel terbesar untuk 4D diskon 66%, 3D diskon 59%, 2D diskon 29%. Semua dapat anda lakukan atau mainkan cukup dengan daftarkan 1 ID untuk bermain semua permainan yang disediakan liga228. Dan liga228 sebagai <a href="https://webliga228.com/"><strong>bandar bola online</strong></a> juga memberikan kemudahan dalam bertransaksi deposit dan withdraw, di support oleh Bank lokal di Indonesia terbaik dan terpercaya, serta deposit pulsa dan e-wallet, minimal deposit hanya 25 ribu.  Kepuasan dan kenyamanan para bettors liga228 merupakan prioritas utama kami.</p>
<!-- End WL_Footer_liga228_it_com of liga228.it.com domain -->

<!-- Start WL_Footer_liga228_it_com of all domains -->

<!-- End WL_Footer_liga228_it_com of all domains -->
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
