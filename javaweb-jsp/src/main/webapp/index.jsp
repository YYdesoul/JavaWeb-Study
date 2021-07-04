<%--
  Created by IntelliJ IDEA.
  User: yanyu
  Date: 10.06.21
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%--JSP表达式
        作用：用来将程序的输出输入到客户端--%>
    <%= new java.util.Date() %>
    <%--脚本片段，少一个等号--%>
    <%
        int sum = 0;
        for (int i = 0; i < 100; i++) {
            sum += i;
        }
        out.println("<h1>Sum = " + sum + "</h1>");
    %>
    <%
        int x = 10;
        out.println(x);
    %>
    <p> 这是一个JSP文档</p>
    <%
        out.println(x);
    %>
    <%--在代码嵌入HTML元素--%>
    <%
        for (int i = 0; i < 5; i++) {
    %>
    <h1>Hello World, <%= new java.util.Date() %></h1>
    <%
        }
    %>

<%--    jsp申明--%>
    <%!
        static {
            System.out.println("Loading Servlet!");
        }

        private int globalVar = 0;

        public void kuang() {
            System.out.println("进入了方法狂");
        }
    %>
</body>
</html>
