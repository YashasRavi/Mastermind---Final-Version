package Mastermind_java;

import java.util.*;
public class userManager {

	private static HashMap<String, user> UserDatabase = new HashMap <String, user> ();
	
	public static boolean checkUser (String username, String password) {
		
		if (username.length() == 0 || password.length() == 0) {
			return false;
		}
		
		if (UserDatabase.containsKey(username) == true && UserDatabase.get(username).getPassword().equals(password)) {
			return true;
		}
		else if (UserDatabase.containsKey(username) == false) {
			user temp = new user(username,password);
			UserDatabase.put(username, temp);
			return true;
		}
		else if (UserDatabase.containsKey(username) == true && !UserDatabase.get(username).getPassword().equals(password)){
			return false;
		}
		else {
			return false;
		}
	}
	
	public static user getUser (String username) {
		return UserDatabase.get(username);
	}
	
	public static String print () {
		String a = "";
		
		for (Map.Entry mapElement : UserDatabase.entrySet()) {
			a = a + " " + mapElement.getKey();
		}
		return a;
	}
	

}