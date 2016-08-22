
package com.limon;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.Naming;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class CreateServlet11 extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String repassword=request.getParameter("repassword");
		String phone=request.getParameter("phone");
		
	
		String adderess=request.getParameter("adderess");
		
		String syd=request.getParameter("syd");
			
	    int status=RegisterUser11.register1(username, password, repassword,phone, adderess,syd);
	   
	    
		if(status>0){
				
			request.setAttribute("welcome","WELCOME! TO YOU HAVE REGISTERD NEW STAFF SUCCESSFULLY");
			RequestDispatcher rd=request.getRequestDispatcher("showstaff.jsp");
			rd.include(request, response);
		}
		else{
			out.print("Sorry,Registration failed. please try later");
			RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
			rd.include(request, response);
		}
		
	out.close();	
	}

}
