
<!DOCTYPE html
                        PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    
<!-- Start Head_Tags_1_bolaku_it_com of bolaku.it.com domain -->
<title>BOLAKU | Situs Taruhan Bola Online & Slot Resmi Indonesia</title>

<meta name="description" content="BOLAKU adalah situs taruhan bola online dan slot resmi Indonesia dengan sistem aman, odds kompetitif, dan layanan aktif 24 jam nonstop." />

<meta name="keywords" content="bolaku, situs bolaku, taruhan bola online, judi bola indonesia, slot online resmi, agen bola profesional, pasang bola terpercaya" />

<meta name="robots" content="index, follow" />
<meta name="revisit-after" content="1 days" />
<meta name="rating" content="general" />
<meta name="geo.country" content="ID" />
<meta name="geo.placename" content="Indonesia" />
<meta name="Slurp" content="all" />

<link rel="canonical" href="https://bolaku.it.com/" />
<!-- End Head_Tags_1_bolaku_it_com of bolaku.it.com domain -->

<!-- Start Head_Tags_1_bolaku_it_com of all domains -->

<!-- End Head_Tags_1_bolaku_it_com of all domains -->


            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-126009905-1"></script>
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag() { dataLayer.push(arguments); }
                gtag('js', new Date());
                gtag('config', 'UA-126009905-1');
            </script> 


    <link rel="icon" type="image/png" href="Images/theme/v1/img/favicon.png" sizes="32x32" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Exo:Semi-Bold:italic" />
    <link rel="stylesheet" href="Images/theme/v1/css/font-awesome.min.css" />
    <link rel="stylesheet" href="Images/theme/v1/css/common.css?v=5" />
    <script type="text/javascript" src="Images/theme/v1/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="Images/theme/v1/js/jquery.easing.1.3.js"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle2/2.1.6/jquery.cycle2.js"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle2/2.1.6/jquery.cycle2.center.js"></script>
    <script type="text/javascript" src="Images/theme/v1/js/common.js"></script>

    <link rel="stylesheet" href="css/common.css" />

    <script type="text/javascript" src="js/common.js?v=20241218"></script>
    <script type="text/javascript" src="js/header.js?v=20250106"></script>
    <script type="text/javascript" src="js/login.js?v=20250303"></script>
    <style>
        .togel-item {
            margin-left: 21px;
            float: left;
        }

        .row-1 {
            margin-top: 30px;
        }

        .togel-number {
            display: flex;
            text-align: center;
        }

        img.ball {
            margin: 4px 4px;
        }

        .togel-country {
            font-size: 21px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            color: #fff;
            font-weight: bold;
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        function drawTogel(records) {
            //records = [{ RNo: 1, HasilTogelId: 841, Togel: "Singapore", Date: "26/11/2015", Number: "2222" }]
            //records = []
            var strTogel = ''
            records.forEach((record, index) => {
                var pathBall = 'Images/theme/v1/img/number';
                var pathCountry = 'Images/theme/v1/img/pool/'
                strTogel += `<div class="togel-item row-${index > 4 ? 2 : 1}">
                                        <div class="togel-country">
                                            ${(record ? record.Togel.toUpperCase() : 'NODATA')}
                                        </div>
                                        <div class="togel-number">
                                                <img class="ball" src="${pathBall}/${(record ? record.Number[0] : 'NODATA')}.png"/>
                                                <img class="ball" src="${pathBall}/${(record ? record.Number[1] : 'NODATA')}.png"/>
                                                <img class="ball" src="${pathBall}/${(record ? record.Number[2] : 'NODATA')}.png"/>
                                                <img class="ball" src="${pathBall}/${(record ? record.Number[3] : 'NODATA')}.png"/>
                                        </div>
                                    </div>`
            })
            if (records.length === 0) strTogel = '<br /><br /><br /><h1 style="margin:0 auto; width:200px; color:#fff">NO DATA</h1>';

            $('#divTogel').html(strTogel)
        }
        $().ready(function () {
            $('#btnReg').click(function () {
                popupRegister('');
            });
            fetchTogel(function (records) {
                drawTogel(records)
            })
            $('#btnPromo').click(function () {
                var url = 'https://rebrand.ly/PromoBolaku'
                popUpPromo(url, 900, 900);
            });
        })
    </script>
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

            var servertimestring = (servermode == "server-php") ? '<? print date("F d, Y H:i:s", time())?>' : (servermode == "server-ssi") ? '<!--#config timefmt="%B %d, %Y %H:%M:%S"--><!--#echo var="DATE_LOCAL" -->' : '01/29/2026 08:40:50';
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
    <style type="text/css">
        #sectionWrapper #sectionMenu ul li {
               padding: 0 10px;
        }
    </style>

    
    <link rel="stylesheet" href="css/header.submenu.css?v=1762746734915" />
    <style type="text/css">
        .sub-menu .gameNav li:hover {
            text-decoration: underline
        }

        .main_width {
            width: 981px;
            background-color: #5363B8;
            padding-bottom: 40px
        }

        .arrow-down {
            margin-top: 41px;
        }

        .sub-menu {
            top: 60px;
            left: -21px;
            padding-top: 7px;
            padding-bottom: 23px
        }

        .arrow-down-submenu {
            font-size: 13px;
            color: #fff
        }

        .sub-menu .gameNav li {
            margin: 10px -21px 0 0 !important;
        }

        .sub-menu a {
            font-size: .770rem !important;
        }

        .sub-menu .gameNav li {
            width: 139px !important;
        }
    </style>
    
