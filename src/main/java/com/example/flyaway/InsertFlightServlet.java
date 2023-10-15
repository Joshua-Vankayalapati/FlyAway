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

@WebServlet("/InsertFlightServlet")
public class InsertFlightServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve flight information from request parameters
        String name = request.getParameter("name");
        String fromf = request.getParameter("fromf");
        String tof = request.getParameter("tof");
        String datef = request.getParameter("datef");
        String timef = request.getParameter("timef");
        String price = request.getParameter("price");

        // Create a HashMap to store flight information
        HashMap<String, String> flight = new HashMap<>();
        flight.put("name", name);
        flight.put("fromf", fromf);
        flight.put("tof", tof);
        flight.put("datef", datef);
        flight.put("timef", timef);
        flight.put("price", price);

        // Create a Dao instance and insert the flight
        Dao dao;
        try {
            dao = new Dao();
            boolean success = dao.insertFlight(flight);

            if (success) {
                // Flight inserted successfully, set a success message
                request.getSession().setAttribute("message", "Flight inserted successfully.");
            } else {
                // Flight insertion failed, set an error message
                request.getSession().setAttribute("message", "Flight insertion failed.");
            }

            // Redirect to a page (e.g., the page where you display flight details)
            response.sendRedirect("CharterFlights.jsp");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle database connection errors
        }
    }
}
