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

@WebServlet("/FlightBookingServlet")
public class FlightBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get user input from the request
		String name = request.getParameter("name");
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String departure = request.getParameter("departure");
		String time = request.getParameter("time");
		String price = request.getParameter("price");

		// Create a HashMap to store flight data
		HashMap<String, String> flight = new HashMap<>();
		flight.put("name", name);
		flight.put("from", from);
		flight.put("to", to);
		flight.put("date", departure);
		flight.put("time", time);
		flight.put("price", price);

		try {
		    // Create a Dao object to interact with the database
		    Dao dao = new Dao();

		    // Get the session associated with the request
		    HttpSession session = request.getSession();

		    if (dao.insertFlight(flight)) {
		        // If flight insertion is successful, set a success message in the session
		        session.setAttribute("message", "Flight Added Successfully");
		    } else {
		        // If flight insertion fails, set an error message in the session
		        session.setAttribute("message", "Invalid Details");
		    }
		} catch (ClassNotFoundException | SQLException e) {
		    // Handle exceptions (typically database-related errors)
		    e.printStackTrace();
		}

		// Redirect to "AdminLandingPage.jsp" page
		response.sendRedirect("AdminLandingPage.jsp");

	}

}