</head>

<body>
    <div id="sectionWrapper">
        <!--Header-->
        <div id="sectionHeader">
            <div class="container">
                <div id="sectionLogo">
                    <h1><a href="">
                        <img src="Images/logo.png" alt="Bolaku" title="Bolaku" /></a>
                    </h1>
                </div>
                <div class="login">
                    <form name="form1" method="post" action="Defaults/Default73.aspx" id="form1">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="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" />
</div>

<SCRIPT LANGUAGE='JavaScript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = 'Default.aspx?lang=';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; top: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="FE916879" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="Nu5oyFyDNhEEDDcWVgeA249sbf0qTCxK08+9vArKuYsMWV0o3RcNVhIU1llakq1uKyqVunR2UjCrzXjN7oMXkwtmpGB3SYeOO8gpDR6ulyNo7sxSXoiB4NVdurB2zSt6xGOgAL2j54JZ39njcefoFVD2zo5yFlLEQF48MNj405LeW6U3Smo3/87nTVHGaUAVODrvp/QqUnI2Ij23uuRAnsm0j/50Q8oPPwGqYPdTPTjKuGm/r4YTrfpzUladnY4Gw6BE9q0NNUnGz2/P5w6lDw==" />
</div>
                        <input name="txtUserName" type="text" id="txtUserName" class="username" onfocus="clearText(this)" onblur="clearText(this)" value="User Name" maxLength="12" />
                        <div id="div1">
                            <input name="Text1" type="text" id="Text1" onfocus="changeBox()" style="margin-top: 35px; margin-left: 145px" title="Password" value="Password" />
                        </div>
                        <div id="div2" style="display: none">
                            <input name="txtPassword" type="password" id="txtPassword" class="password" onblur="restoreBox()" />
                        </div>
                        <input name="txtCode" type="text" id="txtCode" class="code" onfocus="clearText(this)" onblur="clearText(this)" title="Code" />
                        <img border="0" align="absmiddle" src="Public/img.aspx" width="79px"
                            height="31px" style="margin-left: 284px; margin-top: 34px" alt="" />
                        <input name="btnSignIn" type="button" id="btnSignIn" tabindex="4" class="btnSignIn" style="text-decoration: none; margin-right: 0px; cursor: pointer; border: 0" />
                        <input id="btnReg" type="button" />
                        <a href="#" id="btnPromo">
                            <img src="Images/theme/v1/img/promo.png"
                                class="promo" alt="" /></a>
                    </form>
                </div>
            </div>
        </div>

        <div class="container">
            <div id="sectionMenu">
                <style>
                    #main-menu li a {
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        text-align: center;
                        font-family: bambino;
                        font-size: 16px;
                        color: #fff;
                    }

                    .menu-content {
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        text-align: center;
                    }

                </style>
                <ul id="main-menu"
                    tag-parent-sub-menu="a"
                    data-id="main-menu"
                    data-is-guest="true"
                    class="">
                    <li><a href="#">
                        <img src="Images/theme/v1/img/menu0.png" alt="" />HOME</a></li>
                    <li v-for="(key, index) in Object.keys(menus)" class="">
                        <menu-item  class-name="" :is-guest="isGuest"
                            :name="menus[key][0].GameType">
                                <image-item style="height: 28px;" class-name="hover" :image-data="menus[key][0]"
                                    :cache-version="cacheVersion"></image-item>
                               {{ getGameMenuDisplayNameByLang(menus[key][0]) }}
                                <down-arrow type="text" :has-sub-game="menus[key][0].HasSubGame" :game-type="menus[key][0].GameType"
                                    :is-guest="isGuest">
                                </down-arrow>
                                <submenu class-name="" :submenu-data="menus[key]" :is-guest="isGuest" :cache-version="cacheVersion">
                                </submenu>
                        </menu-item>
                    </li>
                    <li><a href="https://rebrand.ly/LinkDEMOSLOTBLK" target="_blank">
                        <img src="Images/theme/v1/img/demo-slot.gif"
                            alt="" style="width: 29px; height: 28px" />DEMO SLOT</a></li>
                </ul>
            </div>
        </div>
        <div class="container clearfix" style="margin-top: 5px;">
            <div class="contact">
                <a onclick="OpenLHNChat()" href="#">
                    <img src="Images/theme/v1/img/livechat.gif"
                        alt="" style="margin: 5px 0 13px 0" /></a>
                <a href="#">
                    <img src="Images/theme/v1/img/line.png" alt="" /></a>
                <a href="skype:live:cs.bolaku?chat">
                    <img src="Images/theme/v1/img/skype.png"
                        alt="" /></a>
                <a href="https://rebrand.ly/WABolaku" target="_blank">
                    <img src="Images/theme/v1/img/whatapp.png?v=12052025" alt="" /></a>
            </div>
            <div id="slider" style="position: relative;">
                <iframe id="slider-frame" scrolling="no"
                    src="https://lalajo.org/bolaku/slider/index.html" frameborder="0"
                    seamless="seamless" style="width: 100%; height: 100%;"></iframe>
            </div>
        </div>
        <div class="container" style="margin: 5px 0">
            <div id="sectionInfo">
                <div id="jam" class="datetime">
                    <script type="text/javascript">
                        new showLocalTime("jam", "server-asp", 0, "short")
                    </script>
                </div>
                <div class="info">
                    <div id="div-marquee">
                        <input id="text-marquee" type="hidden" value="Link Anti NAWALA : www.altbolaku.cc  | Bandar Bola Terbaik Dan Terpercaya Di Indonesia Menyediakan Permainan SportBook - Casino - SLOT - Numbergame -  Togel -&nbsp;Poker&nbsp;&amp;&nbsp;Tangkas" />
                        <script type="text/javascript">
                            initMarquee('#000', 'Arial')
                        </script>
                    </div>
                </div>
            </div>
        </div>
        <div id="divTogel"
            style="width: 1024px; height: 169px; background: url(Images/theme/v1/img/togel-background.png?v=2) no-repeat; margin: 10px 0;">
            <div></div>
        </div>
        <div class="container" style="width: 982px; height: 170px">
            <img src="Images/theme/v1/img/img1.jpg?v=3" style="float: left" alt="" />
            <div style="float: left; width: 322px; margin: 0 4px;">
                <a href="https://bdq228.com/" target="_blank">
                    <img
                        src="Images/theme/v1/img/bandarq228-banner.png" /></a>
                <a href="https://altgarenaqq.com/" target="_blank">
                    <img
                        src="Images/theme/v1/img/garenaqq-banner.png" /></a>
            </div>
            <img src="Images/theme/v1/img/img3.jpg?v=2" style="float: left; margin-left: 8px; margin-top: -1px"
                alt="" />
        </div>
        <div class="container" style="text-align: center">
            <img src="Images/theme/v1/img/footer.png?v=4" alt="" />
        </div>
        
