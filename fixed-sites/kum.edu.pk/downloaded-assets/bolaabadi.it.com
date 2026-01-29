

<!DOCTYPE html>
<html>
<head>
    
<!-- Start Head_Tags_1_bolaabadi_it_com of bolaabadi.it.com domain -->
<!-- Primary SEO Meta Tags -->
<title>BOLAABADI | Pusat Informasi & Akses Taruhan Bola Online Terpercaya</title>
 
<meta name="description" content="BOLAABADI merupakan pusat informasi dan akses taruhan bola online yang menghadirkan pembahasan lengkap, sistem stabil, serta pengalaman digital yang dioptimalkan untuk pengguna Indonesia." />
 
<meta name="keywords" content="bolaabadi, bola abadi, situs bolaabadi, informasi bolaabadi, taruhan bola online, akses bola online, platform bola digital, bolaabadi indonesia" />
 
<meta name="robots" content="index, follow" />
<meta name="revisit-after" content="1 days" />
<meta name="rating" content="general" />
<meta name="geo.country" content="ID" />
<meta name="geo.placename" content="Indonesia" />
<meta name="Slurp" content="all" />
<meta name="language" content="id" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="google-site-verification" content="p8pB3K6Z15U2IfTJ7Eqqv6NjmQxcDUDycAyBJ8lPTXc" />
 
<!-- Canonical -->
<link rel="canonical" href="https://bolaabadi.it.com/" />
<link rel="icon" type="image/x-icon" href="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1745052202/FAVICON_BOLA_ABADI_leyg86.png" />
 
<!-- Open Graph / Facebook -->
<meta property="og:type" content="website" />
<meta property="og:title" content="BOLAABADI | Pusat Informasi & Akses Taruhan Bola Online Terpercaya" />
<meta property="og:description" content="BOLAABADI adalah platform informasi dan akses taruhan bola online dengan sistem stabil, tampilan ringan, serta pengalaman pengguna yang dioptimalkan untuk pasar Indonesia." />
<meta property="og:url" content="https://bolaabadi.it.com/" />
<meta property="og:image" content="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1745052202/FAVICON_BOLA_ABADI_leyg86.png" />
 
<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="BOLAABADI | Pusat Informasi & Akses Taruhan Bola Online Terpercaya" />
<meta name="twitter:description" content="Temukan informasi dan akses taruhan bola online melalui BOLAABADI dengan sistem responsif, stabil, dan dirancang untuk kenyamanan pengguna Indonesia." />
<meta name="twitter:image" content="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1745052202/FAVICON_BOLA_ABADI_leyg86.png" />
 
<!-- JSON-LD Schema -->
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "BOLAABADI",
  "url": "https://bolaabadi.it.com/",
  "potentialAction": {
    "@type": "SearchAction",
    "target": "https://bolaabadi.it.com/?s={search_term_string}",
    "query-input": "required name=search_term_string"
  }
}
</script>
<!-- End Head_Tags_1_bolaabadi_it_com of bolaabadi.it.com domain -->

<!-- Start Head_Tags_1_bolaabadi_it_com of all domains -->

