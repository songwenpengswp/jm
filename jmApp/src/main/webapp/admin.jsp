<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" type="text/css"
	href="/jmApp/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/jmApp/datepicker/css/bootstrap-datepicker3.css">
<link rel="stylesheet" type="text/css"
	href="/jmApp/bootstrap-fileinput-master/css/fileinput.min.css"
	charset="utf-8">
<script src="/jmApp/bootstrap-3.3.5-dist/js/jquery.min.js"
	charset="utf-8" type="text/javascript"></script>
<script src="/jmApp/bootstrap-3.3.5-dist/js/bootstrap.min.js"
	charset="utf-8" type="text/javascript"></script>
<script src="/jmApp/datepicker/js/bootstrap-datepicker.js"
	charset="utf-8" type="text/javascript"></script>
<script
	src="/jmApp/datepicker/locales/bootstrap-datepicker.zh-CN.min.js"
	charset="utf-8" type="text/javascript"></script>
<script src="/jmApp/bootstrap-fileinput-master/js/fileinput.min.js"
	charset="utf-8" type="text/javascript"></script>
<script src="/jmApp/bootstrap-fileinput-master/js/locales/zh.js"
	charset="utf-8" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.input-daterange').datepicker({
			language : "zh-CN",
			autoclose : true
		});

	});
