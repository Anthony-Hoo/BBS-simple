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

@WebServlet(name = "EditServlet", urlPatterns = {"/user/edit/*"})
public class EditServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        /*Object object = request.getSession().getAttribute("user");
        if (object != null) {*/
            int id = Integer.parseInt(request.getParameter("id"));
            PostService postService = new PostService();
            Post post = postService.getPost(id);
            request.setAttribute("post", post);
            request.getRequestDispatcher("/WEB-INF/views/pages/edit.jsp").forward(request, response);
        /*} else {
            response.sendRedirect("/login");
        }*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
