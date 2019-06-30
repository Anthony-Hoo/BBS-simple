package com.song.servlet;

import com.song.bean.Post;
import com.song.bean.User;
import com.song.service.PostService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StoreServlet", urlPatterns = {"/store"})
public class StoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        User user = (User) request.getSession().getAttribute("user");
//        if (user != null) {
            String title = request.getParameter("title").trim();
            String content = request.getParameter("content").trim();
            PostService postService = new PostService();
            boolean store = postService.store(new Post(user.getId(), title, content));
            if (store) {
                response.sendRedirect("/index");
            } else {
                response.sendRedirect("/create");
            }
        /*} else {
            response.sendRedirect("/login");
        }*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { }
}
