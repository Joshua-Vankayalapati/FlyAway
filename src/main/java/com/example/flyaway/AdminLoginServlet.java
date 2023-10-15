package com.example.flyaway;
 import com.example.flyaway.AdminLoginServlet;

import java.io.IOException;
import java.sql.SQLException;

import com.example.database.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get user input from the request
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {
		    // Create a Dao object to interact with the database
		    Dao dao = new Dao();

		    if (dao.checkAdmin(email, password)) {
		        // If admin login is successful, redirect to "AdminLandingPage.jsp"
		        response.sendRedirect("AdminLandingPage.jsp");
		    } else {
		        // If login fails, set an error message in the session and redirect to "AdminLandingPage.jsp"
		        request.setAttribute("errorMessage", "Invalid Details");
		        request.getRequestDispatcher("AdminLoginError.jsp").forward(request, response);
		    }
		} catch (ClassNotFoundException | SQLException e) {
		    // Handle exceptions (typically database-related errors)
		    e.printStackTrace();
		}

	}

}
