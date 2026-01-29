<!DOCTYPE html>
<html lang="bg">
<head>
    <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-param" content="_frontendCsrf">
<meta name="csrf-token" content="7Fr9G1zK31NK8RjfViuc4ae0rR8W_G2T-BuBGWWbYtGOG7NfC46NCnKwV7MeWM_V7v3deUnMDMy6UcRtM-Ibow==">
    <title>Начало</title>
    <link href="/assets/9e6f3ab3/css/bootstrap.css" rel="stylesheet">
<link href="/css/site.css" rel="stylesheet">
<link href="/css/page.css" rel="stylesheet">
<link href="/css/communications.css" rel="stylesheet">
<link href="/css/dhtmlwindow.css" rel="stylesheet">
<link href="/lib/countdown/jquery.countdown.css" rel="stylesheet">
<style>
.btn-forgot {
    background-color: #cc0000;
    border-color: #b30000;
    color: #fff;
    font-weight: bold;
    border-radius: 6px;
    transition: background-color 0.3s;
}
.btn-forgot:hover {
    background-color: #e60000;
    color: #fff;
}
</style>
<script src="/assets/b2077042/jquery.js"></script>
<script src="/assets/667234f5/yii.js"></script>
<script src="/assets/39d5451/js/dialog.min.js"></script>
<script src="/lib/jquery/1.2.1.migrate.min.js"></script>
<script src="/scripts/custom.js"></script>
<script src="/js/scripts.js"></script>
<script src="/js/dhtmlwindow.js"></script>
<script src="/lib/countdown/jquery.countdown.min.js"></script>
<script src="/lib/countdown/jquery.printElement.min.js"></script>
<script src="/scripts/jQuery-ext/jquery.blockUI.js"></script></head>
<body>



<div class="wrap ajaxContentHolder" style='font-family: "Open Sans", "Trebuchet MS", Arial, Helvetica, sans-serif;  font-size:13px;'>
<nav id="w0" class="navbar-inverse navbar-fixed-top navbar-default navbar"><div class="container"><div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#w0-collapse"><span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span></button><a class="navbar-brand" href="/index.php/site/index"><b>ВУАРР</b></a></div><div id="w0-collapse" class="collapse navbar-collapse"><ul id="w1" class="nav nav-pills navbar-default nav"><li><a href="/index.php/site/index">НАЧАЛО</a></li>
<li><a href="/index.php/site/exit">Изход ()</a></li></ul></div></div></nav>
    <div class="container">
                <div class="site-login">
    <h1>Начало</h1>

    <p>Моля попълнете полетата за да влезете в системата:</p>

    <div class="row">
        <div class="col-lg-5">
            <form id="login-form" action="/index.php/site/login" method="post">
<input type="hidden" name="_frontendCsrf" value="7Fr9G1zK31NK8RjfViuc4ae0rR8W_G2T-BuBGWWbYtGOG7NfC46NCnKwV7MeWM_V7v3deUnMDMy6UcRtM-Ibow==">
                <div class="form-group field-loginform-username required">
<label class="control-label" for="loginform-username">Потребителско име / Факултетен номер</label>
<input type="text" id="loginform-username" class="form-control" name="LoginForm[username]" autofocus aria-required="true">

<p class="help-block help-block-error"></p>
</div>
                <div class="form-group field-loginform-password required">
<label class="control-label" for="loginform-password">Парола</label>
<input type="password" id="loginform-password" class="form-control" name="LoginForm[password]" aria-required="true">

<p class="help-block help-block-error"></p>
</div>
				<div class="form-group">
                    <button type="submit" class="btn btn-primary" name="login-button">Вход</button>                </div>  
                <div class="form-group" >
                    <a class="btn btn-danger btn-forgot" href="/index.php/site/request-password-reset">Забравена парола</a>                </div>

            </form>        </div>
    </div>
</div>

    </div>
</div>

<footer class="footer" id="footerid">
<div class="row"></div>
	<div id="footer-wrapper"> 
    	<ul class="inline-list">
    		<li class="copyright">ВУАРР &copy; 2007-2026 <a href='http://www.bst.bg' target='_blank'>Mind Solution Ltd.</a></li>
			<li><a class="icon" href="https://isaoplus.vuarr.com/" title="ИС ВУАРР Пловдив" target="_blank">ИС ВУАРР Пловдив</a></li>
			<li><a class="icon" href="https://uard.bg/" title="ВУАРР - Пловдив " target="_blank">ВУАРР - Пловдив</a></li>
		</ul>
	</div>	
</div>
</footer>
		

<script src="/assets/667234f5/yii.validation.js"></script>
<script src="/assets/667234f5/yii.activeForm.js"></script>
<script src="/assets/9e6f3ab3/js/bootstrap.js"></script>
<script>jQuery(function ($) {
jQuery('#login-form').yiiActiveForm([{"id":"loginform-username","name":"username","container":".field-loginform-username","input":"#loginform-username","error":".help-block.help-block-error","validate":function (attribute, value, messages, deferred, $form) {yii.validation.required(value, messages, {"message":"Попълнете полето \u0022Потребителско име \/ Факултетен номер\u0022."});}},{"id":"loginform-password","name":"password","container":".field-loginform-password","input":"#loginform-password","error":".help-block.help-block-error","validate":function (attribute, value, messages, deferred, $form) {yii.validation.required(value, messages, {"message":"Попълнете полето \u0022Парола\u0022."});}}], []);
});</script></body>
</html>
