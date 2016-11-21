<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="circle_progress/css/progress.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="bootstrap-3.3.5-dist/js/jquery.min.js"></script>
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="circle_progress/dist/jquery-asPieProgress.min.js"></script>
   
</head>
<body>
	<!-- <nav class="navbar navbar-default navbar-fixed-top" style="background:#FFF; color:#FFF">
    	<div class="container">
    		<div class="navbar-header" style="margin-top: 10px;margin-bottom: 10px">
               <a class="navbar-brand" href="#" style="padding-top: 0">
                   <img  src="img/91_logo.gif">
               </a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                   <span class="sr-only">切换导航</span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                   <span class="icon-bar"></span>
                </button>
            </div>
            
            <div class="collapse navbar-collapse" id="example-navbar-collapse text-center" style="margin-top: 10px">
	           <ul class="nav navbar-nav navbar-left ">
	            	<li><a href="/jmApp/jm/MainAction.action" style="font-size: 18px">首页</a></li>
	            	<li><a href="/jmApp/jm/ProjectAction.action" style="font-size: 18px">影视投资</a></li>
	            	<li><a href="projectdelivery.jsp" style="font-size: 18px">项目投递</a></li>
	            	<li><a href="projectissue.html" style="font-size: 18px">发行</a></li>
	            	<li><a href="shangcheng.jsp" style="font-size: 18px">九马商城</a></li>
	            	<li><a href="travel.jsp" style="font-size: 18px">九马旅游</a></li>
	            	<li><a href="list.jsp" style="font-size: 18px">关于</a></li>
	            </ul>
	            <ul class="nav navbar-nav navbar-right " >
	            	<li>
	            	  	 <div class="btn-group" role="group" aria-label="..." style="margin-top: 10px;margin-right: 20px">
                            <a href="login.html" class="btn btn-warning" role="button">登陆</a>
                         </div>
	            	</li>

	            	<li>
	            	     <div class="btn-group" role="group" aria-label="..." style="margin-top: 10px">
                            <a href="register.html" class="btn btn-default" role="button">注册</a>
                         </div>
	            	</li>
	            </ul>
	        </div> 
    </nav> -->
    <jsp:include page="header.jsp"></jsp:include>
    <div  style="margin-top: 50px;">
    </div>
     <div style="background: #f5f5f5;overflow: hidden">
       <div  style="background: white;overflow: hidden;margin: 50px 100px 10px 100px">
           <form class="form-horizontal" style="margin-top: 30px;">
			  <div class="form-group">
			    <label for="name" class="col-sm-2 control-label">发起人：</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="name" placeholder="填写发起人的姓名或组织名称">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="email" class="col-sm-2 control-label">邮箱：</label>
			    <div class="col-sm-6">
			      <input type="email" class="form-control" id="email" placeholder="填写邮箱地址">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="phone" class="col-sm-2 control-label">手机号：</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="phone" placeholder="填写11位手机号码">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="money" class="col-sm-2 control-label">计划众筹金额：</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="money" placeholder="希望在平台上筹集的金额">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="project" class="col-sm-2 control-label">项目名称：</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="money" placeholder="填写名称名称，可以影片名称命名，50字以内">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="project_type" class="col-sm-2 control-label">项目类型：</label>
			    <div class="col-sm-6">
			     <select name="project_type">
						<!-- <option value="" class="hidden">请选择</option> -->
						<option value="院线电影">院线电影</option>
						<option value="电视剧">电视剧</option>
						<option value="网络大电影">网络大电影</option>
						<option value="网络剧">网络剧</option>
						<option value="演艺(演唱会)">演艺(演唱会)</option>
						<option value="动漫">动漫</option>
						<option value="游戏">游戏</option>
						<option value="文化会展">文化会展</option>
						<option value="主题酒店(民宿)">主题酒店(民宿)</option>
						<option value="主题餐饮">主题餐饮</option>
						<option value="体育赛事">体育赛事</option>
						<option value="旅游">旅游</option>
						<option value="主题商店">主题商店</option>
						<option value="设计">设计</option>
						<option value="图书出版">图书出版</option>
						<option value="其他">其他</option>
					</select>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="project_marks" class="col-sm-2 control-label">项目简介：</label>
			    <div class="col-sm-6">
			     <textarea name="project_marks" placeholder="填写项目的简介内容，500字以内" style="vertical-align:bottom;resize:none;width:520px;height:155px;"></textarea>

			    </div>
			  </div>
			   <div class="form-group">
			    <label for="submit" class="col-sm-2 control-label"></label>
			    <div class="col-sm-6">
			        <button type="submit" class="btn btn-warning">提交申请</button>
			    </div>
			  </div>
			  
		  </form>
       </div>

     <jsp:include page="tailer.jsp"></jsp:include>
</body>
</html>
