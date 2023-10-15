package com.example.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.example.flyaway.StringUtil;

public class Dao {
    // Establishing Database Connection
	private Connection con = null;
	private PreparedStatement preparedStatement = null;

	public Dao() throws ClassNotFoundException, SQLException {
		// Initialize the database connection
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3307/flyaway", "root", "root");
		System.out.println("Connection established with the database");
	}

    // Method to get available flights based on criteria
	public List<String[]> getAvailableFlights(String from, String to, String date) {
		List<String[]> flights = new ArrayList<>();
		String query = "SELECT name, timef, price FROM flights WHERE fromf = ? AND tof = ? AND datef = ?";
		try {
			// Creating a prepared statement to execute the SQL query
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, from);
			preparedStatement.setString(2, to);
			preparedStatement.setString(3, date);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				String[] flight = new String[3];
				flight[0] = rs.getString("name");
				flight[1] = rs.getString("timef");
				flight[2] = rs.getString("price");
				flights.add(flight);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}

		return flights;
	}

    // Method to check user credentials
	public HashMap<String, String> checkUser(String email, String password) {
		HashMap<String, String> user = null;
		String query = "SELECT name, phno FROM user WHERE email = ? AND password = ?";
		try {
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				user = new HashMap<>();
				user.put("name", rs.getString("name"));
				user.put("phno", rs.getString("phno"));
				user.put("email", email);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}
		return user;
	}

    // Method to insert user information into the database
	public boolean insertUser(HashMap<String, String> user) {
		String query = "INSERT INTO user (email, password, name, phno) VALUES (?, ?, ?, ?)";
		try {
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, user.get("name"));
			preparedStatement.setString(2, user.get("email"));
			preparedStatement.setString(3, user.get("password"));
			preparedStatement.setString(4, user.get("phno"));
			preparedStatement.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources();
		}
		return false;
	}

    // Method to close resources (PreparedStatement)
	private void closeResources() {
		try {
			if (preparedStatement != null) {
				preparedStatement.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

    // Method to check if provided admin credentials are valid
	public boolean checkAdmin(String email, String password) {
		PreparedStatement preparedStatement = null;
		ResultSet rs = null;
		try {
			String query = "SELECT * FROM admin WHERE email = ? AND password = ?";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			rs = preparedStatement.executeQuery();
			if (rs.next()) {
				return true; // Admin credentials are valid
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources(rs, preparedStatement);
		}
		return false; // Admin credentials are not valid
	}

    // Method to close resources (ResultSet, PreparedStatement)
	private void closeResources(ResultSet rs, PreparedStatement preparedStatement) {
		try {
			if (rs != null) {
				rs.close();
			}
			closeResources(preparedStatement);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

    // Method to change the admin password
	public boolean changeAdminPassword(String email, String password) {
		PreparedStatement preparedStatement = null;
		try {
			String query = "UPDATE admin SET password = ? WHERE email = ?";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, password);
			preparedStatement.setString(2, email);
			int rowsUpdated = preparedStatement.executeUpdate();
			return rowsUpdated > 0; // Password changed successfully if rows were updated
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources(preparedStatement);
		}
		return false;
	}

    // Method to insert flight information into the database
	public boolean insertFlight(HashMap<String, String> flight) {
		PreparedStatement preparedStatement = null;
		try {
			String query = "INSERT INTO flights (name, fromf, tof, datef, timef, price) VALUES (?, ?, ?, ?, ?, ?)";
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1, StringUtil.fixSqlFieldValue(flight.get("name")));
			preparedStatement.setString(2, StringUtil.fixSqlFieldValue(flight.get("from")));
			preparedStatement.setString(3, StringUtil.fixSqlFieldValue(flight.get("to")));
			preparedStatement.setString(4, StringUtil.fixSqlFieldValue(flight.get("date")));
			preparedStatement.setString(5, StringUtil.fixSqlFieldValue(flight.get("time")));
			preparedStatement.setString(6, StringUtil.fixSqlFieldValue(flight.get("price")));

			int rowsInserted = preparedStatement.executeUpdate();
			return rowsInserted > 0; // Flight inserted successfully if rows were updated
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeResources(preparedStatement);
		}
		return false; // Flight insertion failed
	}

    // Overloaded method to close resources (PreparedStatement)
	private void closeResources(PreparedStatement preparedStatement) {
		try {
			if (preparedStatement != null) {
				preparedStatement.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
