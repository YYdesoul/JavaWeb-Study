<%--
  Created by IntelliJ IDEA.
  User: yanyu
  Date: 11.06.21
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%@include file="common/header.jsp"%>
  <h1>这是Body</h1>
  <jsp:include page="/common/header.jsp"/>
  <h1>网页主体</h1>
</body>
</html>
