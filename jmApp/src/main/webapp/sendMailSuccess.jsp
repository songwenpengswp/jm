<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html> 
  <head>
      <base href="<%=basePath%>">
      <title>邮件已发送</title>
  </head>  
  <body>
       请在10分钟之内登录邮箱，点击链接完成注册.<br>
  </body>
</html>