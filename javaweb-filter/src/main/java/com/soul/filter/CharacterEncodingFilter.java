package com.soul.filter;

import com.soul.util.Constant;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CharacterEncodingFilter implements Filter {

    // 初始化， web服务器启动时，就已经初始化了，随时监听等待过滤对象出现
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("CharacterEncodingFilter初始化");
    }
    /*
    1. 过滤中的所有代码，在过滤特定请求的时候都会执行
    2. 必须要让过滤器继续通行
         chain.doFilter(request, response);
     */

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");

        System.out.println("CharacterEncodingFilter之前...");
        chain.doFilter(request, response);  //让我们的请求继续走，如果不写，程序就到这儿就被拦截停止（比如有两个过滤器就没办法了）
        System.out.println("CharacterEncodingFilter之后...");
    }

    // 销毁, web服务器关闭的时候，过滤器会被销毁
    @Override
    public void destroy() {
        System.out.println("CharacterEncodingFilter被销毁");
    }

    public static class SysFilter implements Filter {
        @Override
        public void init(FilterConfig filterConfig) throws ServletException {
            Filter.super.init(filterConfig);
        }

        @Override
        public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
            HttpServletRequest request = (HttpServletRequest) req;
            HttpServletResponse response = (HttpServletResponse) resp;
            System.out.println("监听器被启动");
            if (request.getSession().getAttribute(Constant.USER_SESSION) == null) {
                response.sendRedirect("/filter/error.jsp");
            }
            chain.doFilter(request, response);
        }

        @Override
        public void destroy() {
            Filter.super.destroy();
        }
    }
}
