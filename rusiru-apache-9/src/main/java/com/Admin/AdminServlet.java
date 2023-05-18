package com.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub

        String username = request.getParameter("uid");
        String password = request.getParameter("pass");

        try {

            List<Admin> AdmDetails = AdminDBUtil.validate(username, password);
            request.setAttribute("AdmDetails",AdmDetails);

            // Create a cookie for the username
            Cookie usernameCookie = new Cookie("username", username);
            // Set the maximum age of the cookie to 1 hour (you can modify this value as needed)
            usernameCookie.setMaxAge(60 * 60 );
            Cookie passwordCookie = new Cookie("password", password);
            // Set the maximum age of the cookie to 1 hour (you can modify this value as needed)
            passwordCookie.setMaxAge(60 * 60 );
            // Add the cookie to the response
            response.addCookie(usernameCookie);
            response.addCookie(passwordCookie);

        } catch (Exception e) {
            e.printStackTrace();
        }

        RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
        dis.forward(request, response);
    }
}
