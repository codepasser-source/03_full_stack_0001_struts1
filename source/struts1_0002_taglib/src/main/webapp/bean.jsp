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

<title>bean tag</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<h1>bean tag</h1>
	<br>
	<hr>
	<br>
	<h2>bean write</h2>
	<br>
	<ul>
		<li>使用attribute输出：<%=request.getAttribute("text")%>
		</li>
		<li>使用bean:write标签输出： <bean:write name="text" />
		</li>
		<li>使用bean:write标签输出html[filter:true]： <bean:write
				name="html-text" filter="true" />
		</li>
		<li>使用bean:write标签输出html[filter:false]： <bean:write
				name="html-text" filter="false" />
		</li>
		<li>使用bean:write标签输出date[format]： <bean:write name="date"
				format="yyyy-MM-dd hh:mm:ss" />
		</li>
		<li>使用bean:write标签输出数字[default]： <bean:write name="num" />
		</li>
		<li>使用bean:write标签输出数字[format]： <bean:write name="num"
				format="###,###.##" />
		</li>
		<li>使用bean:write标签输出数字[format]： <bean:write name="num"
				format="###,###.0000" />
		</li>
		<li>使用bean:write标签输出结构[property="userName"]： <bean:write
				name="user" property="userName" />
		</li>
		<li>使用bean:write标签输出结构[property="group.name"]： <bean:write
				name="user" property="group.name" />
		</li>
	</ul>

</body>
</html>
