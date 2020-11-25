<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/10/26
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#btn").click(function(){
                if($('[name="password"]').val().length<6){
                    alert("密码长度不够");
                    return false;
                } else  if($('[name="nsp"]').val().length<6){
                    alert("确认密码长度不够");
                    return false;
                }else if(!($('[name="password"]').val()==$('[name="nsp"]').val())){
                    alert("两次密码不一致");
                    return false;
                }else{
                    return true;
                }
            })

            if($("#sp").text().length>0){
                alert($("#sp").text());
            }
        })
    </script>
</head>
<body>
<h1>账号注册</h1>
<br>
<form action="/register" method="post">
    身份证号：<input type="text" name="cardId"><br>
    用户名：<input type="text" name="name"><br>
    密码：<input type="password" name="password"><br>
    确认密码：<input type="password" name="nsp"><br>
    <input type="submit" value="注册" id="btn"><a href="views/login.jsp"><input type="button" value="返回" id="bt"></a>
</form>
<span id="sp" style="display: none">${msg}</span>
</body>
</html>
