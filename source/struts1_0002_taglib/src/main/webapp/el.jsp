<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>el</title>
</head>
<body>

	<h1>logic tag</h1>
	<hr>
	<br>

	<ul>

		<li>el表达式输入变量值。查找范围pageScope\requestScope\sessionScope\applicationScope<br>
			${hello}
		</li>
		<li>el表达式输入变量值。指定范围<br> ${requestScope.hello}
		</li>
		<li>el表达式输入变量值。不存变量时什么都不输出<br> ${requestScope.hello1}
		</li>
		<li>el表达式输入变量值。结构<br>
			${requestScope.user.userName},${requestScope.user.group.name}
		</li>
		<li>el表达式输入变量值。map<br>
			${requestScope.map.key1},${requestScope.map.key2}
		</li>

		<li>el表达式输入变量值。array<br>
			${requestScope.array[0]},${requestScope.array[1]}
		</li>

		<li>el表达式输入变量值。array object(List对象的输出方式是一样的采用[]下标)<br>
			${requestScope.users[0].userName},${requestScope.users[1].group.name}
		</li>

		<li>el表达式对运算符的支持(基本的运算符都会支持)
			<p>1+2 = ${1+2}
			<p>10 div 5 = ${10 div 5 }
			<p>10 mod 3 = ${10 mod 3 }
		</li>


		<li>el empty函数 value = ${empty ss}</li>
	</ul>
</body>
</html>