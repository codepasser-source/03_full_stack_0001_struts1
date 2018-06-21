<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="matt.damon.struts.form.UploadActionForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>上传文件成功显示页面</h1>

	<%
		UploadActionForm uaf = (UploadActionForm) request
				.getAttribute("uploadform");
	%>

	<br>
	<li>jsp脚本显示</li>
	<br> 标题：<%=uaf.getTitle()%><br> 文件名：<%=uaf.getMyFile().getFileName()%><br>
	文件大小：<%=uaf.getMyFile().getFileSize()%><br>
	<li>el</li>
	<br> 标题：${uploadform.title}
	<br> 文件名：${uploadform.myFile.fileName}
	<br> 文件大小：${uploadform.myFile.fileSize}
	<br>

</body>
</html>