package Mastermind_java;

public class user {
	
	//INSTANCE VARIABLES
	private String username;
	private String password;
	private int [] totalPoints;
	
	private int [] Connections1; 
	private boolean [] ConAns1;
	private boolean isFinished1;
	
	private int [] Connections2;
	private boolean [] ConAns2;
	private boolean isFinished2;
	
	private int [] Connections3;
	private boolean [] ConAns3;
	private boolean isFinished3;
	
	private int [] Connections4;
	private boolean [] ConAns4;
	private boolean isFinished4;
	
	private int [] Connections5;
	private boolean [] ConAns5;
	private boolean isFinished5;
	
	//CONSTRUCTOR
	public user (String us, String ps) {
		this.username = us;
		this.password = ps;
		this.totalPoints = new int [16];
		
		Connections1 = new int[15];	
		ConAns1 = new boolean [15];	
		isFinished1 = false;
		
		Connections2 = new int[15];		
		ConAns2 = new boolean [15];		
		isFinished2 = false;
		
		Connections3 = new int[15];		
		ConAns3 = new boolean [15];		
		isFinished3 = false;
		
		Connections4 = new int[15];	
		ConAns4 = new boolean [15];	
		isFinished4 = false;
		
		Connections5 = new int[15];	
		ConAns5 = new boolean [15];		
		isFinished5 = false;
	}
	
	//Returns username
	public String getUsername () {
		return this.username;
	}
	
	//Returns password
	public String getPassword () {
		return this.password;
	}
	
	//Returns total points
	public int getTotalPoints() {
		int ret = 0;
		for (int i = 0; i < totalPoints.length; i++) {
			ret = ret + totalPoints[i];
		}
		return ret;
	} 
	
	//Modifies an index in totalPoints
	//Each set of 3 indices in totalPoints[] corresponds to a level, so each index is a checkpoint.
	//At the end of the game, totalPoints = {0,10,10,10,15,15,15,20,20,20,25,25,25,30,30,30} so getTotalPoints returns 300.
	public void setTotalPoints (int a, int ent) {
		totalPoints[a] = ent;
	}
	
	//GETTER METHODS
	
	public int getConnections1(int i) {
		return Connections1[i];
	}
	
	public int getConnections2(int i) {
		return Connections2[i];
	}
	
	public int getConnections3(int i) {
		return Connections3[i];
	}
	
	public int getConnections4(int i) {
		return Connections4[i];
	}
	
	public int getConnections5(int i) {
		return Connections5[i];
	}
	
	public String getConnections1String () {
		String k = "";
		for (int i = 0; i < Connections1.length; i++) {
			k = k + Connections1[i];
		}
		return k;
	}
	
	public String getConnections2String () {
		String k = "";
		for (int i = 0; i < Connections2.length; i++) {
			k = k + Connections2[i];
		}
		return k;
	}
	
	public String getConnections3String () {
		String k = "";
		for (int i = 0; i < Connections3.length; i++) {
			k = k + Connections3[i];
		}
		return k;
	}
	
	public String getConnections4String () {
		String k = "";
		for (int i = 0; i < Connections4.length; i++) {
			k = k + Connections4[i];
		}
		return k;
	}
	
	public String getConnections5String () {
		String k = "";
		for (int i = 0; i < Connections5.length; i++) {
			k = k + Connections5[i];
		}
		return k;
	}
	
	public boolean getConAns1 (int i) {
		return ConAns1[i];
	}
	
	public boolean getConAns2 (int i) {
		return ConAns2[i];
	}
	
	public boolean getConAns3 (int i) {
		return ConAns3[i];
	}
	
	public boolean getConAns4 (int i) {
		return ConAns4[i];
	}
	
	public boolean getConAns5 (int i) {
		return ConAns5[i];
	}
	
	public String getConAns1String () {
		String k = "";
		for (int i = 0; i < ConAns1.length; i++) {
			if (ConAns1[i]) {
				k = k + "T";
			}
			else {
				k = k + "F";
			}
		}
		return k;
	}
	
	public String getConAns2String () {
		String k = "";
		for (int i = 0; i < ConAns2.length; i++) {
			if (ConAns2[i]) {
				k = k + "T";
			}
			else {
				k = k + "F";
			}
		}
		return k;
	}
	
	public String getConAns3String () {
		String k = "";
		for (int i = 0; i < ConAns3.length; i++) {
			if (ConAns3[i]) {
				k = k + "T";
			}
			else {
				k = k + "F";
			}
		}
		return k;
	}
	
	public String getConAns4String () {
		String k = "";
		for (int i = 0; i < ConAns4.length; i++) {
			if (ConAns4[i]) {
				k = k + "T";
			}
			else {
				k = k + "F";
			}
		}
		return k;
	}
	
	public String getConAns5String () {
		String k = "";
		for (int i = 0; i < ConAns5.length; i++) {
			if (ConAns5[i]) {
				k = k + "T";
			}
			else {
				k = k + "F";
			}
		}
		return k;
	}
	
	public boolean getIsFinished1 () {
		return isFinished1;
	}
	
	public boolean getIsFinished2 () {
		return isFinished2;
	}
	
	public boolean getIsFinished3 () {
		return isFinished3;
	}
	
	public boolean getIsFinished4 () {
		return isFinished4;
	}
	
	public boolean getIsFinished5 () {
		return isFinished5;
	}
	
	//SETTER METHODS
	
	public void setConnections1 (int i, int j) {
		Connections1[i] = j;
	}
	
	public void setConnections2 (int i, int j) {
		Connections2[i] = j;
	}
	
	public void setConnections3 (int i, int j) {
		Connections3[i] = j;
	}
	
	public void setConnections4 (int i, int j) {
		Connections4[i] = j;
	}
	
	public void setConnections5 (int i, int j) {
		Connections5[i] = j;
	}
	
	public void setConAns1 (int i, boolean j) {
		ConAns1[i] = j;
	}
	
	public void setConAns2 (int i, boolean j) {
		ConAns2[i] = j;
	}
	
	public void setConAns3 (int i, boolean j) {
		ConAns3[i] = j;
	}
	
	public void setConAns4 (int i, boolean j) {
		ConAns4[i] = j;
	}
	
	public void setConAns5 (int i, boolean j) {
		ConAns5[i] = j;
	}
	
	public void finish1 () {
		isFinished1 = true;
	}
	
	public void finish2 () {
		isFinished2 = true;
	}
	
	public void finish3 () {
		isFinished3 = true;
	}
	
	public void finish4 () {
		isFinished4 = true;
	}
	
	public void finish5 () {
		isFinished5 = true;
	}
	
	//toString method
	public String toString () {
		return username;
	}
	
}
