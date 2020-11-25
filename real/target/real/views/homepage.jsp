<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/10/26
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商房产信息查询系统</title>
</head>
<body>
<table>
    <th>用户名：${users.name}<a href="login.jsp">退出</a><br>
    <a href="/page">房产信息查询</a><br>
    <br>
    <h1>欢迎使用房产信息查询系统</h1>
    <span>${msg}</span>
</table>


</body>
</html>
