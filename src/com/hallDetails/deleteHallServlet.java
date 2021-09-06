package com.hallDetails;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteHallServlet")
public class deleteHallServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		boolean isTrue;
		
		String id = request.getParameter("hallID");
		isTrue = hallDBUtil.deleteHall(id);
		
		if (isTrue == true) {
			
			List <hall> hallNames = hallDBUtil.getHallDetails();
			request.setAttribute("hallNames", hallNames);
			
			RequestDispatcher dis = request.getRequestDispatcher("showHall.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Error!!!');");
			out.println("location='A_index.jsp'");
			out.println("</script>");
		}
		
	}

}
