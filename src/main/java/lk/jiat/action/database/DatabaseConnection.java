package lk.jiat.action.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/online_actiondb";
    private static final String USER = "root";
    private static final String PASSWORD = "Shashika1120";

    public static Connection getConnection() throws SQLException {
        // Optional: Explicitly load the driver (not strictly necessary for modern JDBC)
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found.", e);
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    // Test main method
    public static void main(String[] args) {
        try (Connection conn = getConnection()) {
            if (conn != null && !conn.isClosed()) {
                System.out.println("Connection successful!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}