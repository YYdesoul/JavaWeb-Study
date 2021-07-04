package com.soul.filter;

import com.soul.util.Constant;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SysFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        System.out.println("sysFilter启动");
//        System.out.println(request.getRequestURI().split("/")[0]);
        System.out.println();
        if (request.getSession().getAttribute(Constant.USER_SESSION) == null) {
            response.sendRedirect("/" + request.getRequestURI().split("/")[1] +"/error.jsp");
        }
        chain.doFilter(request, response);
    }
}
