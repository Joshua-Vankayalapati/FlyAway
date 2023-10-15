package com.example.flyaway;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.example.database.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/CharterFlightsListServlet")
public class CharterFlightsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get user input from the request
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String departure = request.getParameter("departure");

		try {
		    // Create a Dao object to interact with the database
		    Dao dao = new Dao();

		    // Retrieve available flights based on user input
		    List<String[]> flights = dao.getAvailableFlights(from, to, departure);

		    // Get the session associated with the request
		    HttpSession session = request.getSession();

		    // Store the flight information in the session
		    session.setAttribute("flights", flights);

		} catch (ClassNotFoundException | SQLException e) {
		    // Handle exceptions (typically database-related errors)
		    e.printStackTrace();
		}

		// Redirect to "CharterFlights.jsp" page
		response.sendRedirect("CharterFlights.jsp");
	}

}
