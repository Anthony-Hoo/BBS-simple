package com.song.servlet;

import com.song.bean.Post;
import com.song.service.PostService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PostsServlet", urlPatterns = {"/index"}, loadOnStartup = 1)
public class PostsServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PostService postService = new PostService();
        List<Post> posts = postService.getPosts();
        request.setAttribute("posts", posts);
        request.getRequestDispatcher("/WEB-INF/views/pages/posts.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
