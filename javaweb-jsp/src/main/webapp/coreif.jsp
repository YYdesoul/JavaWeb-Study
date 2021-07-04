<%--
  Created by IntelliJ IDEA.
  User: yanyu
  Date: 14.06.21
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
<head>
    <title>Title</title>
</head>
<body>
<h4>Test</h4>

<form action = "coreif.jsp" method = "get">
    <%--
     EL表达式获取表单的数据
     ${param, 参数名}
    --%>
    <input type="text" name="username" value="${param.username}">
    <input type="submit" value="login">
</form>

<%--判断如果提交的用户名是管理员则登录成功--%>
<c:if test="${param.username == 'admin'}" var = "isAdmin">
    <c:out value = "Welcome Admin"/>
</c:if>

<c:out value="${isAdmin}"/>
</body>
</html>
