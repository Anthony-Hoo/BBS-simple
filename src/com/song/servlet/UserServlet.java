package com.song.servlet;

import com.song.bean.Comment;
import com.song.bean.Post;
import com.song.bean.User;
import com.song.service.CommentService;
import com.song.service.PostService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = {"/user"})
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
//        if (user != null) {
        PostService postService = new PostService();
        List<Post> posts = postService.getUserPosts(user.getId());
        request.setAttribute("posts", posts);
        CommentService commentService = new CommentService();
        List<Comment> comments = commentService.getUserComments(user.getId());
        request.setAttribute("comments", comments);
        request.getRequestDispatcher("/WEB-INF/views/pages/user.jsp").forward(request, response);
        /*} else {
            response.sendRedirect("/login");
        }*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
