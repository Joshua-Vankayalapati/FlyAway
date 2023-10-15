package com.example.flyaway;

import java.io.IOException;
import java.sql.SQLException;

import com.example.database.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/PasswordChangeServlet")
public class PasswordChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get user input from the request
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {
		    // Create a Dao object to interact with the database
		    Dao dao = new Dao();

		    // Get the session associated with the request
		    HttpSession session = request.getSession();

		    if (dao.changeAdminPassword(email, password)) {
		        // If password change is successful, set a success message in the session
		        session.setAttribute("message", "Password Changed Successfully");
		    } else if (email == null || email.isEmpty()) {
		        // Handle the case where email is not provided
		        session.setAttribute("message", "Information Empty, Please input valid information");
		        response.sendRedirect("AdminLoginPage.jsp");
		    } else {
		        // If password change fails, set an error message in the session
		        session.setAttribute("message", "Invalid Credentials! Please input valid information");
		    }

		} catch (ClassNotFoundException | SQLException e) {
		    // Handle exceptions (typically database-related errors)
		    e.printStackTrace();
		}

		// Redirect to "AdminLoginPage.jsp" page
		response.sendRedirect("AdminLoginPage.jsp");
		return;
	}

}
