<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en"></html>
<head>
<title>提示</title>
    <link type="text/css" rel="stylesheet" href="/jmApp/css/myzhaopin.css" />
    <link type="text/css" rel="stylesheet" href="/jmApp/css/login.css" />
    <link type="text/css" rel="stylesheet" href="/jmApp/css/codetarget.css" />
    <link type="text/css" rel="stylesheet" href="/jmApp/css/custom.css" />
    <link rel="stylesheet" type="text/css"
	href="/jmApp/bootstrap-3.3.5-dist/css/bootstrap.min.css">
	<script src="/jmApp/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" async="" src="/jmApp/js/dc.js"></script>
    <script type="text/javascript" async="" src="/jmApp/js/dywe.js"></script>
    <!--[if lt IE 10]>
    <script type="text/javascript" src="/scripts/jquery.placeholder.min.js"></script>
    <![endif]-->
<style type="text/css">
   
    body {
  
	background-image: url('/jmApp/img/regnewbodybg.png');
}
</style>
    <script type="text/javascript" src="/jmApp/js/jquery.validate.js"></script>
    <script type="text/javascript" src="/jmApp/js/jquery.validate.ui.login.js"></script>
    <script type="text/javascript" src="/jmApp/js/jquery.passwordstrength.js"></script>

</head>
<body>
 <nav class="navbar navbar-default navbar-fixed-top"
		style="background:#FFF; color:#FFF">
		<div class="container">
			<div class="navbar-header" style="margin-top: 10px; margin-bottom: 10px">
				<a class="navbar-brand" href="/jmApp/jm/MainAction.action" style="padding-top: 0"> <img
					src="/jmApp/img/91_logo.png">
				</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#example-navbar-collapse">
					<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
			</div>
	</nav>
    <div id="page">
        

<div class="welcomelogin"></div>
<div class="login" style="margin-top: 60px">
    <div class="msgparent" style="font-family: 微软雅黑,Arial,Helvetica,sans-serif,simsun;">
        <div class="msgcontainer" style="margin-top:30px;">
            <div class="msgheader">
                <i style="background:none;"> </i>
            </div>
            <dl style="float:left;">
                <dt class="msgtitle" style="font-size:20px;">
                    <b>恭喜您，邮箱绑定设置成功！请到邮箱查看邮件</b>
                </dt>
                                    <dd style="color:#333;">
                        系统将在<span id="TimerCount">5</span>秒后自动跳转到：<br>
                        <a href="http://www.91jiuma.com/">

                            http://www.91jiuma.com
                        </a>
                        <script type="text/javascript">
                            var sec = 5;
                            var redirectUrl = "http://www.91jiuma.com";
                            var intervalv;
                            $(function () {
                                intervalv = setInterval(function () {
                                    if (sec <= 1) {
                                        if(intervalv){
                                            clearInterval(intervalv);
                                        }
                                        window.location.href = redirectUrl;
                                    }
                                    sec--;
                                    $('#TimerCount').html(sec);
                                }, 1000);
                            });
                        </script>
                    </dd>
            </dl>

        </div>
            <a id="submitbtn" class="navbar-brand" href="http://www.91jiuma.com/" style="padding-top: 0">
                立即跳转
            </a>
    </div>
</div>

    </div>
    <!--
    <script src="http://images.zhaopin.com/new2011/bottom/bottom_2011_utf_8.js"></script>-->
    <div id="loginfooter">
         <a onmousedown="return AdsClick(121115223,'zhilianjieshao')" target="_blank" href="http://www.91jiuma.com/jmApp/jm/MainAction.action">九马首页</a> |
        <!-- <a target="_blank" href="http://www.zhaopin.com/sitemap.html">网站地图</a> | -->
        <a onmousedown="return AdsClick(121115223,'jiaruzhilian')" target="_blank" href="http://www.91jiuma.com/jmApp/jm/ProjectAction.action">影视投资</a> |
        <a onmousedown="return AdsClick(121115223,'falvshengming')" target="_blank" href="http://www.91jiuma.com/jmApp/projectdelivery.jsp">项目投递</a> |
        <a onmousedown="return AdsClick(121115223,'baomichengnuo')" target="_blank" href="http://www.91jiuma.com/jmApp/shangcheng.jsp">九马商城</a> |
        <a onmousedown="return AdsClick(121115223,'lianxifangshi')" target="_blank" href="http://www.91jiuma.com/jmApp/travel.jsp">九马旅游</a> |
        <a onmousedown="return AdsClick(121115223,'changjianwenti')" target="_blank" href="http://www.91jiuma.com/jmApp/list.jsp">关于</a> 
        <!-- <a onmousedown="return AdsClick(121115223,'touzizheguanxi')" target="_blank" href="http://zhaopin.investorroom.com">Investor Relations</a> -->
    </div>
    <script type="text/javascript" src="/jmApp/js/index_ads.js"></script>
    <script type="text/javascript" src="/jmApp/js/global.js"></script>
    


</body></html>
