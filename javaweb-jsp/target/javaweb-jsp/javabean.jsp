<%--
  Created by IntelliJ IDEA.
  User: yanyu
  Date: 14.06.21
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.soul.pojo.People" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    // People people = new People();
    // set methods
%>
<jsp:useBean id="people" class="com.soul.pojo.People" scope="page"/>

<jsp:setProperty name="people" property="address" value="Wuhan"/>
<jsp:setProperty name="people" property="id" value="1"/>
<jsp:setProperty name="people" property="age" value="3"/>
<jsp:setProperty name="people" property="name" value="小明"/>

姓名: <jsp:getProperty name="people" property="name"/>
id: <jsp:getProperty name="people" property="id"/>
年龄: <jsp:getProperty name="people" property="age"/>
地址: <jsp:getProperty name="people" property="address"/>



</body>
</html>
