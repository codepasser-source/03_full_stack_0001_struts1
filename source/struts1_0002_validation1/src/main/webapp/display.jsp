<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="matt.damon.struts.form.LoginActionForm"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'display.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<h1>display信息页面</h1>
	<br>
	<hr>
	<br>
	<%
		LoginActionForm user = (LoginActionForm) request
				.getAttribute("loginForm");
	%>
	<%=user.getUserName()%><p>
		<%=user.getPassWord()%>
</body>
</html>
