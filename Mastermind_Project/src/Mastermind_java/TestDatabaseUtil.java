package Mastermind_java;

import java.sql.*;

public class TestDatabaseUtil {
    public static void main(String[] args) {
        String sql = "SELECT * FROM users;";
        String insertSQL = "INSERT INTO users (id, name) VALUES (71, 'boi')";
        
        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement();
        		) {

            int rowsAffected = stmt.executeUpdate(insertSQL);
            System.out.println(rowsAffected + " row(s) inserted.");

        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        try (
        	 Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql);
            ) 
        {
             
            while (rs.next()) {
                // Assuming 'id' and 'name' are columns in your table
                int id = rs.getInt("id");
                String name = rs.getString("name");
                
                System.out.println("ID: " + id + ", Name: " + name);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        String insertSql = "INSERT INTO users (id, name) VALUES (50, 'hihhiih')";
        String updateSql = "UPDATE users SET name = 'John Doe2' WHERE id = 1";
        String deleteSql = "DELETE FROM users WHERE name = 'boi'";

        try (Connection conn = DatabaseUtil.getConnection();
             Statement stmt = conn.createStatement()) {

            // Test INSERT operation
            int rowsAffected = stmt.executeUpdate(insertSql);
            System.out.println("Insert: " + rowsAffected + " row(s) affected.");

            // Test UPDATE operation
            rowsAffected = stmt.executeUpdate(updateSql);
            System.out.println("Update: " + rowsAffected + " row(s) affected.");

            // Test DELETE operation
            rowsAffected = stmt.executeUpdate(deleteSql);
            System.out.println("Delete: " + rowsAffected + " row(s) affected.");

        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        
    }
}

