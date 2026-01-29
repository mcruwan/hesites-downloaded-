

<!DOCTYPE html>
<html>
<head>
    <!-- Main4 -->
    <style type="text/css">
        #btnTop {
           display: none ;
           position: fixed;
           bottom: 17px;
           left: 921px;
           z-index: 9999;
           width: 40px;
           height: 40px;
           border: none;
           border-radius: 50%;
           cursor: pointer;
           font-size: 51px;
           color: #ffffff;
           background: linear-gradient(135deg, #9e9e9e, #e0e0e0);
           box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
           transition: transform 0.2s, box-shadow 0.2s;
           overflow:hidden;
         }

         #btnTop:hover {
           transform: scale(1.1);
           box-shadow: 0 6px 14px rgba(0, 0, 0, 0.4);
         }
    </style>
    <script>
        if (window.location.href.toLowerCase().indexOf("main.aspx") > -1)
            window.location.href = window.location.href.toLowerCase().replace("main.aspx", "");

        function reloadFrameWithLang(frame, lang) {
            try {
                const href = frame.location.href;
                const url = new URL(href, window.location.origin);
                url.searchParams.delete('lang');
                url.searchParams.set('lang', lang);
                frame.location.href = url.toString();
            } catch (e) {
                console.error('reloadFrameWithLang_Main4 error:', e);
            }
        }

        window.addEventListener("message", (event) => {
            try {
                let data = event.data;
                if (typeof data === "string") {
                    data = JSON.parse(event.data);
                }

                if (data.ACT !== undefined) {
                    var curAct = data.ACT.trim();
                    switch (curAct) {
                        case "switch_lang":
                            setTimeout(() => {
                                parent.frames['fraBody'].frames['fraPanel'].location.href = "_Bet/Panel.aspx?lang=" + data.LANG;
                                reloadFrameWithLang(parent.frames['fraBody'].frames['fraMain'], data.LANG);
                            }, 500);
                            break;
                        case "switch_lang_framain":
                            setTimeout(() => {
                                reloadFrameWithLang(parent.frames['fraBody'].frames['fraMain'], data.LANG);
                            }, 500);
                            break;
                    }
                }
            } catch (error) {
                console.error('Failed to parse JSON:', error);
            }
        }, false);
        function getFraMain() {
            try {
                const fraBody = document.getElementsByName("fraBody")[0];
                if (!fraBody) return null;
                const bodyDoc = fraBody.contentDocument || fraBody.contentWindow.document;
                const fraMain = bodyDoc.getElementsByName("fraMain")[0];
                if (!fraMain) return null;
                return fraMain || null;
            } catch {
                return null;
            }
        }
        window.addEventListener("load", function () {
            var btnTop = document.getElementById("btnTop");
            // Click to TOP → scroll to top and hide
            btnTop.addEventListener("click", function () {
                const fraMain = getFraMain();
                var doc = fraMain.contentDocument || fraMain.contentWindow.document;
                var start = doc.documentElement.scrollTop || doc.body.scrollTop;
                var duration = 1000; // total animation time in ms
                var startTime = null;

                function animateScroll(timestamp) {
                    if (!startTime) startTime = timestamp;
                    var progress = timestamp - startTime; // elapsed time
                    var percent = Math.min(progress / duration, 1); // 0 → 1 progress

                    // easing function for smooth acceleration and deceleration
                    var easeInOut = percent < 0.5
                        ? 2 * percent * percent
                        : -1 + (4 - 2 * percent) * percent;

                    // calculate new scroll position
                    var newPos = start * (1 - easeInOut);
                    doc.documentElement.scrollTop = newPos;
                    doc.body.scrollTop = newPos;

                    // continue animation until duration is complete
                    if (progress < duration) {
                        requestAnimationFrame(animateScroll);
                    } else {
                        // hide button when scroll reaches top
                        btnTop.style.display = "none";
                    }
                }
                requestAnimationFrame(animateScroll);
            });
        });
        function onFraBodyLoaded() {
            document.getElementById('btnTop').style.display = 'none';
        }
    </script>
    
    
    
<!-- Start Head_Tags_1_bola228_it_com of bola228.it.com domain -->
<title>BOLA228 Dunia Hiburan Digital Paling Seru, Bikin Dompet Nambah!</title>
    <meta name="keywords" content="Bandar Bola, Taruhan Bola, Pasaran Bola, Situs Bola, Casino Online, Bandar Togel SGP, Togel SGP, Togel Online, Main Togel, PKV Games, Poker Online, Judi QQ Online, Poker QQ Terpercaya" />
    <meta name="description" content="Rasakan sensasi dunia hiburan digital paling lengkap di BOLA228 — tampilan keren, sistem cepat, dan peluang cuan yang bikin dompet makin tebal!" />
    <meta name="google-site-verification" content="C4Vh8El1mfR2C3AHAXUrEAehP5kYj7TMeJFfhnkrQOI" />
    <meta name="google-site-verification" content="cr4IBuaWlWHLnjjQY5G-0C6tvZjoA_Mf_0JZe2gd9VE" />
    <link rel="canonical" href="https://bola228.it.com/" />
    <link rel="amphtml" href="https://ampbola228.com/bola228-it/" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="robots" content="index, follow" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="BOLA228 Dunia Hiburan Digital Paling Seru, Bikin Dompet Nambah!" /> 
    <meta property="og:description" content="Rasakan sensasi dunia hiburan digital paling lengkap di BOLA228 — tampilan keren, sistem cepat, dan peluang cuan yang bikin dompet makin tebal!" />
    <meta property="og:url" content="https://bola228.it.com/" />
    <meta content="1 days" name="revisit-after" />
    <meta content="general" name="rating" />
    <meta content="id" name="geo.country" />
    <meta content="Indonesia" name="geo.placename" />
    <meta content="BOLA228" name="author" />
    <meta content="all" name="Slurp" />
