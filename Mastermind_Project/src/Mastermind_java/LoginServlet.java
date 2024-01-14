package Mastermind_java;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    if (username.length() == 0 || password.length() == 0) {
			return;
		}
	    
	    //System.out.println(username + " " + password);

	    // Assuming userManager.isValidUser(username, password) checks the credentials
	    user tempUser = userManager.checkUserInDB(username, password);
	    
	    if (tempUser != null) {
	    	System.out.println("PASS");
	        user currentUser = tempUser; // Get the User object from your user manager
	        boolean checkIsNewUser = currentUser.getIsNewUser();
	        
	        if (checkIsNewUser == true) {
	        	System.out.println("NEW USER BEING MADE");
	        	request.getSession().setAttribute("newUserConfirmed", "Your username is not found in the system! Do you want to create a new account with the username and password that you have entered?");
	        	response.sendRedirect("Mastermind_index.jsp");
	        }
	        else {
	        	HttpSession session = request.getSession(); // Start a new session or get the existing one
		        session.setAttribute("loggedUser", currentUser); // Store the User object in the session with the key "user"
		        //System.out.print(response);
		        
		        // Redirect to the profile page or other landing page
		        //response.sendRedirect("https://www.wikipedia.org/");
		        
		        response.sendRedirect(request.getContextPath() + "/Mastermind_profile.jsp");
	        }
	        
	    } else {
	        // Handle invalid credentials
	    	
	    	request.getSession().setAttribute("loginError", "Username and password do not match!");
	    	System.out.println("Login - Username and password don't match :(");
	    	response.sendRedirect("Mastermind_index.jsp");
	    }
	}

}

