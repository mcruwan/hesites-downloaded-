
<!DOCTYPE html
                        PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    
<!-- Start Head_Tags_1_bolaku_hobbylo_com of bolaku.hobbylo.com domain -->
<title>Bolaku: Situs Bandar Judi Bola Online Terpercaya</title>
    <meta name="description" content="Bolaku adalah Situs judi bola online terpercaya serta bandar slot, togel online terpercaya dan pasaran bola terlengkap di Indonesia." />
    <meta name="keywords" content="judi online, agen bola, bandar bola, slot online, judi bola" />
    <link rel="canonical" href="https://44bolaku.site/" />
<meta name="google-site-verification" content="9g39xxT0_9BQaL7a_1CzyvrIUv1xQFyayGGAtlLEp9o" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Bolaku: Situs Bandar Judi Bola Online Terpercaya" />
    <meta property="og:description" content="Bolaku adalah Situs judi bola online terpercaya serta bandar slot, togel online terpercaya dan pasaran bola terlengkap di Indonesia." />
    <meta property="og:url" content="https://44bolaku.site/" />
    <meta property="og:site_name" content="Bolaku" />
    <meta content="1 days" name="revisit-after" />
    <meta content="general" name="rating" />
    <meta name="language" content="ID" />
    <meta name="geo.region" content="ID" />
    <meta name="geo.placename" content="Indonesia" />
    <meta name="robots" content="index, follow, NOODP" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
    <meta name="viewport" content="width=1024" />

    <script type="application/ld+json">
            {
            "@context": "http://schema.org",
            "@type": "WebSite",
            "url": "https://44bolaku.site/",
            "name": "Bolaku: Situs Bandar Judi Bola Online Terpercaya",
            "description": "Bolaku adalah Situs judi bola online terpercaya serta bandar slot, togel online terpercaya dan pasaran bola terlengkap di Indonesia."
            }
    </script>
<!-- End Head_Tags_1_bolaku_hobbylo_com of bolaku.hobbylo.com domain -->

<!-- Start Head_Tags_1_bolaku_hobbylo_com of all domains -->

<!-- End Head_Tags_1_bolaku_hobbylo_com of all domains -->


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

            var servertimestring = (servermode == "server-php") ? '<? print date("F d, Y H:i:s", time())?>' : (servermode == "server-ssi") ? '<!--#config timefmt="%B %d, %Y %H:%M:%S"--><!--#echo var="DATE_LOCAL" -->' : '01/29/2026 08:40:17';
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
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="VkHo4BNd55LUugyML/B4HFLHluOQ3nmZF6rg6vl6e8iWWAM41oUcumVbyXVBlqQUQbJKfJ/8tzLYjmOPj0rVvrc8D+Ph4lNckHU1uhkQ0YXI1+s6KNYiN8dW8nGG6Lvkot2z7QYe25jgjg+h3RcH1zBEhBCTuL+/87bhS6AzciCFcrQd0E6I/31qkAVcbW5xOrxbIeP8MWEutrumBQP0XgtIHtoh6hASdwDg0+slp92bXRMZJLievqz2fGe8Rm771gGEO6KDLGlCpLaX+/Y02Q==" />
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
        