<!-- End Head_Tags_1_bola228_it_com of bola228.it.com domain -->

<!-- Start Head_Tags_1_bola228_it_com of all domains -->

<!-- End Head_Tags_1_bola228_it_com of all domains -->


            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-34506801-8"></script>
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag() { dataLayer.push(arguments); }
                gtag('js', new Date());
                gtag('config', 'UA-34506801-8');
            </script> 


	<link rel="stylesheet" href="odds.css" />
    <link rel="stylesheet" href="css/common.css" />
    <script language="javascript" type="text/javascript" src="js/common.js?v=4"></script>
    <meta charset="utf-8" /> 
    <link rel="Shortcut Icon" href="Images/favicon.ico" />
    
        <meta name="viewport" content="width=1024">
    
    <style type="text/css">
        body, html{width:100%; height:100%; margin:0; padding:0; overflow:hidden; background: transparent}
        .divWrapper{width:1024px; height:100%; margin:0 auto; background:transparent}
        iframe{border:none; overflow:hidden}
        .divHeader{width:1024px; height:141px; overflow:hidden; position:absolute; z-index:9999; /*border:1px #fff solid*/}
        .fraHeader{width:100%; height:100%;}
            
        .divBody{width: 100%;height:calc(100% - 141px);background: transparent; position: relative; top:141px}
        .fraBody{width: 100%; height:100%}
        .divPanel{width:205px; height:100%; float:left}
        .fraPanel{width:205px; height:100%;}
        .divMain{width:819px; height:100%; float:left; background: transparent}
        .fraMain{width:100%; height:100%;}

        .divLeft{width:calc((100% - 1024px)/2); height:100%; position:fixed; top:0; left:0;}
        .divRight{width:calc((100% - 1024px)/2); height:100%; position:fixed; top:0; right:0;}
        .fraLR{height:100%; width:100%;}

         /* Common mobile device (Android Devices) */
        @media only screen and (min-device-width: 320px) and (max-device-width: 1024px){
            .divMain{overflow:scroll;-webkit-overflow-scrolling:touch;/*width: calc(100% - 186px)*/;}
            .divPanel{/*width:186px;*/ overflow:scroll;-webkit-overflow-scrolling:touch}
			.divBody{height:100vh !important}
            /*don't full height, can scroll*/
			body{overflow: scroll !important}
            /*full height, can not scroll*/
            /*body{overflow: inital !important}*/
        }
        /* iPhone 6/7/8 */
        @media only screen 
            and (device-width : 375px) 
            and (device-height : 667px) {
            .divMain{width: calc(100% - 186px) !important}
            .divPanel{width:186px !important}
        }
        /* iPhone 6/7/8 Plus */
        @media only screen 
            and (device-width : 414px) 
            and (device-height : 736px)
            and (-webkit-device-pixel-ratio : 3) {
             .divMain{width: calc(100% - 186px) !important}
            .divPanel{width:186px !important}
        }
        /* iPhoneX */
        @media only screen 
            and (device-width : 375px) 
            and (device-height : 812px) 
            and (-webkit-device-pixel-ratio : 3) {
            .divMain{width: calc(100% - 186px) !important}
            .divPanel{width:186px !important}
        }
        /* iPad */
        @media screen and (min-device-width: 768px) and (max-device-width: 1024px){
            .divMain{width: calc(100% - 205px) !important}
            .divPanel{width:186px !important}
        }
        /* iPhone Promax*/
        @media only screen and (device-width: 414px) and (device-height: 896px ) {
            .divMain{width: calc(100% - 186px) !important}
            .divPanel{width:186px !important}
        }

        /*.divMain{background:url(Images/spinner.gif) no-repeat }*/
    </style>
</head>
<body class="bodyBorder">
    
    <!-- LEFT LAYOUT -->
    <style type="text/css">
            .divWrapper{margin:0 !important}
            .divRight{width:calc(100% - 1024px) !important}
    </style>
    <div class="divRight"><iframe class="fraRight fraLR" src="Right.aspx" name="fraRight"></iframe></div>
    <div class="divWrapper">
        <div class="divHeader"><iframe style="" src="Header.aspx" name="fraHeader" class="fraHeader"></iframe></div>
        <div class="divBody">
           
            <iframe src="Body.aspx" name="fraBody" class="fraBody" allowtransparency="true" onload="onFraBodyLoaded()"></iframe>
        </div>
    </div>
    <button type="button" id="btnTop">⤒</button>
    
    <iframe name="fraHidden" src="Hidden.aspx" style="display:none"></iframe>
    <iframe name="fraMaintenance" src="Maintenance.aspx" style="display:none"></iframe>
    <iframe name="fraSingle" src="SingleLogin.aspx" style="display:none"></iframe>
    
    <!-- Livechat part -->
    
   
</body>
</html>