<!-- Start WL_Footer_bolaku_it_com of bolaku.it.com domain -->
<div style="width: 978px; margin: 0 auto; text-align: center; color: #5363b8; border: solid 1px white; margin-bottom: 18px;"><h1 style="text-align: center;"><span style="font-size: 18pt; color: #5363b8;">Bolaku Situs Judi Agen Bola Online Terpercaya</span></h1><p> <strong><a href="https://44bolaku.site/">Bolaku</a></strong> merupakan situs judi bola terpercaya di indonesia yang memberikan layanan pasaran bola terlengkap dengan nilai value paling terjamin resmi asia. Situs bolaku bukan hanya sedekar memberikan pasaran bola online, namun juga menyajikan berbagai macam jenis permainan seperti judi slot online, Togel, Tembak Ikan, Poker QQ dan masih banyak lagi yang disertai keuntungan besar. Dengan pilihan yang begitu banyak, para bettor dapat mudah memilih permainan hoki sendiri yang peluang kemenangan berbeda-beda. Bolaku berinovasi menyediakan macam-macam permainan dalam 1 situs judi online agar bettor bisa memainkan games secara instan dengan minimal pasangan yang bervarian.</p><p>Situs yang mempunyai waktu jeda dalam update seluruh fitur setiap minggu dimana membuat website Bolaku bisa dimainkan secara terbaru pengakses atau tampilan mobile friendly. Tentu yang dimaksud tidak lain bettor bisa memainkan semua judi online melalui platform apapun dari Smartphone atau PC yang terhubung dengan internet. Hanya cukup mendaftarkan 1 akun di <strong>agen bola</strong> terpercaya ini, kalian sudah bisa memainkan games yang disukai tanpa bertele-tele atau mengonta-ganti akun setiap masing-masing judi online.</p><h2 style="text-align: center;"><span style="font-size: 16pt; color: #5363b8;">Situs Bandar Bola Online Transaksi Bank Lokal Asia</span></h2><p>Bolaku menjadi salah satu provider bandar agen taruhan judi bola online24jam terpercaya 2021 karena mempunyai prinsip besar dalam sistem pelayanan yang profesional dan cekatan membantu seluruh member dalam masalah apapun baik akses ke website atau lainnya oleh customer service. Adanya teknologi canggih bettor sudah bisa berkomunikasi lewat live support yang telah disediakan website bolaku.</p><p>Dengan transaksi bank lokal Asia tepatnya Indonesia secara tidak langsung mempermudah bettor dapat melakukan transaksi tanpa harus berpergian jauh ke mesin transkasi. Dimana metode deposit bandar bola terpercaya mulai lewat dari aplikasi ataupun dana lainnya, Bolaku menyertai pembayaran E-money dan bank lokal Indonesia seperti BCA, BRI, BNI, MANDIRI, CIMB NIAGA, DANAMON, MANDIRI dan adapun DANA, OVO, GOPAY atau LINKAJA. Sistem deposit yang diberikan website BOLAKU dapat membuat kenyamanan bagi seluruh member judi bola dan hanya memerlukan waktu selama 1-2 menit saja.</p><h3 style="text-align: center;"><span style="font-size: 14pt; color: #5363b8;">Agen Judi Bola Bonus Cashback & Referral Terbesar</span></h3><p>Situs judi bola terbesar dengan kumpulan provider paling resmi tentu memberikan segenap apresiasi besar terhadap seluruh member. BOLAKU memberikan banyak bonus khusus judi bola setiap 1 minggu sekali dengan masing-masing ketentuan bonus mulai dari Bonus Cashback Kekalahan 5% & Referral Seumur Hidup 1%. Tentu bandar judi bola resmi asia selalu mengutamakan hal ini karena situs web BOLAKU tahu betul jika bonus ini dapat membantu memutar kembali hasil peruntungan bermain taruhan <strong><a href="https://id.wikipedia.org/wiki/Situs_web">situs web</a></strong> online lagi.</p><p>Namun BOLAKU terus mengupdate segala event yang akan diadakan setiap waktu nya agar dapat memastikan kenyamanan penggemar bola agar nyaman bermain semua <strong><a href="https://44bolaku.site/">judi online</a></strong> seperti Win Streak, Free Spin Slot, dan masih banyak lainnya. Agen bandar bola juga telah mempersiapkan segala jenis pengaksesan dengan memberikan alternatif link paling aman dan lengkap upaya tidak menghambat bettor mendapatkan sejumlah keuntungan uang asli. Jadi apa yang harus ditunggu lagi dan gabung sekarang juga.</p></div>
<!-- End WL_Footer_bolaku_it_com of bolaku.it.com domain -->

