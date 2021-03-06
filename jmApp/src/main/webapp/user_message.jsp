<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>电影众筹项目_电影投资项目列表 - 91玖马网</title>
<link rel="stylesheet" type="text/css"
	href="/jmApp/bootstrap-3.3.5-dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/jmApp/bootstrap-3.3.5-dist/css/buttons.css">
<link rel="stylesheet" href="/jmApp/circle_progress/css/progress.css">
<link rel="stylesheet" href="/jmApp/css/style.css">
<link rel="stylesheet"
	href="/jmApp/datepicker/css/bootstrap-datepicker3.css">
<script src="/jmApp/bootstrap-3.3.5-dist/js/jquery.min.js"></script>
<script src="/jmApp/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<script src="/jmApp/datepicker/js/bootstrap-datepicker.js"></script>
<script
	src="/jmApp/datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<script src="/jmApp/jquery-uploader/ajaxfileupload.js"></script>
<script src="/jmApp/cityselect/jquery.cityselect.js"></script>
<script>
	$('.datepicker').datepicker({
		language : 'zh-CN',
		autoclose : true,
		todayHighlight : true
	});
	function upload() {

		$
				.ajaxFileUpload({
					url : '/jmApp/jm/FileUpload.action', //url自己写   
					secureuri : false, //这个是啥没啥用  
					type : 'post',
					fileElementId : 'image',//file标签的id    
					dataType : 'json',//返回数据的类型    
					//data:{name:'logan'},//一同上传的数据    
					success : function(data, status) {

						if (data.imageUrl) {

							$('#user_img').attr('src',
									data.imageUrl + "?tempid=" + Math.random());
							$('#image')
									.replaceWith(
											'<input type="file" id="image" name="image" style="display:none" onChange="upload()"/>');

						} else {
							//alert(data.msg);
							//window.location.href='supplyDataReport';  
						}

					}/*,   
														            error: function (data, status, e) {   
														                alert(e);   
														            }*/
				});

	};
	function initSex() {
		var sex = ${user.sex};
		if (sex != null) {
			if (sex == 0) {
				$('#fsex').click();
			} else {
				$('#msex').click();
			}
		}
	}
	$(document).ready(function() {
		//点击打开文件选择器    
		$('#upload_btn').on('click', function() {
			//选择文件之后执行上传    
			$("#image").click();
		});

		$('#info_btn').click(function(e) {

			$.ajax({
				url : '/jmApp/jm/SaveInfo.action',
				type : 'post',
				dataType : 'json',
				data : $("#info_frm").serialize(),
				beforeSend : function(e) {
					$('#info_btn').attr('disabled', 'disabled');
				},
				success : function(e) {
					$('#info_btn').removeAttr('disabled');
				}
			});
		});

		$('#address_btn').click(function(e) {

			$.ajax({
				url : '/jmApp/jm/SaveAddess.action',
				type : 'post',
				dataType : 'json',
				data : $("#address_frm").serialize(),
				beforeSend : function(e) {
					$('#address_btn').attr('disabled', 'disabled');
				},
				success : function(e) {
					$('#address_btn').removeAttr('disabled');
				}
			});
		});

		initSex();

		$("#city_select").citySelect({
			prov : "${user.province==null?'浙江':user.province}",
			city : "${user.city==null?'杭州':user.city}"
		});
	});
</script>
<script type="text/javascript">
	function checkForm() {

		if (window.confirm("Are you sure you want to sumbit this form?")) {

			return true;

		}

		return false;

	}
</script>



