<%--
  Created by IntelliJ IDEA.
  User: yanyu
  Date: 14.06.21
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--jsp:include--%>
<%--
http://localhost:8080/jsptag.jsp?name=kuangshen&age=12
--%>
<jsp:forward page="/jsptag2.jsp">
    <jsp:param name="name" value="kuangshen"></jsp:param>
    <jsp:param name="age" value="12"></jsp:param>
</jsp:forward>

</body>
</html>
