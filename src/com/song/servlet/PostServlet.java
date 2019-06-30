package com.song.servlet;

import com.song.bean.Comment;
import com.song.bean.Post;
import com.song.service.CommentService;
import com.song.service.PostService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PostServlet", urlPatterns = {"/post/*"})
public class PostServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        PostService postService = new PostService();
        Post post = postService.getPost(id);
        CommentService commentService = new CommentService();
        List<Comment> comments = commentService.getComments(id);
        request.setAttribute("post", post);
        request.setAttribute("comments", comments);
        request.getRequestDispatcher("/WEB-INF/views/pages/post.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
