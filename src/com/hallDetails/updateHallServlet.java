package com.hallDetails;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/updateHallServlet")
public class updateHallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("hallID");
		String name = request.getParameter("name");
		String des = request.getParameter("des");
		String price = request.getParameter("price");
		
		boolean isTrue;
		
		//call ubdateHall method from hallDBUtiln class
		isTrue = hallDBUtil.updatetHall(id, name, des, price);
		
		if(isTrue == true) {
			
			List <hall> hallNames = hallDBUtil.getHallDetails();
			request.setAttribute("hallNames", hallNames);
	
			RequestDispatcher dis = request.getRequestDispatcher("showHall.jsp");
			dis.forward(request, response);
		}
		else {
			
			List <hall> hallNames = hallDBUtil.getHallDetails();
			request.setAttribute("hallNames", hallNames);
			
			RequestDispatcher dis = request.getRequestDispatcher("showHall.jsp");
			dis.forward(request, response);
		}	
	}
}
