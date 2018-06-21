<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'index.jsp' starting page</title>
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
	<li>Struts_Login 练习</li>
	<br>
	<hr>
	<form action="login.do" method="post">
		用户名： <input type="text" size="20" name="userName"> <br>
		密码： <input type="password" size="20" name="passWord"> <input
			type="submit" value="登陆">
	</form>

	<li>动态actionform 练习</li>
	<br>

	<form action="dynaaction.do" method="post">
		用户名： <input type="text" size="20" name="userName"> <br>
		年龄： <input type="text" size="20" name="age"> <input
			type="submit" value="提交">
	</form>

	<li>文件上传练习</li>
	<br>

	<form action="upload.do" method="post" enctype="multipart/form-data">
		标题： <input type="text" size="20" name="title"> <br> 选择文件：
		<input type="file" size="20" name="myFile"> <input
			type="submit" value="上传">
	</form>

	<li>配置文件分工练习</li>
	<form action="xml.do" method="post">
		用户名： <input type="text" size="20" name="name"> <br> 密码： <input
			type="text" size="20" name="password"> <input type="submit"
			value="提交">
	</form>
</body>
</html>