</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div style="background: #f5f5f5">
		<div style="background: #f5f5f5;overflow: hidden;">
			<div class="container"
				style="background: #fff;width: 90%;margin-top: 100px;margin-bottom: 20px;">
				<div class="row">
					<div class="col-md-2"
						style="border-right: solid 2px #e9e9e9;font-size: 18px; ">
						<ul class="nav nav-pills nav-stacked" role="tablist"
							style="text-align: center;">
							<li role="presentation" style=""><a
								href="#item" aria-controls="item" role="tab" data-toggle="tab"><span
									 aria-hidden="true"
									style="margin-right: 10px;"></span>我的项目</a></li>
							<li id="x" name="x" role="presentation"><a  href="#account"
								aria-controls="account" role="tab" data-toggle="tab"><span
									 aria-hidden="true"
									style="margin-right: 10px;"></span>账户管理</a></li>
							<li role="presentation"><a href="#order"
								aria-controls="order" role="tab" data-toggle="tab"><span
									 aria-hidden="true"
									style="margin-right: 10px;"></span>订单管理</a></li>
							<li role="presentation"><a href="#persion"
								aria-controls="persion" role="tab" data-toggle="tab"><span
									 aria-hidden="true"
									style="margin-right: 10px;"></span>个人设置</a></li>
							<li role="presentation"  class="active"><a href="#save" aria-controls="save"
								role="tab" data-toggle="tab"><span
									 aria-hidden="true"
									style="margin-right: 10px;"></span>消息</a></li>

						</ul>
					</div>
					<div class="tab-content col-md-10">
						<div role="tabpanel" class="tab-pane " id="item">
							<div class="row">
								<%--  <div
									style="background: #f5f5f5;border: solid 1px #e9e9e9;margin-top: 20px;float: left;width: 45%;text-align: center;margin-left: 20px;">
									<h5 class="text-muted" style="margin-top: 30px;">
										财富项目：累计投资${totalSumByType[0][0] }笔<span
											style="margin-left: 30px;">累计投资:${totalSum[0][1] }(元)</span>
									</h5>
									<h5 class="text-muted"
										style="margin-top: 30px;margin-bottom: 20px;">
										项目：累计投资${totalSumByType[1][0]+totalSumByType[0][0]}笔<span
											style="margin-left: 30px;">累计投资:${totalSum[1][1]+totalSum[0][1] }(元)</span>
									</h5>
								</div>  --%>
								<div class=""
									style="background: #f5f5f5;border: solid 1px #e9e9e9;margin-top: 20px;float: right;width: 45%;text-align: center;margin-right: 300px;">
									<h5 class="text-muted"
										style="margin-top: 30px;margin-bottom: 20px;">
										项目：累计投资${totalSumByType[1][0]+totalSumByType[0][0]}笔<span
											style="margin-left: 30px;">累计投资:${totalSum[1][1]+totalSum[0][1] }(元)</span>
									</h5>

									<h5 class="text-muted" style="margin-top: 30px;">
										（总计）待结算的项目：${totalSumByEnd[0][0]}笔<span
											style="margin-left: 30px;">待收本金:${totalSumByEnd[0][1]}(元)</span>
									</h5>
									<h5 class="text-muted"
										style="margin-top: 30px;margin-bottom: 20px;">
										（总计）已结算的项目：${totalSumByEnd[1][0]}笔<span
											style="margin-left: 30px;">累计收益:${totalSumByEnd[1][1]}(元)</span>
									</h5>
								</div>
							</div>
							<div style="margin-top: 20px;">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#checkout"
										aria-controls="checkout" role="tab" data-toggle="tab"
										style="font-size: 15px">已结账</a></li>
									<li role="presentation"><a href="#nocheckout"
										aria-controls="nocheckout" role="tab" data-toggle="tab"
										style="font-size: 15px">未结账</a></li>
								</ul>
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="checkout"
										style="margin: 20px;">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th style="text-align: center;">项目名称</th>
													<th style="text-align: center;">预期年化</th>
													<th style="text-align: center;">投资金额</th>
													<th style="text-align: center;">预期收益</th>
													<th style="text-align: center;">购买日期</th>
													<th style="text-align: center;">回报日期</th>
													<th style="text-align: center;">状态</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${endOrderList}" var="order">
													<tr>
														<td>${order.project.title }</td>
														<td>${order.project.converted}%</td>
														<td>${order.investment }</td>
														<td>${order.income}</td>
														<td>${order.formatBuyDate}</td>
														<td>${order.project.formatReturn}</td>
														<td>${order.statusName}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div role="tabpanel" class="tab-pane" id="nocheckout"
										style="margin: 20px;">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th style="text-align: center;">项目名称</th>
													<th style="text-align: center;">预期年化</th>
													<th style="text-align: center;">投资金额</th>
													<th style="text-align: center;">预期收益</th>
													<th style="text-align: center;">购买日期</th>
													<th style="text-align: center;">回报日期</th>
													<th style="text-align: center;">状态</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${inOrderList}" var="order">
													<tr>
														<td>${order.project.title }</td>
														<td>${order.project.converted}%</td>
														<td>${order.investment }</td>
														<td>${order.income}</td>
														<td>${order.formatBuyDate}</td>
														<td>${order.project.formatReturn}</td>
														<td>${order.statusName}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="account">
							<div style="margin-top: 20px;">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#fund"
										aria-controls="fund" role="tab" data-toggle="tab"
										style="font-size: 15px">资金账户</a></li>
									<li role="presentation"><a href="#bankcard"
										aria-controls="bankcard" role="tab" data-toggle="tab"
										style="font-size: 15px">银行卡</a></li>
								</ul>
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="fund"
										style="margin: 20px;">
										<div style="border: solid 1px #e9e9e9">
											<div class="row">
												<div class="col-md-3 text-muted"
													style="border-right: solid 2px #e9e9e9;margin-left: 20px;margin-top: 10px;">
													<h4>
														可用余额: <span style="margin-left: 10px;">￥0</span>
													</h4>
													<h4 style="margin-top: 20px;">
														待收本金: <span style="margin-left: 10px;"> ￥0</span>
													</h4>
													<h4 style="margin-top: 20px;">
														提现冻结:<span style="margin-left: 10px;"> ￥0</span>
													</h4>
													<h4 style="margin-top: 20px;">
														红包余额:<span style="margin-left: 10px;"> ￥100</span>
													</h4>
												</div>
												<div class="col-md-4 text-muted"
													style="border-right: solid 2px #e9e9e9;margin-top: 10px;">
													<h3>累计投资</h3>
													<h4>￥0</h4>
													<h4 style="margin-top: 20px;">&nbsp</h4>
													<h4 style="margin-top: 20px;">&nbsp</h4>
												</div>
												<div class="col-md-4 text-muted" style="margin-top: 10px;">
													<h3>累计收益</h3>
													<h4>￥0</h4>
													<h4 style="margin-top: 20px;">&nbsp</h4>
													<h4 style="margin-top: 20px;">&nbsp</h4>
												</div>
											</div>
											<div class="row" style="margin: 20px;">
												<div class="col-md-9">
													<h3>
														账户总资产：<span> <font color="#f17a00"> ￥50</font>
														</span>
													</h3>
												</div>
												<div class="col-md-3">
													<button type="button" class="btn btn-warning"
														style="margin-top: 15px;">充值</button>
													<button type="button" class="btn btn-warning"
														style="margin-left: 60px;margin-top: 15px">提现</button>
												</div>
											</div>
										</div>
										<div class="row" style="margin-top: 50px;">
											<h4 style="margin-left: 20px;">交易明细</h4>
										</div>
										<div>
											<form class="form-inline">
												<div class="form-group">
													<label class="text-muted" for="start">记录日期：</label> <input
														type="text" class="form-control" id="start">
												</div>
												<div class="form-group"
													style="margin-left: 10px;margin-right: 10px;">
													<label class="text-muted" for="end">到&nbsp&nbsp</label> <input
														type="text" class="form-control" id="end">
												</div>
												<div class="form-group">
													<label class="text-muted" for="type">类型&nbsp&nbsp</label> <select
														class="form-control" id="type">
														<option>全部</option>
														<option>充值</option>
														<option>钱包转出</option>
														<option>转让手续费</option>
														<option>投资</option>
														<option>提现</option>
														<option>钱包转入</option>
														<option>活动奖励</option>
														<option>转让卖出</option>
														<option>归还本金</option>
														<option>邀请奖励</option>
														<option>转让买进</option>
														<option>支付利息</option>
													</select>
												</div>
												<button type="submit" class="btn btn-warning"
													style="margin-left: 60px;">搜索</button>
											</form>
										</div>
										<div style="margin-top: 20px;">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th style="text-align: center;">类型/备注信息</th>
														<th style="text-align: center;">金额</th>
														<th style="text-align: center;">可用余额</th>
														<th style="text-align: center;">冻结金额</th>
														<th style="text-align: center;">时间</th>
													</tr>
												</thead>
											</table>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="bankcard"
										style="margin: 20px;">
										<div class="row" style="border: solid 1px #e9e9e9;">
											<div class="col-md-7" style="margin-top: 60px;">
												<a href=""
													class="button button-glow button-rounded button-raised button-primary">
													<i class="glyphicon glyphicon-plus"></i>添加银行卡
												</a>
											</div>
											<div class="col-md-4"
												style="border: solid 1px #f17a00;margin-top: 60px;margin-bottom: 60px;">
												<img src="/jmApp/img/bank-tip.png" alt="" />
												<p>
													&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp最多可以添加1张银行卡(暂不支持信用卡)成功绑定一张银行卡即为完成实名认证
												</p>
											</div>
										</div>
										<div class="row">
											<ul class="wp-form-recharge" style="">
												<li class="list-online-bank"><label>支持添加银行：</label>
													<dl>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/ICBC_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/BOC_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/CCB_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/ABC_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/CMB_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/GDB_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/CMBC_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/CIB_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/yz.jpg) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/hx.jpg) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/CITIC_OUT.gif) no-repeat center center;"></div>
														</dd>
														<!-- <dd>
											<div class="backbox" style="background: url(/data/bank/pf.jpg) no-repeat center center;"></div>
										</dd> -->
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/SPABANK_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/COMM_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/CEB_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/HZCB_OUT.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/zs_bank.png) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/04031000.gif) no-repeat center center;"></div>
														</dd>
														<dd>
															<div class="backbox"
																style="background: url(/jmApp/img/04012900.gif) no-repeat center center;"></div>
														</dd>
													</dl></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="order">
							<div style="margin-top: 20px;">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a
										href="#all-orders" aria-controls="all-orders" role="tab"
										data-toggle="tab" style="font-size: 15px">所有订单</a></li>
									<li role="presentation"><a href="#no-verified-orders"
										aria-controls="no-verified-orders" role="tab"
										data-toggle="tab" style="font-size: 15px">待确认</a></li>
									<li role="presentation"><a href="#verified-orders"
										aria-controls="verified-orders" role="tab" data-toggle="tab"
										style="font-size: 15px">已确认</a></li>
									<li role="presentation"><a href="#finish-orders"
										aria-controls="finish-orders" role="tab" data-toggle="tab"
										style="font-size: 15px">已完成</a></li>
								</ul>
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="all-orders"
										style="margin: 20px;">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th style="text-align: center;">订单来源</th>
													<th style="text-align: center;">总价</th>
													<th style="text-align: center;">当前状态</th>
													<th style="text-align: center;">操作</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${allOrderList}" var="order">
													<tr>
														<td>${order.project.title }</td>
														<td>${order.investment }</td>
														<td>${order.statusName}</td>
														<td></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div role="tabpanel" class="tab-pane" id="no-verified-orders"
										style="margin: 20px;">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th style="text-align: center;">订单来源</th>
													<th style="text-align: center;">总价</th>
													<th style="text-align: center;">当前状态</th>
													<th style="text-align: center;">操作</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${orderMap[4]}" var="order">
													<tr>
														<td>${order.project.title }</td>
														<td>${order.investment }</td>
														<td>${order.statusName}</td>
														<td></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div role="tabpanel" class="tab-pane" id="verified-orders"
										style="margin: 20px;">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th style="text-align: center;">订单来源</th>
													<th style="text-align: center;">总价</th>
													<th style="text-align: center;">当前状态</th>
													<th style="text-align: center;">操作</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${orderMap[5]}" var="order">
													<tr>
														<td>${order.project.title }</td>
														<td>${order.investment }</td>
														<td>${order.statusName}</td>
														<td></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
									<div role="tabpanel" class="tab-pane" id="finish-orders"
										style="margin: 20px;">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th style="text-align: center;">订单来源</th>
													<th style="text-align: center;">总价</th>
													<th style="text-align: center;">当前状态</th>
													<th style="text-align: center;">操作</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${orderMap[2]}" var="order">
													<tr>
														<td>${order.project.title }</td>
														<td>${order.investment }</td>
														<td>${order.statusName}</td>
														<td></td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane" id="persion">
							<div style="margin-top: 20px;">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active"><a href="#data"
										aria-controls="data" role="tab" data-toggle="tab"
										style="font-size: 15px">个人资料</a></li>
									<li role="presentation"><a href="#address"
										aria-controls="address" role="tab" data-toggle="tab"
										style="font-size: 15px">地址</a></li>
									<li role="presentation"><a href="#safe"
										aria-controls="safe" role="tab" data-toggle="tab"
										style="font-size: 15px">安全中心</a></li>
								</ul>
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="data"
										style="margin: 20px;">
										
											<div class="row">
												<div class="col-md-2">
													<div class="thumbnail">
													  <c:choose>
													     <c:when test="${user.picture==null }">
													         <img id="user_img" src="/jmApp/img/pic.png">
													     </c:when>
													     <c:otherwise>
													         <img id="user_img" src="${user.picture}">
													     </c:otherwise>
													  </c:choose>
														
														<div class="caption" style="text-align: center;">
															<p>
																<input type="file" id="image" name="image"
																	style="display:none" onChange="upload()"/>
																<button id="upload_btn" class="btn btn-default">上传照片</button>
															</p>
														</div>
													</div>
												</div>
											<div class="col-md-5" style="text-align: center;">
												  <form id="info_frm" class="form-horizontal">
													<div class="form-group">
														<label for="name" class="col-sm-3 control-label">别名：</label>
														<div class="col-sm-7">
															<input name="name" type="text" class="form-control" id="name" value="${user.name}">
														</div>
													</div>
													<div class="form-group">
														<label for="real-name" class="col-sm-3 control-label">实名：</label>
														<div class="col-sm-7" id="real-name">
															<a class="form-control" href="#" id="real-name">
																未实名（点击完成实名）</a>
														</div>
													</div>
													<div class="form-group">
														<label for="sex" class="col-sm-3 control-label">性别：</label>
														<div class="col-sm-7" id="sex">
														   
															<label class="radio-inline"> <input type="radio"
																name="sex" id="msex"
																value="1" checked> 男
															</label> <label class="radio-inline"> <input type="radio"
																name="sex" id="fsex"
																value="0"> 女
															</label>
														</div>
													</div>
													<button id="info_btn" type="submit"   class="btn btn-warning"
													 onclick="function a(){document.getElementById('info_frm').submit();}setTimeout(a,3000);">保存更新</button>
													
												 </form>
												</div>
										</div>

									</div>
									<div role="tabpanel" class="tab-pane" id="address"
										style="margin: 20px;">
										<%-- <h4>已保存的收件人地址：</h4>
										<div>
								      	收件人姓名：${user.name } 手机号：${user.consignTel } 邮政编号：${user.postcode }  收件人地址：${user.address }  	邮箱：${user.postcode }
										</div> --%>
										<p><h4>收货人地址</h4></p>
										<form id="address_frm" class="form-horizontal">
											<div id="city_select" class="form-group">
												<label for="local" class="col-sm-2 control-label">所在地:</label>
												<div class="col-sm-2">
													<select name="userAddress.province"
														class="form-control prov">

													</select>
												</div>
												<div class="col-sm-2">
													<select name="userAddress.city" class="form-control city"
														disabled="disabled">

													</select>
												</div>
											</div>
											<div class="form-group">
												<label for="post-code" class="col-sm-2 control-label">邮政编码:</label>
												<div class="col-sm-4">
													<input name="userAddress.postcode" type="text"
														class="form-control" id="post-code"
														value="${user.postcode }">
												</div>
											</div>
											<div class="form-group">
												<label for="get-name" class="col-sm-2 control-label">收货人姓名:</label>
												<div class="col-sm-4">
													<input name="userAddress.consignee" type="text"
														class="form-control" id="get-name"
														value="${user.consignee }">
												</div>
											</div>
											<div class="form-group">
												<label for="tel" class="col-sm-2 control-label">手机号码:</label>
												<div class="col-sm-4">
													<input name="userAddress.consignTel" type="text"
														class="form-control" id="tel" value="${user.consignTel }">
												</div>
											</div>
											<div class="form-group">
												<label for="tel" class="col-sm-2 control-label">详细地址:</label>
												<div class="col-sm-4">
													<input name="userAddress.address" type="text"
														class="form-control" id="tel" value="${user.address }">
												</div>
											</div>
											<div class="col-sm-6" style="text-align: center;">
												<button id="address_btn" type="button"
													class="btn btn-warning"
												>保存更新</button>
											</div>
										</form>
									</div>
									<div role="tabpanel" class="tab-pane" id="safe"
										style="margin: 20px;">
										<div class="row">
											<div class="media col-md-6" style="margin: 30px;">
												<div class="media-left">
													<img class="media-object" src="/jmApp/img/zheng.png">
												</div>
												<div class="media-body">
													<h5 class="media-heading">
														<b>实名认证</b>
													</h5>
													<h5 style="margin-top: 30px;">
														未认证 &nbsp&nbsp<a href="#">马上认证</a>
													</h5>
												</div>
												<p class="text-muted" style="margin-top: 30px;">实名认证后可进行资金回报类项目投资</p>
											</div>
											<div class="media col-md-4" style="margin: 30px;">
												<div class="media-left">
													<img class="media-object" src="/jmApp/img/bao.png">
												</div>
												<div class="media-body">
													<h5 class="media-heading">
														<b>密码保管</b>
													</h5>
													<h5 style="margin-top: 20px;">
														登陆密码 &nbsp&nbsp<a href="#">修改</a>
													</h5>
													<h5 style="margin-top: 20px;">
														交易密码 &nbsp&nbsp<a href="#">修改</a> &nbsp&nbsp <a href="#">忘记</a>
													</h5>
												</div>
												<p class="text-muted" style="margin-top: 30px;">为了您的账号安全，登录密码与交易密码不能设置成一致</p>
											</div>
										</div>
										<div class="row">
											<div class="media col-md-6" style="margin: 30px;">
												<div class="media-left">
													<img class="media-object" src="/jmApp/img/mail.png">
												</div>
												<div class="media-body">
													<h5 class="media-heading">
														<b>邮箱绑定</b>
													</h5>
													<h5 style="margin-top: 20px;">
														<input type="text" class="form-control"
															style="width: 150px;" placeholder="请输入要绑定的邮箱">
													</h5>
													<a href="#">发送邮箱验证邮件</a>
												</div>
												<p class="text-muted" style="margin-top: 30px;">绑定邮箱是您获得虚拟回报、找回密码的重要途径，请尽快绑定</p>
											</div>
											<div class="media col-md-4" style="margin: 30px;">
												<div class="media-left">
													<img class="media-object" src="/jmApp/img/phone.png">
												</div>
												<div class="media-body">
													<h5 class="media-heading">
														<b>手机绑定</b>
													</h5>
													<h5 style="margin-top: 30px;">
														<span class="glyphicon glyphicon-ok"></span> &nbsp已绑定
													</h5>
												</div>
												<p class="text-muted" style="margin-top: 30px;">为了您的账号安全，如需更改绑定手机号请联系客服</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div role="tabpanel" class="tab-pane"   id="save">
                          <div class="tab-content" >
								<div  role="tabpanel" class="tab-pane active" id="jm-coin"
									style="background: #f5f5f5;margin-left:20px">
									<c:forEach items="${um}" var="um">
										<div style="background: #fff; font-size:18px;text-decoration:none;border-bottom:1px dashed #ccc;">
										 	<a href="/jmApp/jm/UserMessageAction.action?messageId=${um.message.id}" target="_blank"
												;style="">
												${um.message.title}</a>
												
										</div>
										<p style="background: #fff; white-space:nowrap;
                                      text-overflow:ellipsis; overflow: hidden;">
                                      &nbsp;&nbsp;&nbsp;&nbsp;${um.message.content}</p>

									</c:forEach>
								</div>
							</div>
						</div>
						
						
						<div role="tabpanel" class="tab-pane active"  >

							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" 
									style="margin: 20px;">
										<%-- 	<c:forEach items="${um}" var="um"> --%>
										<div><h3>${message.title}</h3>
										${message.content}<br>
										</div>
									<%-- </c:forEach> --%>
									</div>
								<div role="tabpanel" class="tab-pane" id="red-packet"
									style="margin: 20px;"></div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="tailer.jsp"></jsp:include>


</body>
<script>
	var nowTemp = new Date();
	var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp
			.getDate(), 0, 0, 0, 0);

	var checkin = $('#start').datepicker({
		onRender : function(date) {
			return date.valueOf() < now.valueOf() ? 'disabled' : '';
		}
	}).on('changeDate', function(ev) {
		if (ev.date.valueOf() > checkout.date.valueOf()) {
			var newDate = new Date(ev.date)
			newDate.setDate(newDate.getDate() + 1);
			checkout.setValue(newDate);
		}
		checkin.hide();
		$('#end')[0].focus();
	}).data('datepicker');
	var checkout = $('#end').datepicker({
		onRender : function(date) {
			return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
		}
	}).on('changeDate', function(ev) {
		checkout.hide();
	}).data('datepicker');
</script>
</html>