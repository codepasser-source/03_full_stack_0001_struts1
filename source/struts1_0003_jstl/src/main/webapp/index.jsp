<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>

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

<title>jstl</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h1>jstl 核心库</h1>
	<br>
	<hr>
	<ul>
		<li>jstl<a href="jstl.do">jstl</a></li>
	</ul>

</body>
</html>
