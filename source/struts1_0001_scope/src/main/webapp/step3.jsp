<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>step2.jsp</title>
</head>
<body>
	<h1>step1 page</h1>
	<br>

	<hr>

	<form action="Step3.do" method="post">
		年龄： <select name="age">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
		</select> <input type="submit" value="继续">
	</form>
</body>
</html>