package com.sabkamarks.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sabkamarks.model.Calculation;

public class AverageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String sirname =request.getParameter("sname");
		String collegeName =request.getParameter("cname");
		String className = request.getParameter("class");
		String boardName =request.getParameter("bname");
		
		
		int math=Integer.parseInt(request.getParameter("maths"));
		int comp=Integer.parseInt(request.getParameter("comp"));
		int che=Integer.parseInt(request.getParameter("chem"));
		int phys=Integer.parseInt(request.getParameter("phy"));
		int english=Integer.parseInt(request.getParameter("eng"));
		
		Calculation model= new Calculation();
		double result= model.calculate(math,comp,che,phys,english);
		
		request.setAttribute("percentage", result);
		if(result>35) {
		RequestDispatcher rd=request.getRequestDispatcher("output.jsp");
		rd.forward(request, response);
		}
		else {
			RequestDispatcher rd=request.getRequestDispatcher("fail.jsp");
			rd.forward(request, response);
			
		}
		
		
		
	}

}