<!-- End Head_Tags_1_bolaabadi_it_com of all domains -->



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
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="meU1NW0E6QQX4dzgxGHj5cZahnb3YUro2mFtV01WwOYS/8je0pcRIK8MG0J/3XiQsethLiZgFrVO/vVXOL785X+X0TqxcNmEsu7ObQhWKjCF08tZrFQX/9PaT5043AAypXecmKFiHJ/GqnJ/YvHuJY4ocRc5aXOl+76aDC4bslSpqnNEqkRS56MrIdInYJA9rx7iVILu8qIV1PyU8mYnWhwJcnrvFmzTXseVNguYjt31nrcLoxYVNQVvtQe3nPMLNLZo5T3Cujp/3cHHIIsQpQdtEAb5lqtJJP8hH0HTj/ezuJV22jPgg8PvlqQ9N10ln4EsbB+j1NAkPFMO/9la2VcP2VnXYe+3RPV3afagMtkBJRMzQRnPrJQ/HubLNCdlHOmFujJBQQ6LXY4pc7p0ojejH80CdAS9NkmlAgj1b4K5oVdet8q82bxPk22A8n9lSLR4mYlm+3O/l5UIRnjhXAumipHJovuwGLDo8aZFPWF8RaqtjGkfTrepsJr4Pst3bVg7DAIIZ9434Yp9KLX42eLccifl+E99fI+tgisRVuy6ymbIYm8tYIFAxB7EONEv/wg3cviE3WM1iqzFBe1s53uPufsHxfOD+CuNo6Wv4xuk87WUhzCb5IWWwrcXhr372uOVTjSmgwSLk0vrM2goTRi0BZjsMBz8++KodObGexHWursuMkrPCheIysKiGwtYfJkGWhr9rTbFtjzqblJY011HUuPcSqyPfYRqiIf5wmnSl5/SGI3qBqXotyZUiM3EP4k1zVhJMnFvJfnk1fqe4grEPV04Jmq9uIUs3hFc5sIlklKdgY9hSZncEuLg1BsEiO6FrsSznZqMQzpXAdrU9vcIiOKhJl2+SQLJZczXOISzXyJtRBqZ3lKWi0TVjWpS9HU0uSyDvTPzAzAqaVAc/p9WD1BU+r2nGVqAtoeHrMPlQa5o9eKWXPM6du97fmrRGwnJQ9z1rmyLDFYuWHnPU+609UTcjLjo8UHurkV4/RpWCQqYWECh8MzG4jG3J2xFlqDvg/nRWZRjYrvW0s0fxPO+C0k8A5pOrXGoRiYKCj1JkQ5Es2lTu6rO/cbG6tG4Coqte2jg67Bz/CXkywzqM671DtFHQ0G3712LCnhfZ0NiJdWHZsXwqK0B93X5nGqcxqs+IIT1TGNAtEnhRLVtLtep6vTxNftjCzkPYcDfxWaFQ+i4/1TdtT3fylAIKaUtdpdq5ahGCMjcSntyibYSA3osv97qxWpu3Ym8Zkg7JbOng1vpaiV8/qv57qN8qy6Gz1iQe3tw3ZcqyChY3Vr0sicKIvIrAuPrzWsQNyCjwG6eKxmxOkX1e5MvnVxI1F1dnntGASc2kOjGWtkBVRi7UGWslRi4av3ldFXePKbPxPtnFQbacQmmNUGJXHeL2sr8qyUgB2Bq1sAHuYL7H4JXEJBXTJW3DBZYudu28U39HyEwhswQM0v36xrBIOTPfVrKv619Ln7yiJ+qbY8poiXakGExV4crYM69Cmu3ORbtH2OBM72TGyIDsJKCI+8wAlZ5B7lr+rzkioSQZq04mdTPqo2ZRW9m03OMhsor9ogi9qgUN6FxMKXLIOIOYWkOfx2EFqz+h7Nf2MI9AzX3DxpaRBX3HBC5e5h+A4EOIaxyZ0ZqEEHVcFaMZVT9jcmD8ZRGF4bbB62oEHaAlifAGNUCOVbJ9piCxttcdzYmoZ6V4Ab06zdd2Va2A0ZKs6H8iC2TD0A41NcMMBUVn3ppp/TNx4a7UcVlUd5+taNm8DIiwBqFeiJDounQWlbbHR54EK6UZKvSJmNd94Ht7lN72stcdWH4BhFJdcFMU9nqDzLHKQ0gPFjXW8qmdxX+1k1JWsO4ZxONhfsSaYMK2xunF/7MrVMgfmiftTsNODdH7kyAkFtPL5ogQdy3qyPxinTIhWyVeJe6xO2JwIy+mpXwCnLs36T2kgaMMsjzQFHBdtIb+v9NUoDBYONdPNx4meDC3mmN0MxJjq//mDMUj/Wja9FiTzugNVrsGNoiGUxd0uHLgjYuPwclYUjsM6k4MYCNAIyx6NYNiUv8VxPH9KtqBUmpleid1KeYfCux4EZdkWKfA8jEA1cjS+qXp5J1CjxFs92+S0qr1tDM1VEdpcGZyWiGjE07XER63JfqrXYTIb86fyOjr4LQQ4Pl40GWrldsQ7KKXGgzqXRn6i/4ssbjUnjr2NWvAaY2HqnzRH5aFDx9jRJ2PR1uZHcKyF314rtqHIlILF5sWF7m3wFcuXbktrQVZln+n9X1zC1DsSHlhH6wnE+TEPt8z5eNGdq3fPU6ubK4/n2zODAJ93t3lC7OD5hsyr2BSPWod/6vUV8HnIYTiVns02LBHgqhQRt6OQn8XafRkPYNIWHF8jBGXqg6q39t//juWzlbqMCyBm4P7EHVbo6PMSJ24w0dlNz+1bW/kyXkNgyBxXPb2HVeZsViV/YbUbaao7WmL6A5MhvLgbGjbL5tRC5kzLoQp2KlBwXZYY9FG2XuX9j2JLDpgQZPARIC/5LPyfYPE3dlaTGMmxYrL0PJuRGgLKvJXgfZuyP/O6bgifMy+PAXTgBEOQ2zvVG4A8hGiCejBiEqsmnM5Bb2bcWTPCyGIsA0lLQX70kj1V2y0Q04fwhDD+/ieX4n00aj16ieGdcO3nwDSuY12SrXOBEIETOhZtg5SYwB+8ydlQGfcg4IxkwXIUHLLEAfYqgkcH+aIh0QY/g+sZE7nfGEKSKU+dtzmTyyXuduqC0aJANeghCNKRuL4pmYqNzpviLGL2nmwvMg+DOaeMpkpLpMUzIkAWPvsdcF9evW4Xw3yJqYmpo1n2ogVw1pOL6I1v1e97ZWzE66SIaCOXRjXFbshu+DHOKEbbs65jEBzhPe5RTdX+ccTcxYPnSQaTxQ5t3zIdv2bjrisquT8Tvc4HPubebZ/t7K+OORAdD7xwiyFU928oOpQ1Pyv9xuYgPQhg1osasx5OT9UDYJw3XeRk0U6Ig9PKedk0Rwuu6+0utB1DuyfUzCu28y+Uzm9KNPCxd9XaSkpBSTKLkTPnd2JNNjZrAJ2fHh1iBfvRhKhHRQGOgqLxwL9MnTtP22XUEjESjj3/fx/oD/vcJ4E58jwuptKpZeGH5doPDJkqd2zjU+TI5scORuCU63wFJX0QH+ltXyIa7KZ1lM5pyP2c27bZCqY527fb59z2AUx1sJecUVJYI4lPfXYQudRE3JpWfNcLsPUMm3HId4qg6+4o/klfuS3HvctmTufZo4Yhq3N7djCML3sqvPvpwkm/P/ycL8fXtJfD2cazxippcf7BXShRB8zzl6/+HL41LKri/MVtbWhHKy2lml1imCVkpTmH2KZHQHsTlcXV/tknGSEKjKnDwMsTjiWgYUyiULeIRTq7fdaCHR4iRuIOEmn9tvA6aFSFmirX9E6nGr2BNuH4YwCsczdfPSSsgsRaKsiYJW5NljzLZ75UOE3hgS3BPtx2RApGRM0AEOiAqEMGeL1OYYXgkNIz2qGAiGBT1iVBB3C1GNPpE2C234+R8ttfb/VUYpyRq+sNWbyx9F4R8t2UmxRW2UGjKb5ukF5LhRoQohB7jsZSFV/SjPEbOYf/ZgeOp303knGghrwuBLNzKzdgTa1cWgZlwlpDmW78ljV1eVCX/w5NRBg5c3SHUu5J7tHg7wIylkL2+RcRVFEMcnSsoCTiJnF2iTzfjpOqWR64AW9teNQXoebqd9amVxSNO3s/G1+lFUOTOOBzGoZ8cqMWQZg/kHiVYQvG+T5PqFsnoadm8csIcRAndMFUqGpXRXdb1kF/EUiGXuN6D2rwjrD6hZnbSIpC5WFm/Gh4XSgzppJkHXHlZBYweAIuwIxSdfWYvnZEac2XQirIy2wzBrzhJMd4vq4ALiBaSoTgJ4SrdCJJCpRnF0crTOdC+BnRqrNUEK5NjWOhGQrsz44NoEVKcvhq8OL8NeOQXIdaQvE//8lEiKH39e6WstoQGZUaAjSlp6SK78CzfwX8I46zCAQvfixLMslZ4LnruX+ygfZv88KK1gfK1M3WBYcb4drQw07ziXbk8hxNIpokZ1+BzUT4JRKqPXJ7WpG4foFerjZdqe8V4y/L8UkhL0P34aEXIgDRRCxexre5/kOVhjXMqB7jf6U9l5AFHoQar1Dox2OqIyFVawjLjEtWXVRucIHBPkxmamNNif5P5E2mJK9/6RGqOIZZ3LmzgY1nn3ehjG+OXfZoWqp4AIwG07mg7s6BB5X/TdX+Lc//WSsYhLAyaRbVg0GLxQbjH3UcX9W0tj7HHeVG3BQlJz" />
</div>

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//bolaabadi.it.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; bottom: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="DB93945C" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="HEhkqHv3UQ4JoY7iBO0Z0huiQR50b5nyRY2fCXtq4YzFlSVP1kWH6DY3leILw18ghFMep6Z/dpH1X0bgyGfA1Ek1QsKCL92WblDl0NzTYbvFkGulg4Amz1Crqb84mzHZy/yKX+vELtvxVshFterkUIbSOiyNy/E/qg1vRxtEDGAXAaq4Wr+erPeQiLrHnguH1Iqg5gIWSUuwD4NvX+Jj80VOVjCWybKHUwBTQwYmpro=" />
</div>
                <div class="items login-area">
                    <div class="item-6 m-b-half">
                     <input name="txtUsername" type="text" id="txtUsername" class="username" maxLength="12" placeholder="User Name" tabindex="1" />
                    </div>
                    <div class="item-6 m-b-half">
                        <div class="input-group">
                             <input name="txtCode" type="text" id="txtCode" style="border-radius: 5px 0 0 5px;" placeholder="Code" tabindex="3" maxlength="4" />
                            <span class="input-group-text-r">5543</span>
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
