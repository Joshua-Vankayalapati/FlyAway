package com.example.flyaway;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

import com.example.database.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get user input from the request
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {
		    // Create a Dao object to interact with the database
		    Dao dao = new Dao();

		    // Check if the user exists in the database
		    HashMap<String, String> user = dao.checkUser(email, password);

		    // Get the session associated with the request
		    HttpSession session = request.getSession();

		    if (user != null) {
		        // If user exists, set user information in the session and redirect to User.jsp
		        session.setAttribute("user", user);
		        response.sendRedirect("FlightBooking.jsp");
		    } else {
		        // If user doesn't exist, set an error message in the session and redirect to User.jsp
		        session.setAttribute("message", "Invalid Credentials!");
		        response.sendRedirect("User.jsp");
		    }
		} catch (ClassNotFoundException | SQLException e) {
		    // Handle exceptions (typically database-related errors)
		    e.printStackTrace();
		}

	}

}
