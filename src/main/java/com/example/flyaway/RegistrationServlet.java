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


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get user input from the request
		String name = request.getParameter("name");
		String phno = request.getParameter("phno");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		

		// Create a HashMap to store user data
		HashMap<String, String> user = new HashMap<>();
		user.put("name", name);
		user.put("phno", phno);
		user.put("email", email);
		user.put("password", password);
		

		try {
		    // Create a Dao object to interact with the database
		    Dao dao = new Dao();

		    // Insert user data into the database and get the result
		    boolean result = dao.insertUser(user);

		    // Get the session associated with the request
		    HttpSession session = request.getSession();

		    if (result) {
		        // If user insertion is successful, set a success message in the session
		        session.setAttribute("message", "User Added Successfully");
		    } else {
		        // If user insertion fails, set an error message in the session
		        session.setAttribute("message", "Invalid Credentials!");
		    }
		} catch (ClassNotFoundException | SQLException e) {
		    // Handle exceptions (typically database-related errors)
		    e.printStackTrace();
		}

		// Redirect to "User.jsp" page
		response.sendRedirect("User.jsp");

	}

}
