package com.song.servlet;

import com.song.bean.Post;
import com.song.service.PostService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateServlet", urlPatterns = {"/update"})
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        /*Object object = request.getSession().getAttribute("user");
        if (object != null) {*/
            int id = Integer.parseInt(request.getParameter("id"));
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            PostService postService = new PostService();
            boolean update = postService.update(new Post(id, title, content));
            String url = "";
            if (update) {
                url = "/post?id=" + id;
                response.sendRedirect(url);
            } else {
                url = "/user/edit?id=" + id;
                response.sendRedirect(url);
            }
        /*} else {
            response.sendRedirect("/login");
        }*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { }
}
