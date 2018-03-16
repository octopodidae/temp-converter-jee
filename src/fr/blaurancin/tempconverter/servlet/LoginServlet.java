package fr.blaurancin.tempconverter.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.blaurancin.tempconverter.models.User;

public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("LoginServlet - doGet");
		
		//PrintWriter out = resp.getWriter();
		//System.out.println(out);
		//out.println("<html><head><body><h2>It Works BerBer</h2></body></head></html>");
		
		req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("LoginServlet - doPost");
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		System.out.println("Email : "  + email + " password " + password);
		
		if(email.equals("zak@xmail.com") && password.equals("123456"))  {
			System.out.println("Bonne authentification");
			
			req.getSession().setAttribute("user", new User(email, password));
			resp.sendRedirect("converter");
			
			
		} else {
			System.out.println("Mauvaise authentification");
			resp.sendRedirect("login");
		}
		
	}
	
	
}
