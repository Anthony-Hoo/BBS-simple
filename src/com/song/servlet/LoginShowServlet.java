package com.song.servlet;

import com.song.bean.User;
import com.song.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginShowServlet", urlPatterns = {"/login/show"})
public class LoginShowServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        Object object = request.getSession().getAttribute("user");
        if (object == null) {
            String name = request.getParameter("name").trim();
            String password = request.getParameter("password").trim();
            if (name != "" && password != "") {
                UserService userService = new UserService();
                User user = userService.login(name, password);
                if (user != null) {
                    request.getSession().setAttribute("user", user);
                    response.sendRedirect("/index");
//                    request.getRequestDispatcher("/WEB-INF/views/pages/posts.jsp").forward(request, response);
                } else {
                    response.sendRedirect("/register");
                }
            } else {
                response.sendRedirect("/login");
            }
        } else {
            response.sendRedirect("/index");
        }
     }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
