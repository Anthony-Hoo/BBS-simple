package com.song.servlet;

import com.song.bean.Comment;
import com.song.bean.User;
import com.song.service.CommentService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CommentStoreServlet", urlPatterns = {"/comment/store"})
public class CommentStoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String content = request.getParameter("content");
        if (content != null) {
            User user = (User) request.getSession().getAttribute("user");
//            if (user != null) {
            int postId = Integer.parseInt(request.getParameter("post_id"));
            CommentService commentService = new CommentService();
            commentService.store(new Comment(content, user.getId(), postId));
            String url = "/post?id=" + postId;
            response.sendRedirect(url);
//            } else {
//                response.sendRedirect("/login");
//            }
        } else {
            response.sendRedirect("/comment");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
