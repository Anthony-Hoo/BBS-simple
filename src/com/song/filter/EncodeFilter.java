package com.song.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

public class EncodeFilter implements Filter {
    private String encode;
    public void init(FilterConfig filterConfig) throws ServletException
    {
        this.encode = filterConfig.getInitParameter("encode");
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws ServletException, IOException {
        servletRequest.setCharacterEncoding(encode);
        filterChain.doFilter(servletRequest, servletResponse);
    }

    public void destroy() {
    }

}
