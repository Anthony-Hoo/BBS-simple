package com.song.servlet;

import com.song.bean.User;
import com.song.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterStoreServlet", urlPatterns = {"/register/store"})
public class RegisterStoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name").trim();
        String password = request.getParameter("password").trim();
        if (name != "" && password != "") {
            UserService userService = new UserService();
            boolean store = userService.register(new User(name, password));
            if (store) {
                response.sendRedirect("/login");
            } else {
                response.sendRedirect("/register");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
}
