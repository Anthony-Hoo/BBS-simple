package com.song.filter;

import com.song.bean.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "UserFilter", urlPatterns =
        {"/comment/delete/*", "/comment/store", "/create", "/user/delete/*", "/user/edit/*", "/store", "/update", "/user"})
public class UserFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {}

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException
    {
        User user = (User) ((HttpServletRequest) servletRequest).getSession().getAttribute("user");
        if (user == null) {
            servletRequest.getRequestDispatcher("/login").forward(servletRequest, servletResponse);
        } else {
            servletRequest.setAttribute("user", user);
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    public void destroy() {}

}
