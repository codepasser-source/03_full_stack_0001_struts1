<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.apache.struts.action.DynaActionForm"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

  <h1>动态actionform成功显示页面</h1>
   <%
        DynaActionForm daf = (DynaActionForm)request.getAttribute("dynaActionForm");
    %>
   <li>jsp脚本显示</li><br>
      姓名：<%=daf.get("userName")%><br>
                年龄：<%=daf.get("age")%><br>
  <li>el显示</li><br>
      姓名：${dynaActionForm.map.userName}<br>
     年龄：${dynaActionForm.map.age}<br>
</body>
</html>