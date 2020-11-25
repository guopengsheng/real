<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/10/26
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>房产信息查询系统</h1>
<th>用户名：${users.name}<a href="login.jsp">退出</a><br>
    <a href="views/page.jsp">房产信息查询</a><br>
<br>

<form action="/page" method="post">
    <h4>房产信息查询</h4>
    查询类型:
    <select name="type" id="type">
        <option value="0" <c:if test="${type==0}">selected</c:if>>--请选择--</option>
        <option value="1" <c:if test="${type==1}">selected</c:if>>用户名</option>
        <option value="2" <c:if test="${type==2}">selected</c:if>>身份证</option>
    </select>
    <input type="text" name="likename" id="likename" value="${likename}">
    <input type="button" value="查找" onclick="page(1)">
</form>
<table>
    <tr>
        <th>序号</th>
        <th>项目名称</th>
        <th>产权人</th>
        <th>身份证号</th>
        <th>房屋类型</th>
        <th>使用面积</th>
        <th>建造时间</th>
    </tr>
    <c:forEach items="${pageInfo.list}" var="page">
        <tr>
            <td>${page.id}</td>
            <td>${page.projectname}</td>
            <td>${page.user.name}</td>
            <td>${page.cardid}</td>
            <td>${page.housetype}</td>
            <td>${page.area}</td>
            <td><fmt:formatDate value="${page.buildtime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
        </tr>
    </c:forEach>
</table>
<span>${msg}</span>
<span>${msg1}</span>
<br>
<a onclick="page(${pageInfo.firstPage})">首页</a>
<c:if test="${pageInfo.hasPreviousPage}">
    <a onclick="page(${pageInfo.prePage})">上一页</a>
</c:if>
<c:forEach items="${pageInfo.navigatepageNums}" var="i">
    <c:if test="${i==pageInfo.pageNum}">
        <a onclick="page(${i})">【${i}】</a>
    </c:if>
    <c:if test="${i!=pageInfo.pageNum}">
        <a onclick="page(${i})">${i}</a>
    </c:if>
</c:forEach>
<c:if test="${pageInfo.hasNextPage}">
    <a onclick="page(${pageInfo.nextPage})">下一页</a>
</c:if>
<a onclick="page(${pageInfo.lastPage})">尾页</a>
共${pageInfo.pages}页，${pageInfo.total}条记录 到第<input value="1" name="pn" id="pn_input">页
<input type="button" value="确定" onclick="one()">



<script src="../js/jquery-3.4.1.js"></script>
<script type="text/javascript">
    function one(){
        var type = document.getElementById("type").value;
        var likename = document.getElementById("likename").value;
        var pageNum = document.getElementById("pn_input").value;
        window.location = "/page?pageNum="+pageNum+"&likename="+likename+"&type="+type;
    }
    function page(pageNum){
        var type = document.getElementById("type").value;
        var likename = document.getElementById("likename").value;
        window.location = "/page?pageNum="+pageNum+"&likename="+likename+"&type="+type;
    }
</script>
</body>
</html>
