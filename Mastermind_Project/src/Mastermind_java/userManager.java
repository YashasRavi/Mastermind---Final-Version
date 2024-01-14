package Mastermind_java;

import java.util.*;
import org.mindrot.jbcrypt.BCrypt;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userManager {
	
	public static int numUsersInDB(Connection conn) {
		String countUserSQL = "SELECT COUNT(*) AS rowCount FROM User";
		int numUsers = -1;
		
		try (PreparedStatement countUserStatement = conn.prepareStatement(countUserSQL)) {
			
			
			ResultSet resultSet = countUserStatement.executeQuery();
			
			if (resultSet.next()) {
				numUsers = resultSet.getInt("rowCount");
				System.out.println("Number of users is " + numUsers);
			}
			else {
				System.out.println("Number of rows could not be calculated.");
			}
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		return numUsers;
	}
	
	
	public static user getUserFromDB(Connection conn, String username, String password) {
        user currentUser = null;
        String getUserSQL = "SELECT * FROM User WHERE username = ?";

        try (
	        	//Connection conn = DatabaseUtil.getConnection();
	            PreparedStatement getUserStatement = conn.prepareStatement(getUserSQL);
            ) 
        {
          
        	getUserStatement.setString(1, username);
        	
            ResultSet resultSet = getUserStatement.executeQuery();

            if (resultSet.next()) {
            	String storedHashedPassword = resultSet.getString("password");
            	if (BCrypt.checkpw(password, storedHashedPassword)) {
                    // Passwords match, proceed with login
            		
            		// Extract information from DB (including the hashed password stored in currentPassword)
                    int currentUserID = resultSet.getInt("user_id");
                    String currentUsername = resultSet.getString("username");
                    String currentPassword = storedHashedPassword;

                    // Create user
                    currentUser = new user(currentUserID, currentUsername, currentPassword); // Create a new User object with the data
                    currentUser.setIsNewUser(false);
                    
                    // Set total points
                    String pointBinaryString = resultSet.getString("total_points");
                    currentUser.setPointsFromDB(pointBinaryString);
                    
                    // Set connections
                    String connectionBinaryString = resultSet.getString("connections");
                    currentUser.setConnectionsFromDB(connectionBinaryString);
                    
                    // Set conAns
                    String conAnsBinaryString = resultSet.getString("con_ans");
                    currentUser.setConAnsFromDB(conAnsBinaryString);
                    
                    // Set isFinished
                    String finBinary = resultSet.getString("is_finished");
                    currentUser.setFinishFromDB(finBinary);
                    
                    System.out.println("User has been found!");
                    System.out.println(currentUser);
                } else {
                    // Passwords do not match
                	System.out.println("User not found with username: " + username);
                    return null;
                }
            	
                
            } else {
                // User not found, user remains null or handle accordingly
                System.out.println("Username is STILL not found.");
                return null;
                
                
            }
        } catch (SQLException e) {
            // handle exceptions, e.g., log them and/or rethrow as a custom exception
            e.printStackTrace();
        }
        return currentUser; // Will return null if user was not found
    }
	
	

	public static user createUserInDB (Connection conn, String username, String password) {
		user newUser = null;
		String insertSQL = "INSERT INTO User (user_id, username, password, total_points, connections, con_ans, is_finished) VALUES (?, ?, ?, ?, ?, ?, ?)";
		
		try (
	        	//Connection conn = DatabaseUtil.getConnection();
	            PreparedStatement insertUserStatement = conn.prepareStatement(insertSQL);
            ) 
        {
			
			int newUserID = numUsersInDB(conn);
			if (newUserID == -1) {
				System.out.println("User cannot be generated, invalid ID");
				return null;
			}
			
			String hashedPasswordToInsert = BCrypt.hashpw(password, BCrypt.gensalt());
			String defaultTotalPoints = "FFFFFFFFFFFFFFFF";
			String defaultFinish = "FFFFF";
			String defaultConnections = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF";
			String defaultConAns = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF";
			
			insertUserStatement.setInt(1, newUserID + 1);
			insertUserStatement.setString(2, username);
			insertUserStatement.setString(3, hashedPasswordToInsert);
			insertUserStatement.setString(4, defaultTotalPoints);
			insertUserStatement.setString(5, defaultConnections);
			insertUserStatement.setString(6, defaultConAns);
			insertUserStatement.setString(7, defaultFinish);
			
			newUser = new user(newUserID + 1, username, hashedPasswordToInsert);
			//nextAvailableID = nextAvailableID + 1;
			
			int rowsInserted = insertUserStatement.executeUpdate();
			
			 if (rowsInserted > 0) {
                 System.out.println("A new user was inserted successfully!");
                 System.out.println(newUser);
                 
                 return newUser; // Return true to indicate user was created
             }
			 else {
				 System.out.println("Not successful");
				 return null;
			 }
			
			
        } catch (SQLException e) {
            // handle exceptions, e.g., log them and/or rethrow as a custom exception
            e.printStackTrace();
        }
		
		return newUser;
		
		
	}
	
	
	public static user checkUserInDB(String username, String password) {
		user userToReturn = null;
		
		if (username == null || password == null || username.isEmpty() == true || password.isEmpty() == true) {
			return null;
		}
		
		String checkSQL = "SELECT * FROM User WHERE username = ?";
	
		try (
			Connection conn = DatabaseUtil.getConnection();
			PreparedStatement checkUserStatement = conn.prepareStatement(checkSQL);
		)
		{
			checkUserStatement.setString(1, username);
			ResultSet resultSet = checkUserStatement.executeQuery();
			
			if (resultSet.next()) {
				// Username found in database, now extract user IF password also matches.
				user tempUserFromDB = getUserFromDB(conn, username, password);
				if (tempUserFromDB == null) {
					// Username found BUT password does not match.
					System.out.println("Username and password do NOT match.");
					return null;
				}
				else {
					// Username found AND password matches, so extract user.
					userToReturn = tempUserFromDB;
				}
			}
			else {
				// Username not found in database, so create a new user.
				user newPotentialUser = createUserInDB(conn, username, password);
				if (newPotentialUser == null) {
					System.out.println("Error creating new user.");
					return null;
				}
				else {
					userToReturn = newPotentialUser;
				}
			}
			
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		
		return userToReturn;
		
	}
	
	public static boolean updateUserInDB (user userToUpdate) {
		if (userToUpdate == null) {
			System.out.println("User is invalid.");
			return false;
		}
		
		// Identification field
		int currUserID = userToUpdate.getUserID();
		
		// Update fields
		String connectionsUpdated = userToUpdate.sendConnectionsToDB();
		String conAnsUpdated = userToUpdate.sendConAnsToDB();
		String pointsUpdated = userToUpdate.sendPointsToDB();
		String finishUpdated = userToUpdate.sendFinishToDB();
		
		String updateSQL = "UPDATE User SET connections = ?, con_ans = ?, total_points = ?, is_finished = ? WHERE user_id = ?";

	    try (Connection conn = DatabaseUtil.getConnection();
	         PreparedStatement statement = conn.prepareStatement(updateSQL)) {
	         
	        // Set the new username and password in the prepared statement
	        statement.setString(1, connectionsUpdated);
	        statement.setString(2, conAnsUpdated);
	        statement.setString(3, pointsUpdated);
	        statement.setString(4, finishUpdated);
	        statement.setInt(5, currUserID);
	        
	        // Execute the update
	        int rowsAffected = statement.executeUpdate();
	        
	        if (rowsAffected > 0) {
	            System.out.println("User with ID " + currUserID + " was updated successfully.");
	            return true;
	        } else {
	            System.out.println("No user was found with ID " + currUserID + " to update.");
	            return false;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return false;
	    }
		
		
	}
	
	
	public static void main(String [] args) {
		checkUserInDB("user5", "pass3");
	}
	
	

}