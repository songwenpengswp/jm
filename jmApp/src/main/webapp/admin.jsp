<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="datepicker/css/bootstrap-datepicker3.css">
	<link rel="stylesheet" type="text/css" href="bootstrap-fileinput-master/css/fileinput.min.css">
	<script src="bootstrap-3.3.5-dist/js/jquery.min.js"></script>
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <script src="datepicker/js/bootstrap-datepicker.js"></script>
    <script src="datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
    <script src="bootstrap-fileinput-master/js/fileinput.min.js"></script>
    <script src="bootstrap-fileinput-master/js/locales/zh.js"></script>
    <script type="text/javascript">
    	 $(document).ready(function () {
    	 	$('.input-daterange').datepicker({
			    language: "zh-CN",
			    autoclose: true
			});

    	 });
    </script>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top"
	style="background:#FFF; color:#FFF;">
     <div class="container">
		<div class="navbar-header"
			style="margin-top: 0px;margin-bottom: 10px">
			<a class="navbar-brand" href="/jmApp/jm/AdminMainAction.action" style="padding-top: 0"> <img
				src="/jmApp/img/91_logo.png">
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
				<li><a href="/jmApp/jm/AdminProjectAction.action" style="font-size: 18px">影视众筹</a></li>
				<li><a href="/jmApp/admin.jsp"
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
						style="margin-top: 10px">
						
							<form method="post" action="/jmApp/jm/outAction.action">
		                      <button type="submit" class="btn btn-danger" style="margin-right: 20px; margin-left: 20px">退出
		                      </button>
		                    </form>
								<!-- <a href="/jmApp/login.jsp" class="btn btn-danger" role="button">退出</a> -->
							

					</div>
				</li>
			</ul>
		</div>
	</div>
