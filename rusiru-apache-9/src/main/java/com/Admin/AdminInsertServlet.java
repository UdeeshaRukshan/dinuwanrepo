package com.Admin;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class AdminInsertServlet
 */
@WebServlet("/AdminInsertServlet")
public class AdminInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String username=request.getParameter("uid");
		String password=request.getParameter("psw");
		
		
			boolean isTrue;
			
			isTrue=AdminDBUtil.insertAdmin(name,email,phone,username,password);
			
			if(isTrue==true) {
				RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
				dis.forward(request,response);
			}
			else {
				RequestDispatcher dis2=request.getRequestDispatcher("Unsuccess.jsp");
				dis2.forward(request,response);
			}
		
		
		
		
	}
	


}
