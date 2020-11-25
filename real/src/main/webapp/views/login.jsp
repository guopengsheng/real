<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/11/20
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#btn").click(function (){
                if($('[name="name"]').val().length<6){
                    alert("用户名长度不对");
                    return false;
                }else if($('[name="password"]').val().length<6){
                    alert("密码长度不对");
                    return false;
                }else{
                    return true;
                }
            })
            if($("#spawn").text().length>0){
                alert($("#spawn").text());
            }

        })
    </script>
</head>
<body>
<form action="/login" method="post">
    <h1>房产信息查询系统</h1>
    身份证号： <input type="text" name="cardId" ><br>
    密码: <input type="password" name="password" ><br>
    <input type="submit" value="登录" id="btn">
    <a href="views/register.jsp"><input type="button" value="注册"></a>
</form>
<span id="spawn" style="display: none">${msg}</span>
</body>
</html>
