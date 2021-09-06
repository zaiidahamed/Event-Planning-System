package com.hallDetails;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/hallServlet")
public class hallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		try {
			
			List <hall> hallNames = hallDBUtil.getHallDetails();
			request.setAttribute("hallNames", hallNames);
			
			RequestDispatcher dis = request.getRequestDispatcher("showHall.jsp");
			dis.forward(request, response);
		}
		catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
