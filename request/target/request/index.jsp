<%--
  Created by IntelliJ IDEA.
  User: yanyu
  Date: 09.06.21
  Time: 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login</h1>
<div style = "text-align: center">
<%--    这里表单表示的意思：以post方式提交表单，提交到我们的Login请求--%>
    <form action="${pageContext.request.contextPath}/login" method = "post">
        username: <input type = "text" name = "username"/> <br/>
        password: <input type = "password" name = "password"/> <br/>
        hobby:
        <input type = "checkbox" name = "hobby" value="girl"/>girl
        <input type = "checkbox" name = "hobby" value="coding"/>coding
        <input type = "checkbox" name = "hobby" value="singing"/>singing
        <input type = "checkbox" name = "hobby" value="watching movie"/>watching movie
        <input type = "submit"/>
    </form>
</div>

</body>
</html>
