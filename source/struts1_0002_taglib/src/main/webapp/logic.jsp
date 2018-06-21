<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>logic tag</title>
</head>
<body>

	<h1>logic tag</h1>
	<hr>
	<br>

	<ul>
		<li>logic:present判断是否存在 <logic:present name="attr3">attr3存在</logic:present>
			<logic:notPresent name="attr3">attr3不存在</logic:notPresent></li>
		<li>logic:empty判断是否为空<logic:empty name="attr1">attr1为空</logic:empty>
			<logic:notEmpty name="attr1">attr1不为空</logic:notEmpty>
		</li>
		<li>logic:equal判断是否相等<logic:equal name="attr1" value="">attr1与""相等</logic:equal>
			<logic:notEqual name="attr1" value="attr2">attr1与attr2不相等</logic:notEqual>
		</li>

		<li>logic:iterate遍历<br> <logic:present name="userlist">
				<logic:empty name="userlist">
				userlist无数据
			</logic:empty>
				<logic:notEmpty name="userlist">
					<logic:iterate id="user" name="userlist">
						<bean:write name="user" property="userName" />
						<bean:write name="user" property="group.name" />
						<br>
					</logic:iterate>
				</logic:notEmpty>
			</logic:present>
		</li>
	</ul>
</body>
</html>