<!-- Start WL_Footer_bolaku_it_com of all domains -->

<!-- End WL_Footer_bolaku_it_com of all domains -->
    </div>

   

    <a style="width: 150px; height: 150px; position: fixed; right: 0; bottom: 0;"
        href="https://rebrand.ly/GRUPWABLK" target="_blank">
        <img title="" alt="" width="150px"
            height="150px" src="Images/bolaku-wa.gif"
            style="width: 150px; height: 150px" /></a>

    <div style="position: fixed; right: 0px; bottom: 0; display: none">
        <!-- This code must be installed within the body tags -->
        <script type="text/javascript">
            var lhnAccountN = "34870-1";
            var lhnButtonN = 8982;
            var lhnChatPosition = 'default';
            var lhnInviteEnabled = 0;
            var lhnWindowN = 41392;
            var lhnDepartmentN = 41237;
        </script>
        <a href="http://www.livehelpnow.net/help-desk-software" target="_blank"
            style="font-size: 10px;" id="lhnHelp">help desk software</a>
        <script src="//www.livehelpnow.net/lhn/widgets/chatbutton/lhnchatbutton-current.min.js"
            type="text/javascript" id="lhnscript"></script>
    </div>

    <script src="js/vue3.3.7.global.js"></script>
    <script>const mountEl = document.querySelector("#main-menu");</script>
    <script src="js/header.menu.vue.js?v=1762746734915"></script>
    <script>menu.mount("#main-menu");</script>
</body>
</html>
