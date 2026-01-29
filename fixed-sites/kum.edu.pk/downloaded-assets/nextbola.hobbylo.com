


<!DOCTYPE html>
<html>
<head>
    
<!-- Start Head_Tags_1_nextbola_hobbylo_com of nextbola.hobbylo.com domain -->
<!-- Primary SEO Meta Tags -->
<title>NEXTBOLA | Mix Parlay, Slot Gacor & Bandar Togel Online</title>
<meta name="description" content="NEXTBOLA adalah situs mix parlay bola online resmi terpercaya di Indonesia. Agen situs mix parlay Piala Dunia 2026, slot RTP gacor, dan bandar togel terlengkap." />
<meta name="keywords" content="nextbola, situs nextbola, judi bola online, situs bola terpercaya, slot online gacor, taruhan bola resmi, togel online terpercaya, agen sbobet, mix parlay" />
<meta name="robots" content="index, follow" />
<meta name="revisit-after" content="1 days" />
<meta name="rating" content="general" />
<meta name="geo.country" content="ID" />
<meta name="geo.placename" content="Indonesia" />
<meta name="Slurp" content="all" />
<meta name="language" content="id" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Canonical & AMP -->
<link rel="canonical" href="https://nextbola.net/" />
<link rel="icon" type="image/png" href="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1748015151/FAVICON_NEXTBOLA_wifg6r.png" />

<!-- Open Graph / Facebook -->
<meta property="og:type" content="website" />
<meta property="og:title" content="NEXTBOLA | Mix Parlay, Slot Gacor & Bandar Togel Online" />
<meta property="og:description" content="NEXTBOLA adalah situs mix parlay bola online resmi terpercaya di Indonesia. Agen situs mix parlay Piala Dunia 2026, slot RTP gacor, dan bandar togel terlengkap." />
<meta property="og:url" content="https://nextbola.net/" />
<meta property="og:image" content="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1761975133/BANNER_NEXTBOLA_1_f1bhrn.png" />

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="NEXTBOLA | Mix Parlay, Slot Gacor & Bandar Togel Online" />
<meta name="twitter:description" content="NEXTBOLA adalah situs mix parlay bola online resmi terpercaya di Indonesia. Agen situs mix parlay Piala Dunia 2026, slot RTP gacor, dan bandar togel terlengkap." />
<meta name="twitter:image" content="https://res.cloudinary.com/dkdjjrw9u/image/upload/v1761975133/BANNER_NEXTBOLA_1_f1bhrn.png" />

<!-- JSON-LD Schema -->
<script type="application/ld+json">
{
 "@context": "https://schema.org",
 "@type": "WebSite",
 "name": "NEXTBOLA",
 "url": "https://nextbola.net/",
 "description": "NEXTBOLA adalah situs mix parlay bola online resmi terpercaya di Indonesia. Agen situs mix parlay Piala Dunia 2026, slot RTP gacor, dan bandar togel terlengkap.",
 "potentialAction": {
   "@type": "SearchAction",
   "target": "https://nextbola.net/?s={search_term_string}",
   "query-input": "required name=search_term_string"
 }
}
</script>
<!-- End Head_Tags_1_nextbola_hobbylo_com of nextbola.hobbylo.com domain -->

<!-- Start Head_Tags_1_nextbola_hobbylo_com of all domains -->

