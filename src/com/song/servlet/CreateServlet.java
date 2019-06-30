package com.song.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreateServlet", urlPatterns = {"/create"})
public class CreateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        /*Object object = request.getSession().getAttribute("user");
        if (object == null) {
            response.sendRedirect("/login");
        } else {*/
            request.getRequestDispatcher("/WEB-INF/views/pages/create.jsp").forward(request, response);
//        }
    }
}
