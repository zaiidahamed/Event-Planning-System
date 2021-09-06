package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminServlet")
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//catch the username and password
		String Username = request.getParameter("username");
		String Password = request.getParameter("password");
		
		Boolean isTrue;
		
		//validate username and password
		isTrue = adminDBUtil.validate(Username, Password);
		
		if (isTrue == true) {
			
			//assign admin details to an array
			List <Admin> admDetails = adminDBUtil.getAdminDetails(Username);
			request.setAttribute("AdminDetails", admDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("A_index.jsp");
			dis.forward(request, response);
	
		
		}
		else {
			//error message
			out.println("<script type='text/javascript'>");
			out.println("alert('Username or Password Incorrect!!!');");
			out.println("location='loginA.jsp'");
			out.println("</script>");
		}
	}

}