<!-- End Head_Tags_1_nextbola_hobbylo_com of all domains -->



    <link rel="icon" href="Images/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="Images/theme/v1/css/style.css?v=4">
    <script src="Images/theme/v1/js/jquery-3.4.1.min.js"></script>

    <script type="text/javascript" src="js/common.js?v=20241218"></script>
    <script type="text/javascript" src="js/header.js?v=20250106"></script>
    <script type="text/javascript" src="js/login.js?v=20250303"></script>

     <script language="javascript" type="text/javascript">
         $().ready(function () {
             $('#btnReg').click(function () {
                 popupRegister('');
            });
         })

         function popupLivechat() {
             window.open('https://www.livehelpnow.net/lhn/lcv.aspx?d=51623&ms=&zzwindow=59091&lhnid=34870&custom1=&custom2=&custom3=&pcv=&opid=0', 'LiveChat', 'width=500,height=500,toolbars=no,scrollbars=no,status=no,resizable=no');
         }
     </script>


    <script type="text/javascript">
        function drawTogelL(records) {
            var strTogel = ''
            for (var i = 0; i < records.length && i < 2; i++) {
                strTogel += '<div class="TogelItem">' +
                    '<span class="TogelCountry">' + records[i].Togel + '</span>' +
                    '<br/>' +
                    '<span class="TogelBall">' + records[i].Number[0] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[1] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[2] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[3] + '</span>' +
                    '</div>'
            }
            $('#divTogelL').html(strTogel)
        }

        function drawTogelR(records) {
            var strTogel = ''
            for (var i = 2; i < records.length && i < 4; i++) {
                strTogel += '<div class="TogelItem">' +
                    '<span class="TogelCountry">' + records[i].Togel + '</span>' +
                    '<br/>' +
                    '<span class="TogelBall">' + records[i].Number[0] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[1] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[2] + '</span>' +
                    '<span class="TogelBall">' + records[i].Number[3] + '</span>' +
                    '</div>'
            }
            $('#divTogelR').html(strTogel)
        }
        $().ready(function () {
            fetchTogel(function (records) {
                drawTogelL(records)
                drawTogelR(records)
            })
        })
    </script>

    <style>
        .games-in [class^="item-"], .games [class^="item-"] {
            padding: 0 0.8rem;
        }

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

        .TogelBall {
            color: #fff;
            line-height: 39px;
            font-size: 32px;
            font-weight: bold;
            letter-spacing: 2px;
        }

        .TogelItem {
            width: 225px;
            height: 100%;
            text-align: center;
            float: left;
            padding-top: 5px
        }

        .TogelCountry {
            text-transform: uppercase;
            font-family: Sans-Serif;
            font-weight: bold;
            font-size: 24px;
        }

        .HasilL {
            height: 65px;
            float: left;
            position: relative;
            top: -75px
        }

        .HasilR {
            height: 65px;
            float: right;
            position: relative;
            top: -75px
        }

        .announcement-bar-v2 {
            width: 76%;
        }
        .games .item-1:last-child a {
            color: rgb(0,255,255);
            background: unset;
            -webkit-background-clip: unset;
            -webkit-text-fill-color: unset;
        }
    </style>
    <style type="text/css">
        .games-in .item-1 a:hover, .games .item-1 a:hover {
            -webkit-text-fill-color: unset;
        }

        .games-in .item-1 a, .games .item-1 a {
            -webkit-text-fill-color: unset;
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

            .TogelBall {
                color: #fff;
                line-height: 0px;
                font-size: 10px;
                font-weight: bold;
                letter-spacing: 2px;
            }

            .TogelItem {
                width: 80px;
                height: 100%;
                text-align: center;
                float: left;
            }

            .TogelCountry {
                text-transform: uppercase;
                font-family: Sans-Serif;
                font-weight: bold;
                font-size: 10px;
            }

            .HasilL {
                height: 30px;
                float: left;
                position: relative;
                top: -38px
            }

            .HasilR {
                height: 30px;
                float: right;
                margin-right: 5px;
                position: relative;
                top: -38px
            }
        }
        @media only screen and (max-width: 768px) {
            .banner-wa {
                bottom: 86px!important;
            }

            .banner1 {
                width: 70px;
                height: 70px;
            }
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
                        <img src="Images/logo.gif?v=19022025" alt="Logo NEXTBOLA">
                    </a>
                </div>
            </div>
            <div class="item-3">
                <a id="btnReg" href="#" type="button">
                    <input type="button" value="DAFTAR" class="btn-reg">
                </a>
            </div>
            <form name="form1" method="post" action="Defaults/Default273.aspx" id="form1" class="item-5">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="MtVcHKYxXZlHTdU4Y9qZPLOeIHvkWNubSooQc1qGXYxvR3st0GvuolKoSLPgzMSo89NLLowsuf9y0q4zkcGQ5eA8UIQYteu/LnS6R/qPVPwz5KSgAmFLto4LqKYP1lflgIy4lvJy73pqaIQqwRomhC016K4snd/6EJGdADpsjC0n+xHKKP+yDcVrSd1+PK0nbuGGtuXFBFU7RaJmGd7QjSDdu3JuUUmWiNu8XIY2XGcrf3fQRNifXY+GL6lqqkyHguxnj7+mZHkfabdidTFJ6t0STZqHMgfBsIo+rcX4Vk1yxTSB+i/O2oPGPEHvVwrg88eRrNnc69ATSuezazPFNwrQ4QuHjjK3605xnQB5+F+ycdBUoCYebjPZB1g4oGO3tFx9BmQpQPYIhB8kNqvNyZxTlUgVuhqFMgV+LEfpRrZSmpjzDoT8T+YoTCvUZYhFV9Smjuz0/W6kTx6++BWWBIviqO95pbq/rzw2HdPAr80TUvzYhatOAfTXHqLnvJWDsdzfFeoXktUYbsbasPt2upwwwk8UFsbtV09jYjDPOfx2WkVL9TUtrkfkHIBPNthA8lFKP2n2xnIxqmNcTshsEhhDmHl7eSjf8lS8xlyOBJb06wmiCln86NRyvZjAx6NV0rrVlN1ZyWEn46Qhoy3ekwPJclgORNAh4nw6AAYOuNDoUlBzDFwvgXtdxOBwgCVLRoN3qR1qrbBcxH/J23xn4s6gLvUnW4PTX4t7geIE7jIz33FTA9iHgS5HA2clrY5y3aBQElOPmxhuz2FgqgHryqAmb/oNXQDlfi33XM/keMgAQc3GzxwnQLGm0g7zBRV/MLahL4Huf9sDPshvyG+QDuW9Vq6QbrBZlq2hNq3UJTw2XTp+q014nl7QZ1sMccpMFDhQ9DwPMNifU36BU9jCihAGYWVXjGBcOGb1M77o0Ug7uA9CtJZAHPekrBoM9+41kxWGB1RGKjU0PylCvaz89+hAPOcOOhqF+Nq6i3rKDhDvtYe0NGgprSp5JLQFuepugnJuA3sIXH6camdYnNFiCkQvL/B/j3+k92WmyAhCHNvHhgO+W0tSeQ1twVGUL38Lh+D0IgbHdsFIC8TRGVWKXq6Upsq7vBww/GW1DveTfWN3w4zA/mXdMl1zcWA/YS950gMrPqhUbVe9RfeZLT06u6dginMH4NxqGxwfEmMl0xU/HDb0A4QIe5lOj5Y1+DEZ23Jx8dEgpAUjHpsZpSgMRNy+Z5opUQY95GOselMecWlHZpYgi8pN/fZxcMYV1VHM0A+HiOLUPCCRUtpnNKaINPYMJ3drLHOZuq0KoEd2cJzwxEyE8MPcGXEftD6e1PFNid7WJMI+wxR+676KT7F9emwpp8+ZexA3WSoZnULpZYrvmATJUwTZznylG3ELhrg7Wt1cxe3FsZoI0d+4W/W4v811CVc+Ci6t44E8BL7svP62WuKZM3SeBER1JA+iaxzH7bdnWbCYKDeRumFym5GvNZasa35LYs6rk19sJV+3pTZeGrnTVtwyuOY6WS44QBGC2b1JU1cf/mH+721HnAIaXRU9JMbY8LJGRBdriQAKcz41y8uPL70M5O6MuM07QueEsIXQ5apWL73eLb12DWO16l151oDLstLsQxyhOzd+vhmpjaMoEmmGg6iPg+wOJiGOmTgrmA9b7MTidTzyZY6fj+jH4sse+nnFlPTEfvISgcYnxcpAf6mdGRNZr0mDG86Fm2OhZpQCMMiPFJusygwx2tKRIL+IomY84x1Q7vH+dQpW3RLI6ReCXb1D6Ba0QQg6wFgv5S4JE9k77samQBVhDRP9AYGrZ4qUMIk0SJ1mr2f8CdLV6kg9tYleeb2s+yV7reWI4MSMTNpLm9ehKVfvYWQx/u+sAqvuRUT3CVHxWGGZdaCVHKIncMbI8q+aIUQpuh3IhQ1WBvqREsrqEaji5mwtzn2IvIfjRzsnhNvjVAgAvZp6byClIGXSsjEIXwiRGfP6M6wiJ8+9qwhQ3Y9+kLjIz4Scipf8POIqg1kJ9geJZdeAqrsyBT8uP0XAQdkqytJ41ySEOKa2BWIdVcFQRPZWpzeGUb/KcNMohywbK2sxAMfjgAhK/XEcHab1bgmDYkkkp4qQGmDiu4l0tA7r9GsHp2ZCFPmK4YcIfcA15ZxrGa/G9+WKfh1Pilx2zxVvq/giEa4QZIGowvMhvqdsj4B+v2MTosE6pZCQrgNolFXt07iRcPETlwFGBTCZiympZiZ44IfbIBZIlTX166Vx/y+ojjT417pu8bHGhRcs5RVHBkWtylTSYoiuRP1h7qHeZvR1EpsMD0cBWnqtLRYy67PtPy/foJct8Cd4Q3Pv+7DGX/sn986yho9sEvH8ED7v5KvMjP52sFx/DiF12i73d6gYK+Qqd4F4Qx4m72RvfquTkiZihw5uFHDUSukxW72PyQVPHBpqtG4hdoTineS4NucRhsoUadYnfpnMEO7+FrkacMrV+79hcfHldoY4mD5Gf0qwg7uh+y7t3uSZ9O2+B8U5U+HSv46yQXDN9uMNh4E96uSBziOajN9Eri8lSzlwSO7fqrqRVAmns+2DGMIsXhjp5M7ad/qsuXhrhl3E3mNOuHBKMqQhN31qEI5K8r/bd093KJWLzu/dY7G9tmCcLVQuV8y3UBCpOqRaO/0RX5kwWA2pCX6iRau4+5L9IEa4vt63irqZXA9Vq4x8hP8J1aP/ZflZt/FgML1RbQ40iV/GZRdTTH5CW0hHhxJFoWiGt4W61icnOcIn/a4tvxqvebN47MHC7ccIfKMKS4iaWn09LBX9dLi14sCorii3HgxzXqB96oEc6d3yilZ2mA6EL2uLeD94IiVT3/7Pn3WXu1PNn7UGibU7fItY4N/PjW9kJFtT5VpWxCw75gmIfrpip2U6KHptxqKDHFW8SDpe/LZpKcIlTTW6wxtvcQqTrXjaeNAZcPBlkXeYAW0j1x/ge+tsBTn5zCkzzGF96k7R0Kls8Wg+LQCp7NUzS2wYH5OdO+YzoHnbc7tp2jhGKFMrR/ZRiYoD36p3QS722u9d5+SIz8iwnvFedQ3By4J4AbL0fVlesHfnJtHXqaD05pz26FkAwa1rPA7pOnDAmUN9Fh5AxavuVvPkHg40oTjQr5sVlzoUfZpnXqvm3DPoA5AYwyhDsxsEZSGfnoxrVsiWXWOQ3wIeDUW6v7MvnOslULjg2G6p7ynDsc3K8WuF4+QJId0YyQ6Ut/DdgyQV2rtNO83HEMDRQq0FSVjsGJ2ouiP0PyVl8QSaaJUzsvDIkqblQXTN/odzSPzQlL197B54yqbGJ6PfoZpaUBNEv8R78CjVikcRu7OcmAgXbyCn2po6j/TfnDcIs/A24gP9msOfsAaR5yuGeD2PKXi/daurtu3m/qXbwzyodFgaVJ3OC2z2d/OOFqGM9s5xjYhMrNFwEHd91VRjEglms3CcN21HECkd43iccvY3JzwpRfQmtogavGa1F+ALKgzDceYs6s+JlhUD8oCfSLanEPA+xXo/T7pYdLir7PDbCQqWf/bo95Q+9RM2orjTeCtc3jWYz3IQkDWX72xgfGmMZn/aufF4oOTcR9vrJJHbyr99Ap+F/+je/p1y+OKnS9wz3OwwGBGun10uD0O/IlmupCP/CgQKGVLpnOcc9A+MJ8X03dBncBAiQQpPQ74Baln1npUe09fx6pnXy2/H7wQE7e0cWTtiIlxKZ2wJyg5g0IqV3nip995j5AfurhQn8QF/SuVFTBKbKJXgtx5kqEdyVTe/gV9ueBRzTzRxuw3AADVj6zPlGHnYmcQU4SoQtz+TOJImY6dm1suXfv8HzT0HHsbX7bjVpw4SltOFN2QRL+RXaj5L34jxbZIlGNVYIVqiFFQ/slC6qvWURhq3L/viuTmf04xs598j8+1X/mHR4KHOZJm5COtIEKoHct2T9UqBDL3DcdcK9xAyjLJBu092VVZxzjP2T/grpRNc4Pzhoeax+7CPc6yLaDvszxab60784LyQVU116FuDefCBeR0sWGVUZBGxZRxl4aIppIZcm047wLh+ZxDcbkXvytryWKQX+Pt3fWEcBJ8HFnoEC6YUsI8T9SW6L22hVw/cijXymzIdmxb7kFJa9fzeDKvRfNvMGbNgazA+KTgC2Nvhc04TcSyR5wB+aIbcf4nuQJRZFgvCQHzWbcBuf0jxA6qAy/nG7fL0tzIprQstqksY+48y3I9y7gNVcRKwb+lF9P7OSdTK5DjxR/LHxY4JzzF0yEWO9StvvJsMyyvOuMFVH9eJVNepVkBeEJNbEGYi7DHkOHuQxU3CPdR0MVl0HlSoGng2ObxxxJjcxyCLS07jorMJVJN4es/CQXznthgmGG9gHxFq2yZ73rdSKt1WyFkGVKEuHq1dFPRMLACr/fdVAQF8hPoxhyKQMmAb0ylEGUmmIFJadHDyY80o0l//5QSP9ApzZDPtklrmbSyaUEkW3Q79EJhmqP3XepNXmiTwPaj4X03XrO0vFdwgOMuvCtgx34NoLK0nByoHIn4ECCYnMzG3nt7eKHL2Yyh4oVSf7KMsLzVwzVoJoA4M19OgvVxwmoAayRhE2eJuc5T094MKgMMUSQ1D0Uk3V8gYT71hpnGXdidI/4eiqsj1gyIVgyvuxl1owSovkMsEP4wfADh3Wns5SR2U3FU4p0L7E7JWkmIpj11glKuMuKFdDmGTuYEA8aDtXP+7UfGXgGU=" />
</div>

<script type='text/javascript'>var timerId = null;var today = new Date();var time_start = today.getTime();function countdown(){var time_left =300 - parseInt(((new Date()).getTime() - time_start) / 1000);clearTimeout(timerId);if(time_left > 0){timerId = setTimeout('countdown()', 1000);}else{document.location.href = '//nextbola.hobbylo.com/';}}function handleError(){return true;}window.onload=countdown;window.onerror=handleError;</SCRIPT><!-- popup event May 2021 was hidden --><script>
                        $().ready(function () {
                            $('body').append(`<a style='z-index: 999999; width: 140px; height: 83px; position: fixed; left:0; bottom: 0px;' href='#'>
                                <img width='120px' height='60px' src='css/Banner_ASF.png?v=2'/></a>`);
                        });
                    </script><script>localStorage.setItem('cdnImageHost','https://imgshare.porta-assist.com');</script>
<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="68865478" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="aKG65iW5e6FmqREhes+4qeO4kTfnsQvFEVXUFsVOZjKYUFAm6g4vhyGYFSjpMY8b7Qdko3CYqEytHXiJuBoN7pTfwoL52DVqghp/wUmcYUCHfxRpRtX3P5+lEubQndbFXTdI32DVEuuY9GSKJMM9E6I3hzMxBFryXpgaTGOl4Nfhvh2jWOq2WvZgVFySvRcs59p4eSMfXfnibQKkz8gaKh4YzuOHg4PkOTbDeNjqRFA=" />
</div>
                <div class="items login-area">
                    <div class="item-6 m-b-half">
                        <input name="txtUsername" type="text" id="txtUsername" class="username" tabindex="1" maxLength="12" placeholder="User Name" />
                    </div>                    
                    <div class="item-6 m-b-half">
                        <input name="txtPassword" type="password" id="txtPassword" tabindex="2" placeholder="Password" />
                    </div>   
                    <div class="item-6 m-b-half">
                        <div class="input-group">
                            <input name="txtCode" type="text" id="txtCode" style="border-radius: 5px 0 0 5px;" tabindex="3" placeholder="Code" maxlength="4" />
                            <span class="input-group-text-r">1367</span>
                        </div>
                    </div>
                    <div class="item-6">
                        <a href="#">
                            <input name="btnSignIn" type="button" id="btnSignIn" tabindex="4" class="btn-login" value="LOGIN">
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="menu-bg">
        <div class="container">
            <ul id="main-menu"
                tag-parent-sub-menu="a"
                data-id="main-menu"
                data-is-guest="true"
                class="games items" style="position: relative">
                <li class="item-1">
                    <a href="#">
                        <img src="Images/theme/v1/img/icon/home.png" alt="Situs LiveBola">
                            HOME
                    </a>
                </li>
                <li class="item-1" v-for="(key, index) in Object.keys(menus)">
                    <menu-item class-name="nav" :is-guest="isGuest" :name="menus[key][0].GameType">
                    <image-item class-name="hover" :image-data="menus[key][0]" :cache-version="cacheVersion"></image-item>
                        {{ getGameMenuDisplayNameByLang(menus[key][0]) }}
                    <down-arrow type="text" 
                        :has-sub-game="menus[key][0].HasSubGame" 
                        :game-type="menus[key][0].GameType" 
                        :is-guest="isGuest">
                    </down-arrow>
                    <submenu class-name="" 
                        :submenu-data="menus[key]" 
                        :is-guest="isGuest" 
                        :cache-version="cacheVersion">
                    </submenu>
                    </menu-item>
                </li>
                <li class="item-1">
                    <a href="https://rebrand.ly/SlotDemoNEXT" target="_blank" rel="nofollow noopener">
                        <img src="Images/theme/v1/img/icon/demo-slot.gif" alt="Promosi LiveBola" style="max-width: 50px">
                        DEMO SLOT
                    </a>
                </li>
                <li class="item-1">
                    <a href="https://rebrand.ly/PromoNextBola" target="_blank" rel="nofollow noopener">
                        <img src="Images/theme/v1/img/icon/promo.png" alt="Promosi LiveBola">
                        PROMO
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="marquee-section items m-t-1 m-b-1">
            <a href="#">
                <img src="Images/theme/v1/img/info.png">
            </a>
            <a href="#">
                <img src="Images/theme/v1/img/border.png">
            </a>
            <div class="announcement-bar-v2">
                <div class="announcement-marquee">
                    <div id="div-marquee" style="width: 840px; height: 26px">
                        <input id="text-marquee" type="hidden" value="Link Anti NAWALA : altnextbola.com | Hanya dengan 1 ID Sudah Bisa Bermain Semua Game | Bonus Cashback Mencapai 5% untuk SPORTBOOK &amp; Refferal&nbsp;Seumur&nbsp;Hidup!" />
                        <script type="text/javascript">
                            initMarquee('')
                        </script>
                    </div>
                </div>
            </div>
            <a href="#">
                <img src="Images/theme/v1/img/border.png">
            </a>
            <div class="item-2">
                <a href="#" onclick="popupLivechat()" class="livechat">
                    <img src="Images/theme/v1/img/live-chat.gif" alt="">
                </a>
            </div>
        </div>

        <div class="frame-banner">
            <div class="banner-slideshow">
                <img src="Images/theme/v1/img/banner/05.png" alt="Slide 1" class="slide active">
                <img src="Images/theme/v1/img/banner/06.png" alt="Slide 2" class="slide">
                <img src="Images/theme/v1/img/banner/07.png" alt="Slide 3" class="slide">
                <img src="Images/theme/v1/img/banner/08.png" alt="Slide 4" class="slide">
                <img src="Images/theme/v1/img/banner/09.png?v=09102025" alt="Slide 5" class="slide">
                <img src="Images/theme/v1/img/banner/10.png" alt="Slide 6" class="slide">
                <img src="Images/theme/v1/img/banner/11.png" alt="Slide 7" class="slide">
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
                <a href="https://rebrand.ly/WANextBola" target="_blank">
                    <img src="Images/theme/v1/img/social/whatsapp.png" alt="">
                </a>
            </div>
            <div class="item-3">
                <a href="https://rebrand.ly/IGNextbola" target="_blank">
                    <img src="Images/theme/v1/img/social/instagram.png" alt="">
                </a>
            </div>
            <div class="item-3">
                <a href="https://rebrand.ly/FBNextbola" target="_blank">
                    <img src="Images/theme/v1/img/social/facebook.png" alt="">
                </a>
            </div>
            <div class="item-3">
                <a href="https://rebrand.ly/BuktiJPNextBola" target="_blank">
                    <img width="250" height="64" src="Images/theme/v1/img/prediksi.gif" alt="">
                </a>
            </div>
        </div>

        <div class="result items m-t-2">
            <div class="item-12">
                <img src="Images/theme/v1/img/result-togel.png" alt="">
                <div class="HasilL" id="divTogelL"></div>
                <div class="HasilR" id="divTogelR"></div>
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
            
<!-- Start WL_Footer_nextbola_hobbylo_com of nextbola.hobbylo.com domain -->

<!-- End WL_Footer_nextbola_hobbylo_com of nextbola.hobbylo.com domain -->

<!-- Start WL_Footer_nextbola_hobbylo_com of all domains -->

<!-- End WL_Footer_nextbola_hobbylo_com of all domains -->
        </div>
    </div>

    <a style="position: fixed; right: 0px; bottom: 155px" href="https://rebrand.ly/RTPNEXTBOLA" target="_blank">
        <img class="banner1" width="150" height="150" src="Images/RTP-SLOT.gif?v=2"></a>
    <a class="banner-wa" style="position: fixed; right: 0px; bottom: 10px;" href="https://rebrand.ly/GRUPWANEXTBOLA " target="_blank">
        <img class="banner1" width="150" height="150" src="Images/WHATSAPP.gif?v=2"></a>

    <script src="cdn.jsdelivr.net/npm/swiper%409/swiper-element-bundle.min.html"></script>
    <script type="text/javascript">
        var lhnAccountN = "11332-1";
        var lhnButtonN = 9688;
        var lhnChatPosition = 'default';
        var lhnInviteEnabled = 0;
        var lhnWindowN = 26362;
        var lhnDepartmentN = 27395;
    </script>
    <script src="www.livehelpnow.net/lhn/widgets/chatbutton/lhnchatbutton-current.min.html" type="text/javascript" id="lhnscript"></script>
    <script>
        $.ajax({
            url: "https://209.97.168.204/api/banners",
            data: {
                website: "NEXTBOLA.com",
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
                website: "NEXTBOLA.com",
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
            
    <script src="js/vue3.3.7.global.js"></script>
    <script>const mountEl = document.querySelector("#main-menu");</script>
    <script src="js/header.menu.vue.js?v=1762746734915"></script>
    <script>menu.mount("#main-menu");</script>

</body>
</html>
