<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en"></html>
<head> 
<title>忘记密码--重置密码</title>
    <link type="text/css" rel="stylesheet" href="/jmApp/css/myzhaopin.css" />
    <link type="text/css" rel="stylesheet" href="/jmApp/css/login.css" />
    <link type="text/css" rel="stylesheet" href="/jmApp/css/codetarget.css" />
    <link type="text/css" rel="stylesheet" href="/jmApp/css/custom.css" />
    <link rel="stylesheet" type="text/css" href="/jmApp/bootstrap-3.3.5-dist/css/bootstrap.min.css">
    
    <script language="javascript" type="text/javascript" src="/jmApp/js/analytics.js"></script>
    <script language="javascript" type="text/javascript">lastChannelURL_cookie();</script>
    <script type="text/javascript" src="/jmApp/js/ga.js"></script>
    <script type="text/javascript" async="" src="https://stats.g.doubleclick.net/dc.js"></script>
    <script type="text/javascript" async="" src="/jmApp/js/dywe.js"></script>
    <script src="/jmApp/js/jquery-1.7.1.min.js"></script>
<style type="text/css">
   
    body {
    width: 100%;
height: 100%;
	background-image: url('/jmApp/img/regnewbodybg.png');
}
</style>
    <script type="text/javascript" src="/jmApp/js/jquery.validate.js"></script>
    <script type="text/javascript" src="/jmApp/js/jquery.validate.ui.login.js"></script>
    <script type="text/javascript" src="/jmApp/js/jquery.passwordstrength.js"></script>

</head>
<body onLoad="changeMe()">
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
        

<div class="welcomelogin" style="margin-top: 65px">
    密码修改
</div>
<div class="login">
    <div class="msgparent">
        <div class="msgcontainer">
            <div class="tabs">
                <ul class="tab">
                        <li style="margin-left: 5px;class="curr">请输入密码</li>
                </ul>
            </div>

            <dl style="border-top: 1px solid #cccccc; padding: 20px 0;">
                <!-- <dt class="msgtitle">
                    <img src="/jmApp/img/step02.jpg">
                </dt> -->
                <dd style="width:100%;">
                    <div style="margin:0 auto;overflow: hidden;width:416px;">
                        <form action="/jmApp/jm/Bup.action">
                            <input id="bkurl" name="bkurl" type="hidden" value="">
                            <input data-val="true" data-val-required="错误的帐号参数" id="Receiver" name="Receiver" type="hidden" value="15590062451">
                            <input data-val="true" data-val-required="错误的验证码参数" id="SecurityCode" name="SecurityCode" type="hidden" value="155573">
                            <p style="margin:10px 0">
                                <b style="font-size:20px;font-family:微软雅黑,Arial,Helvetica,sans-serif,simsun">
                                   修改密码
                                </b>
                            </p>

                            <div style="padding:5px 0">
                                <input class="text" data-val="true" data-val-required="请输入密码" id="Password" name="Password" placeholder="请输入密码" type="password" value="" style="width: 250px;height: 40px">
                            </div>
                            
                            <div class="er" id="passwordtips">
                                <span style="float:left;">6-20位数字字母组合</span>
                                <span style="float:left; margin-left:25px;" id="pwdchk">
                                <table style="margin-right:10px;float:left; clear: left; color: black; height: 14px; width: 90px; margin-top:6px;">
                                <tbody>
                                <tr>
                                <td id="_pwdcktd1" style="background-color: rgb(204, 204, 204);"></td>
                                <td id="_pwdcktd2" style="background-color: rgb(204, 204, 204);"></td>
                                <td id="_pwdcktd3" style="background-color: rgb(204, 204, 204);"></td>
                                </tr>
                                </tbody>
                                </table>
                                </span>
                            </div>
                            <div style="padding:5px 0">
                                <input class="text" data-val="true" data-val-equalto="密码输入不一致" data-val-equalto-other="*.Password" data-val-required="请输入密码" id="PasswordConfirm" name="PasswordConfirm" placeholder="请重复输入密码" type="password" value="" style="width: 250px;height: 40px">
                            </div>
                           <!--  <a id="submitbtn" class="navbar-brand" href="/jmApp/password2.jsp" style="padding-top: 0"> -->
                            <button type="sybmit" class="btn btn-primary" style="margin: 10px">下一步</button>
                          <!--   </a> -->
                        </form>
                    </div>
                </dd>
            </dl>
        </div>
    </div>
</div>
<script type="text/javascript">
    jQuery.validator.addMethod("passvalid", function (value, element) {
        var ret = $('#pwdchk').attr('isValid') == "true";
        return ret;
    }, "请输入6-20位的密码，必须包含数字和字母");

    $(function () {
        $("#Password").keyup(function () {
            var errdiv = $("#Password").parent("div").next("div.msg_error");
            if (errdiv.length > 0) {
                errdiv.remove();
            }
            $("#passwordtips").show();
        });

        $('#pwdchk').pwdchk($('#Password'));

        var vOption = {
            onkeyup: false,
            rules: {
                Password: { required: true, passvalid: true },
                PasswordConfirm: {required:true, equalTo:"#Password"}
            },
            messages: {
                Password: { required: "请输入密码", passvalid: "请输入6-20位的密码，必须包含数字和字母" },
                PasswordConfirm: { required: "请输入重复密码", equalTo: "密码输入不一致" }
            }
            , errorElement: "div"
        };
        window.formvalidator = $("#appform").validate(vOption);

        $("#submitbtn").click(function () {
            if (formvalidator.form()) {
                //alert("submit");
                    ZP.analysis.init_monitor_analy(this, 'rpassword', 'mbsubmit3', '008');
                document.getElementById('appform').submit();
            }
            else {
                formvalidator.focusInvalid();
                return false;
            }
        });
    });
</script>
    </div>
    <div id="loginfooter">
        <a target="_blank" href="http://www.91jiuma.com/jmApp/jm/MainAction.action">九马首页</a> |
        <a target="_blank" href="http://www.91jiuma.com/jmApp/jm/ProjectAction.action">影视投资</a> |
        <a target="_blank" href="http://www.91jiuma.com/jmApp/projectdelivery.jsp">项目投递</a> |
        <a target="_blank" href="http://www.91jiuma.com/jmApp/shangcheng.jsp">九马商城</a> |
        <a target="_blank" href="http://www.91jiuma.com/jmApp/travel.jsp">九马旅游</a> |
        <a target="_blank" href="http://www.91jiuma.com/jmApp/list.jsp">关于</a> 
    </div>
    <script type="text/javascript" src="/jmApp/js/index_ads.js"></script>
    <script type="text/javascript" src="/jmApp/js/global.js"></script>
    


</body>
</html>