<!-- Start WL_Footer_bolaku_hobbylo_com of bolaku.hobbylo.com domain -->
<div style="width: 978px; margin: 0 auto; text-align: center; color: #5363b8; border: solid 1px white; margin-bottom: 18px;"><h1 style="text-align: center;"><span style="font-size: 18pt; color: #5363b8;">Bolaku Situs Judi Agen Bola Online Terpercaya</span></h1><p> <strong><a href="https://44bolaku.site/">Bolaku</a></strong> merupakan situs judi bola terpercaya di indonesia yang memberikan layanan pasaran bola terlengkap dengan nilai value paling terjamin resmi asia. Situs bolaku bukan hanya sedekar memberikan pasaran bola online, namun juga menyajikan berbagai macam jenis permainan seperti judi slot online, Togel, Tembak Ikan, Poker QQ dan masih banyak lagi yang disertai keuntungan besar. Dengan pilihan yang begitu banyak, para bettor dapat mudah memilih permainan hoki sendiri yang peluang kemenangan berbeda-beda. Bolaku berinovasi menyediakan macam-macam permainan dalam 1 situs judi online agar bettor bisa memainkan games secara instan dengan minimal pasangan yang bervarian.</p><p>Situs yang mempunyai waktu jeda dalam update seluruh fitur setiap minggu dimana membuat website Bolaku bisa dimainkan secara terbaru pengakses atau tampilan mobile friendly. Tentu yang dimaksud tidak lain bettor bisa memainkan semua judi online melalui platform apapun dari Smartphone atau PC yang terhubung dengan internet. Hanya cukup mendaftarkan 1 akun di <strong>agen bola</strong> terpercaya ini, kalian sudah bisa memainkan games yang disukai tanpa bertele-tele atau mengonta-ganti akun setiap masing-masing judi online.</p><h2 style="text-align: center;"><span style="font-size: 16pt; color: #5363b8;">Situs Bandar Bola Online Transaksi Bank Lokal Asia</span></h2><p>Bolaku menjadi salah satu provider bandar agen taruhan judi bola online24jam terpercaya 2021 karena mempunyai prinsip besar dalam sistem pelayanan yang profesional dan cekatan membantu seluruh member dalam masalah apapun baik akses ke website atau lainnya oleh customer service. Adanya teknologi canggih bettor sudah bisa berkomunikasi lewat live support yang telah disediakan website bolaku.</p><p>Dengan transaksi bank lokal Asia tepatnya Indonesia secara tidak langsung mempermudah bettor dapat melakukan transaksi tanpa harus berpergian jauh ke mesin transkasi. Dimana metode deposit bandar bola terpercaya mulai lewat dari aplikasi ataupun dana lainnya, Bolaku menyertai pembayaran E-money dan bank lokal Indonesia seperti BCA, BRI, BNI, MANDIRI, CIMB NIAGA, DANAMON, MANDIRI dan adapun DANA, OVO, GOPAY atau LINKAJA. Sistem deposit yang diberikan website BOLAKU dapat membuat kenyamanan bagi seluruh member judi bola dan hanya memerlukan waktu selama 1-2 menit saja.</p><h3 style="text-align: center;"><span style="font-size: 14pt; color: #5363b8;">Agen Judi Bola Bonus Cashback & Referral Terbesar</span></h3><p>Situs judi bola terbesar dengan kumpulan provider paling resmi tentu memberikan segenap apresiasi besar terhadap seluruh member. BOLAKU memberikan banyak bonus khusus judi bola setiap 1 minggu sekali dengan masing-masing ketentuan bonus mulai dari Bonus Cashback Kekalahan 5% & Referral Seumur Hidup 1%. Tentu bandar judi bola resmi asia selalu mengutamakan hal ini karena situs web BOLAKU tahu betul jika bonus ini dapat membantu memutar kembali hasil peruntungan bermain taruhan <strong><a href="https://id.wikipedia.org/wiki/Situs_web">situs web</a></strong> online lagi.</p><p>Namun BOLAKU terus mengupdate segala event yang akan diadakan setiap waktu nya agar dapat memastikan kenyamanan penggemar bola agar nyaman bermain semua <strong><a href="https://44bolaku.site/">judi online</a></strong> seperti Win Streak, Free Spin Slot, dan masih banyak lainnya. Agen bandar bola juga telah mempersiapkan segala jenis pengaksesan dengan memberikan alternatif link paling aman dan lengkap upaya tidak menghambat bettor mendapatkan sejumlah keuntungan uang asli. Jadi apa yang harus ditunggu lagi dan gabung sekarang juga.</p></div>
<!-- End WL_Footer_bolaku_hobbylo_com of bolaku.hobbylo.com domain -->

<!-- Start WL_Footer_bolaku_hobbylo_com of all domains -->

<!-- End WL_Footer_bolaku_hobbylo_com of all domains -->
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
