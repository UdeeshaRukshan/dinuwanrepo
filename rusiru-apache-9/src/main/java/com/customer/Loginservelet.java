package com.customer;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;


public class Loginservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("uid");
		String password=request.getParameter("pass");
		
		try {
			
			List<customer> cusDetails=customerDButil.validate(username,password);
			request.setAttribute("cusDetails",cusDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
		dis.forward(request,response);
		
		
		
		
		
		
	}

}