</nav>
    <div class="container-fluid" style="margin-top:100px">
    	<div class="row">
    		<div class="col-md-3">
    			<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingOne">
				      <h4 class="panel-title">
				        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				          杭州玖之马影视娱乐有限公司
				        </a>
				      </h4>
				    </div>
				    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
				      <div class="panel-body">
				        <div class="list-group">
						  <a href="#" class="list-group-item active">
						    《贴身女保镖》
						  </a>
						  <a href="#" class="list-group-item">《贴身女保镖(第二部)》</a>
						</div>
				      </div>
				    </div>
				  </div>
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingTwo">
				      <h4 class="panel-title">
				        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				          恒大影视投资股份有限公司
				        </a>
				      </h4>
				    </div>
				    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
				      <div class="panel-body">
				        <div class="list-group">
						  <a href="#" class="list-group-item active">
						    《第一次亲密接触》
						  </a>
						  <a href="#" class="list-group-item">《我们的约会》</a>
						  <a href="#" class="list-group-item">《新龙门客栈》</a>
						  <a href="#" class="list-group-item">《天天向上》</a>
						</div>
				      </div>
				    </div>
				  </div>
				  <div class="panel panel-default">
				    <div class="panel-heading" role="tab" id="headingThree">
				      <h4 class="panel-title">
				        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				          长春电影制片厂
				        </a>
				      </h4>
				    </div>
				    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
				      <div class="panel-body">
				        <div class="list-group">
						  <a href="#" class="list-group-item active">
						    《铜雀台》
						  </a>
						  <a href="#" class="list-group-item">《长征之歌》</a>
						  <a href="#" class="list-group-item">《冰山下的来客》</a>
						  <a href="#" class="list-group-item">《五朵金花》</a>
						  <a href="#" class="list-group-item">《大城小爱》</a>
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
					  <li role="presentation" class="active"><a href="#content" role="tab" data-toggle="tab">项目内容</a></li>
					  <li role="presentation"><a href="#introduction" role="tab" data-toggle="tab">项目介绍</a></li>
					  <li role="presentation"><a href="#invertion" role="tab" data-toggle="tab">项目支持</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content" style="margin-top: 10px;">
					  <div role="tabpanel" class="tab-pane active" id="content">
					  	
					  	<form class="form-horizontal" role="form">
						        <div class="form-group">
								    <label for="code" class="col-sm-2 control-label">编号</label>
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="code" placeholder="项目编号">
								    </div>
								</div>
							    <div class="form-group">
							    	<label for="title" class="col-sm-2 control-label">标题</label>
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="title" placeholder="项目标题">
								    </div>
							    </div>
							    <div class="form-group">
							    	<label for="sub_title" class="col-sm-2 control-label">副标题</label>
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="sub_title" placeholder="副标题">
								    </div>
							    </div>
							    <div class="form-group">
							    	<label for="pic" class="col-sm-2 control-label">项目图片</label>
								    <div class="col-sm-10">
								      <input type="file" class="form-control file" id="pic">
								    </div>
							    </div>
							    <div class="form-group">
							    	<label for="target_money" class="col-sm-2 control-label">金额</label>
								    <div class="col-sm-10">
								      <input type="number" class="form-control" id="target_money" placeholder="目标金额">
								    </div>
							    </div>
							    <div class="form-group">
							    	<label for="percent" class="col-sm-2 control-label">转化率</label>
								    <div class="col-sm-10">
								      <input type="number" class="form-control" id="percent" placeholder="年转化率">
								    </div>
							    </div>
							    <div class="form-group">
							    	<label for="percent" class="col-sm-2 control-label">周期</label>
								    <div class="col-sm-10">
								      <input type="number" class="form-control" id="percent" placeholder="回报周期">
								    </div>
							    </div>
							    <div class="input-daterange input-group" id="datepicker">
							        <div class="form-group">
							        	<label for="start" class="col-sm-2 control-label">起始日</label>
									    <div class="col-sm-10">
									      <input type="text" class="input-sm form-control" id="start" name="start" />
									    </div>
							        </div>
							        <div class="form-group">
							        	<label for="end" class="col-sm-2 control-label">结束日</label>
									    <div class="col-sm-10">
									      <input type="text" class="input-sm form-control" id="end" name="end" />
									    </div>
							        </div>
							       
							    </div>
							    <div class="form-group">
							        	<label for="pic2" class="col-sm-2 control-label">轮播图片</label>
									    <div class="col-sm-10">
									      <input type="file" class="form-control file" id="pic2" data-show-upload="false">
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
					  	   <form class="form-horizontal" role="form">
					  	       <div class="form-group">
							    	<label for="main_page" class="col-sm-2 control-label">主页压缩文件</label>
								    <div class="col-sm-10">
								      <input type="file" class="form-control file" id="main_page">
								    </div>
							    </div>
							    <div class="form-group">
							    	<label for="safe_page" class="col-sm-2 control-label">安全页压缩文件</label>
								    <div class="col-sm-10">
								      <input type="file" class="form-control file" id="safe_page">
								    </div>
							    </div>
							    <div class="form-group">
							    	<label for="qr_pic" class="col-sm-2 control-label">二维码图片</label>
								    <div class="col-sm-10">
								      <input type="file" class="form-control file" id="qr_pic">
								    </div>
							    </div>
                                 <div class="form-group">
							    	<label for="type" class="col-sm-2 control-label">项目类型</label>
							    	<div class="radio-inline">
									  <label>
									    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
									    财富项目
									  </label>
									</div>
									<div class="radio-inline">
									  <label>
									    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
									    梦想项目
									  </label>
									</div>
							    </div>
							    <div class="form-group">
								    <div class="col-md-offset-10 col-md-2">
								      <button type="submit" class="btn btn-default">提交</button>
								    </div>
								</div>
					  	   </form>
					  </div>
					  <div role="tabpanel" class="tab-pane" id="invertion">
                           
                           <div class="btn-group pull-right" role="group">
                             <div class="btn-group" role="group">
                               <button type="button" class="btn btn-default" data-toggle="modal" data-target="#studentModal">添加</button>
                             </div>
                             <div class="btn-group" role="group">
                               <button type="button" class="btn btn-default" data-toggle="modal" data-target="#studentModal">修改</button>
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
		                           <td>
		                              
		                                    1.aaaaaaa
		                                    2.bbbbbbb
		                                    3.ccccccc
		                                    4.ddddddd
		                               
		                            </td>
		                         </tr>
		                         <tr>
		                           <td>5000</td>
		                           <td>50</td>
		                           <td>
		                                    1.aaaaaaa
		                                    2.bbbbbbb
		                                    3.ccccccc
		                                    4.ddddddd
		                           </td>
		                          
		                         </tr>
		                         <tr>
		                           <td>1000</td>
		                           <td>无限额</td>
		                           <td>
		                               
		                                    1.aaaaaaa
		                                    2.bbbbbbb
		                                    3.ccccccc
		                                    4.ddddddd
		                              
		                           </td>
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
	$('#pic').fileinput({
        language: 'zh',
        showUpload:false,
        allowedFileExtensions : ['jpg', 'png','gif'],
        initialPreview:[
             "<img src='img/z1.jpg' width='500px' class='file-preview-image' alt='Desert' title='Desert'>"
        ]
    });
    $('#pic2').fileinput({
        language: 'zh',
        showUpload:false,
        allowedFileExtensions : ['jpg', 'png','gif'],
    });
    $('#main_page').fileinput({
        language: 'zh',
        showUpload:false,
        allowedFileExtensions : ['zip']
    });
    $('#safe_page').fileinput({
        language: 'zh',
        showUpload:false,
        allowedFileExtensions : ['zip']
    }); 
    $('#qr_pic').fileinput({
        language: 'zh',
        showUpload:false,
        allowedFileExtensions : ['jpg', 'png','gif'],
    });
</script>
</html>