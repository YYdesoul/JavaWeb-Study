package com.soul.servlet;

import com.soul.servlet.pojo.Person;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

// getsession, 并在session中存数据
public class SessionDemo01 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 解决乱码问题
        resp.setCharacterEncoding("utf-8");
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        // 得到Session
        HttpSession session = req.getSession();

        // 给Session中存东西
        session.setAttribute("name", "小明");
        Person person = new Person("小明", 80);
        session.setAttribute("person", person);

        // 获取Session的ID
        String sessionId = session.getId();

        // 判断Session是不是新创建
        if (session.isNew()) {
            resp.getWriter().write("session创建成功，ID" + sessionId);
        } else {
            resp.getWriter().write("session已经在服务器中存在了，ID: " + sessionId);
        }

        // Session创建的时候做了什么事情
//        Cookie cookie = new Cookie("JSESSIONID", sessionId);
//        resp.addCookie(cookie);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