</script>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.7.2.min.js" ></script>
	<script type="text/javascript" src="js/jquery-1.7.2.js" ></script>
	<script type="text/javascript">
		var uploadid="";
		var action="";
		var obj;
		var isOk=true;
		var total=0;
		var uped=0;
		var msg="";
		var path="<%=path %>/upload";
		function upload(){
			uploadid=Math.floor(Math.random()*10000+1);
			document.forms["myform"].action=path+"?upid="+uploadid;
			document.forms["myform"].submit();
			total=0;
			uped=0;
			msg="";
			isOk=true;
			ajaxBackState();
		}
		function ajaxBackState(){
			 $.get(path,{upid:uploadid,Time:Math.random()},function(result){
			 	if(result!=null&&result.length>0){
					obj = eval('(' + result + ')');
					if(obj!=null){
						total=obj.totalsize;
						uped=obj.uploadsize;
						msg=obj.errormsg;
						if(obj.state!=0){
	  						isOk=false;
	  					}
					}
				}
				if(total>0){
					updateProgress(uped,total,isOk,msg);
				}
				if(isOk){
		  			ajaxBackState();
		  		}
  			});
		}
		function updateProgress(currentsize,totalsize,state,msg){
			document.getElementById("total").style.visibility="visible";
			var c=document.getElementById("prog");
			var cwidth=0;
			cwidth=(currentsize/totalsize)*100;
			var w=cwidth+"%";
			c.style.width=w;
			document.getElementById("pvalue").innerHTML=w;
			if(!state){
				setTimeout("initProg()",500);
			}
		}
		
		function initProg(){
			alert(msg);
			document.getElementById("total").style.visibility="hidden";
			document.getElementById("pvalue").innerHTML="";
			c.style.width="0%";
		}
		
	</script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top"
		style="background:#FFF; color:#FFF;">
	<div class="container">
		<div class="navbar-header" style="margin-top: 0px;margin-bottom: 10px">
			<a class="navbar-brand" href="/jmApp/jm/AdminMainAction.action"
				style="padding-top: 0"> <img src="/jmApp/img/91_logo.png">
			</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse"
			id="example-navbar-collapse text-center" style="margin-top: 10px">
			<ul class="nav navbar-nav navbar-left ">
				<li><a href="/jmApp/jm/AdminMainAction.action"
					style="font-size: 18px">首页</a></li>
				<li><a href="/jmApp/jm/AdminProjectAction.action"
					style="font-size: 18px">影视众筹</a></li>
				<li><a href="/jmApp/jm/AdminAction.action"
					style="font-size: 18px">项目管理</a></li>
				<!-- <li><a href="projectissue.html" style="font-size: 18px">发行</a></li> -->
				<li><a href="#" style="font-size: 18px">统计分析</a></li>
				<li><a href="#" style="font-size: 18px">发布消息</a></li>

			</ul>

			<ul class="nav navbar-nav navbar-right ">
				<li>
					<div class="btn-group" role="group" aria-label="..."
						style="margin-top: 10px;margin-right: 20px">
						<a href="#" class="btn btn-warning" role="button">你好 管理员</a>
					</div>
				</li>
				<li>
					<div class="btn-group" role="group" aria-label="..."
						style="margin-top: 10px;margin-right: 20px">
						<a href="#" class="btn btn-warning" role="button">添加新项目</a>
					</div>
				<li>
					<div class="btn-group" role="group" aria-label="..."
						style="margin-top: 10px">

						<form method="post" action="/jmApp/jm/outAction.action">
							<button type="submit" class="btn btn-danger"
								style="margin-right: 20px; margin-left: 20px">退出</button>
						</form>
						<!-- <a href="/jmApp/login.jsp" class="btn btn-danger" role="button">退出</a> --> 
					</div>
				</li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container-fluid" style="margin-top:80px">
		
		<div class="row">
			<div class="col-md-3">
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<s:iterator value="delMap">
									<a id="list-group-item-<s:property value='key'/>"
										href="/jmApp/jm/AdminAction.action?delId=<s:property value='key'/>"
										class="list-group-item  <s:property value='key==#request.del.id?"active":"" '/> ">
										<s:property value='value' />
										
									</a>
									
								</s:iterator>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								<div class="list-group">						
									<s:iterator  value="proMap"  status="s">									
										<a id="list-group-item-<s:property value='key'/>"
											href="/jmApp/jm/AdminAction.action?delId=<s:property value='del.id'/>&proId=<s:property value='key'/>"
											class="list-group-item <s:property value='key==#request.pro.id?"active":"" '/>">
											<s:property value='value' />											
										</a>
									</s:iterator>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="col-md-9">
				<div class="panel panel-default">
					<div class="panel-body">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#content"
								role="tab" data-toggle="tab">项目内容</a></li>
							<li role="presentation"><a href="#introduction" role="tab"
								data-toggle="tab">项目介绍</a></li>
							<li role="presentation"><a href="#invertion" role="tab"
								data-toggle="tab">项目支持</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content" style="margin-top: 10px;">
							<div role="tabpanel" class="tab-pane active" id="content">

								<form  action="/jmApp/jm/UpdatePro.action" class="form-horizontal" role="form">
									<div class="form-group">
										<label for="code" class="col-sm-2 control-label">编号</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="code" value="${pro.id}"
												placeholder="项目编号">
										</div>
									</div>
									<div class="form-group">
										<label for="title" class="col-sm-2 control-label">标题</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" id="title" value="${pro.title}"
												placeholder="项目标题">
										</div>
									</div>
									<div class="form-group">
										<label for="sub_title" class="col-sm-2 control-label">副标题</label> 
										<div class="col-sm-10">
											<input type="text" class="form-control" id="sub_title" value="${pro.subtitle}"
												 placeholder="副标题" >
										</div>
									</div>
									<div class="form-group">
										<label for="pic" class="col-sm-2 control-label">项目图片</label>
										<div class="col-sm-10">
											<input value="${pro.picture}" type="file" class="form-control file" id="pic" >
										</div>
									</div>
									<div class="form-group">
										<label for="target_money" class="col-sm-2 control-label">金额</label>
										<div class="col-sm-10">
											<input  value="${pro.target}" type="number" class="form-control" id="target_money"
												placeholder="目标金额">
										</div>
									</div>
									<div class="form-group">
										<label for="percent" class="col-sm-2 control-label">转化率</label>
										<div class="col-sm-10">
											<input type="number" class="form-control" id="percent" value="${pro.converted}" 
												placeholder="年转化率">
										</div>
									</div>
									<div class="form-group">
										<label for="percent" class="col-sm-2 control-label">周期</label>
										<div class="col-sm-10">
											<input type="number" class="form-control" id="cycle" value="${pro.period}"
												placeholder="回报周期">
										</div>
									</div>
									<div class="input-daterange input-group" id="datepicker">
										<div class="form-group">
											<label for="start" class="col-sm-2 control-label">起始日</label>
											<div class="col-sm-10">
												<input type="text" class="input-sm form-control" id="start" value="${pro.start}"
													name="start" />
											</div>
										</div>
										<div class="form-group">
											<label for="end" class="col-sm-2 control-label">结束日</label>
											<div class="col-sm-10">
												<input type="text" class="input-sm form-control" id="end" value="${pro.stop}"
													name="end" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label for="pic2" class="col-sm-2 control-label">轮播图片</label>
										<div class="col-sm-10">
											<input type="file" class="form-control file" id="pic2"
												data-show-upload="false">
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-offset-10 col-md-2">
											<button type="submit" class="btn btn-default">提交</button>
										</div>
									</div>
								</form>

							</div>
							<div role="tabpanel" class="tab-pane" id="introduction">
							  <!--  <form  role="form"> -->
							  
								<form id="myform" name="myform" action="<%=path %>/upload" method="post" enctype="multipart/form-data" target="uploadIfr"  >
									<div class="form-group">
										<label for="main_page" class="col-sm-2 control-label">主页压缩文件</label>
										<div class="col-sm-10">
											<input id="main_page" class="form-control file" name="myfile" type="file" >
										</div>
									</div>
								
									<div class="form-group">
										<label for="safe_page" class="col-sm-2 control-label">安全页压缩文件</label>
										<div class="col-sm-10">
											<input id="safe_page" name="myfile" type="file" class="form-control file" >
										</div>
									</div>
									
									<div class="form-group">
										<label for="qr_pic" class="col-sm-2 control-label">二维码图片</label>
										<div class="col-sm-10">
											<input type="file" class="form-control file" id="qr_pic">
										</div>
									</div>
							
									<div class="form-group">
										<div class="col-md-offset-10 col-md-2">
											<button  class="btn btn-default">上传</button>
										</div>
									</div>
								</form>
								<!-- <div class="form-group">
										<div class="col-md-offset-10 col-md-2">
											<button  class="btn btn-default">保存</button>
										</div>
									</div></form> -->
							</div>
							<div role="tabpanel" class="tab-pane" id="invertion">

								<div class="btn-group pull-right" role="group">
									<div class="btn-group" role="group">
										<button type="button" class="btn btn-default"
											data-toggle="modal" data-target="#studentModal">添加</button>
									</div>
									<div class="btn-group" role="group">
										<button type="button" class="btn btn-default"
											data-toggle="modal" data-target="#studentModal">修改</button>
									</div>
									<div id="btn_std_del" class="btn-group" role="group">
										<button type="button" class="btn btn-default">删除</button>
									</div>
								</div>

								<table class="table">
									<thead>
										<tr>
											<th>每份单价</th>
											<th>限额</th>
											<th>描述</th>
										</tr>
									</thead>
									<tbody>
										<tr class="active">
											<td>10000</td>
											<td>10</td>
											<td>1.aaaaaaa 2.bbbbbbb 3.ccccccc 4.ddddddd</td>
										</tr>
										<tr>
											<td>5000</td>
											<td>50</td>
											<td>1.aaaaaaa 2.bbbbbbb 3.ccccccc 4.ddddddd</td>

										</tr>
										<tr>
											<td>1000</td>
											<td>无限额</td>
											<td>1.aaaaaaa 2.bbbbbbb 3.ccccccc 4.ddddddd</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
</body>
<script type="text/javascript">
	$('#pic')
			.fileinput(
					{
						language : 'zh',
						showUpload : false,
						allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
						initialPreview : [ "<img src='img/z1.jpg' width='500px' class='file-preview-image' alt='Desert' title='Desert'>" ]
					});
	$('#pic2').fileinput({
		language : 'zh',
		showUpload : false,
		allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
	});
	$('#main_page').fileinput({
		language : 'zh',
		showUpload : false,
		allowedFileExtensions : [ 'zip' ]
	});
	$('#safe_page').fileinput({
		language : 'zh',
		showUpload : false,
		allowedFileExtensions : [ 'zip' ]
	});
	$('#qr_pic').fileinput({
		language : 'zh',
		showUpload : false,
		allowedFileExtensions : [ 'jpg', 'png', 'gif' ],
	});
</script>
</html>