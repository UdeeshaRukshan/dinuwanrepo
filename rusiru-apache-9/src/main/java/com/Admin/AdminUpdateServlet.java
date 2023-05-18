package com.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class AdminUpdateServlet
 */
@WebServlet("/AdminUpdateServlet")
public class AdminUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String id=request.getParameter("cusid");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String username=request.getParameter("uname");
		String password=request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue=AdminDBUtil.updateAdmin(id, name, email, phone, username, password);
		
		if(isTrue==true) {
			
			List<Admin> AdmDetails=AdminDBUtil.getAdminDetails(id);
			request.setAttribute("AdmDetails",AdmDetails);
			
			
			RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
			dis.forward(request,response);
		}
		
		else {
			
			List<Admin> AdmDetails=AdminDBUtil.getAdminDetails(id);
			request.setAttribute("AdmDetails",AdmDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("index.jsp");
			dis.forward(request,response);
		}
		}
	}


