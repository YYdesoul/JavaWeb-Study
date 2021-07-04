<html>
<body>
<h2>Hello World!</h2>

<%--这里提交的路径，需要寻找到项目的路径--%>
<%--${pageContext.request.contextPath}代表当前的项目--%>
<form action= "${pageContext.request.contextPath}/login" method="get">
    username：<input type = "text" name = "username"/><br/>
    password：<input type = "text" name = "password"/><br/>
    <input type = "submit"/>
</form>
</body>
</html>
