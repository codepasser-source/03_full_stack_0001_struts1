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

<title>struts1 taglib</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>

<body>
	<h1>struts1 taglib</h1>
	<br>
	<hr>
	<ul>
		<li>bean:write <a href="tag.do?param=bean">bean tag</a></li>
		<li>bean:write <a href="tag.do?param=logic">logic tag</a></li>
		<li>bean:write <a href="tag.do?param=el">el</a></li>
	</ul>

</body>
</html>
