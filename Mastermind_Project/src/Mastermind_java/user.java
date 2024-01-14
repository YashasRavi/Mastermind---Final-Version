package Mastermind_java;

import com.google.gson.Gson;
import java.io.Serializable;


public class user implements Serializable {
	
	//INSTANCE VARIABLES
	
	//Serialization for session storing
	private static final long serialVersionUID = 1L;
	
	//User information
	private int userID;
	private String username;
	private transient String password;
	private int [] totalPoints;
	private boolean newUser;
	private levelDatabase userLevelInfo; 
	private EncryptionUtil userEncrypt;
	
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
	
	// KEY for encryption and decryption
	
	
	//CONSTRUCTOR
	public user (int id, String us, String ps) {
		this.userID = id;
		this.username = us;
		this.password = ps;
		this.newUser = true;
		this.totalPoints = new int [16];
		this.userLevelInfo = new levelDatabase();
		this.userEncrypt = new EncryptionUtil();
		
		this.Connections1 = new int[15];	
		this.ConAns1 = new boolean [15];	
		this.isFinished1 = false;
		
		this.Connections2 = new int[15];		
		this.ConAns2 = new boolean [15];		
		this.isFinished2 = false;
		
		this.Connections3 = new int[15];		
		this.ConAns3 = new boolean [15];		
		this.isFinished3 = false;
		
		this.Connections4 = new int[15];	
		this.ConAns4 = new boolean [15];	
		this.isFinished4 = false;
		
		this.Connections5 = new int[15];	
		this.ConAns5 = new boolean [15];		
		this.isFinished5 = false;
		
	}
	
	//Returns username
	public String getUsername () {
		return this.username;
	}
	
	//Returns password
	public String getPassword () {
		return this.password;
	}
	
	//Returns user ID
	public int getUserID() {
		return this.userID;
	}
	

	public String encryptAndEncodeURL(String dataFromClient) throws Exception {
		String encryptedThenEncodedURL = userEncrypt.encryptAndEncode(dataFromClient);
		return encryptedThenEncodedURL;
	}

	public String decodeAndDecrypt(String encodedData) throws Exception {
		String decodedThenDecryptedURL = userEncrypt.decodeAndDecrypt(encodedData);
		return decodedThenDecryptedURL;
	}

	
	public boolean getIsNewUser() {
		return this.newUser;
	}
	
	public void setIsNewUser(boolean isNew) {
		this.newUser = isNew;
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
	
	public void setPointsFromDB(String pointBinary) {

		for (int i = 0; i < pointBinary.length(); i++) {
			char currentCheckpoint = pointBinary.charAt(i);
			int valueToAppend = 0;
			if (i == 0) {
				valueToAppend = 0;
			}
			else if (i > 0 && i < 4) {
				valueToAppend = 10;
			}
			else if (i >= 4 && i < 7) {
				valueToAppend = 15;
			}
			else if (i >= 7 && i < 10) {
				valueToAppend = 20;
			}
			else if (i >= 10 && i < 13) {
				valueToAppend = 25;
			}
			else if (i >= 13 && i < 16) {
				valueToAppend = 30;
			}		
		
			if (currentCheckpoint == 'T') {
				this.setTotalPoints(i,valueToAppend);
			}
			else {
				this.setTotalPoints(i,0);
			}
		}
		
	}
	
	public String sendPointsToDB() {
		String totalPointsString = "";
		
		for (int i = 0; i < totalPoints.length; i++) {
			int pointValue = totalPoints[i];
			
			if (pointValue > 0) {
				totalPointsString = totalPointsString + "T";
			}
			else {
				totalPointsString = totalPointsString + "F";
			}
		}
		
		return totalPointsString;
	}
	
	//GETTER METHODS
	
	public String getBodyBackground(String level) {
		//use isFinished
		String bodyBackround = "";
		if (level.equals("1")) {
			bodyBackround =  userLevelInfo.getStylings(1)[0];
		}
		else if (level.equals("2")) {
			bodyBackround =  userLevelInfo.getStylings(2)[0];
		}
		else if (level.equals("3")) {
			bodyBackround =  userLevelInfo.getStylings(3)[0];
		}
		else if (level.equals("4")) {
			bodyBackround =  userLevelInfo.getStylings(4)[0];
		}
		else if (level.equals("5")) {
			bodyBackround =  userLevelInfo.getStylings(5)[0];
		}
		else {
			bodyBackround = null;
		}
		return bodyBackround;
	}
	
	public String getNodeBackground(String level) {
		String nodeBackround = "";
		if (level.equals("1")) {
			nodeBackround =  userLevelInfo.getStylings(1)[1];
		}
		else if (level.equals("2")) {
			nodeBackround =  userLevelInfo.getStylings(2)[1];
		}
		else if (level.equals("3")) {
			nodeBackround =  userLevelInfo.getStylings(3)[1];
		}
		else if (level.equals("4")) {
			nodeBackround =  userLevelInfo.getStylings(4)[1];
		}
		else if (level.equals("5")) {
			nodeBackround =  userLevelInfo.getStylings(5)[1];
		}
		else {
			nodeBackround = null;
		}
		return nodeBackround;
	}
	
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
	
	public String getConnectionString(String level) {
		String connectionsToReturn;
		if (level.equals("1")) {
			connectionsToReturn = getConnections1String();
		}
		else if (level.equals("2")){
			connectionsToReturn = getConnections2String();
		}
		else if (level.equals("3")) {
			connectionsToReturn = getConnections3String();
		}
		else if (level.equals("4")) {
			connectionsToReturn = getConnections4String();
		}
		else if (level.equals("5")) {
			connectionsToReturn = getConnections5String();
		}
		else {
			connectionsToReturn = getConnections5String();
		}
		return connectionsToReturn;
	}
	
	public String getConnectionAnswerString(String level) {
		String connectionAnswersToReturn;
		if (level.equals("1")) {
			connectionAnswersToReturn = getConAns1String();
		}
		else if (level.equals("2")){
			connectionAnswersToReturn = getConAns2String();
		}
		else if (level.equals("3")) {
			connectionAnswersToReturn = getConAns3String();
		}
		else if (level.equals("4")) {
			connectionAnswersToReturn = getConAns4String();
		}
		else if (level.equals("5")) {
			connectionAnswersToReturn = getConAns5String();
		}
		else {
			connectionAnswersToReturn = getConAns5String();
		}
		return connectionAnswersToReturn;
		
	}
	
	public String sendConnectionsToDB() {
		String connectionBinary = "";
		for (int levelValue = 1; levelValue <= 5; levelValue++) {
			String levelString = String.valueOf(levelValue);
			String connectionsToAdd = getConnectionString(levelString);
			connectionBinary = connectionBinary + connectionsToAdd;
		}
		return connectionBinary;
	}
	
	public String sendConAnsToDB() {
		String conAnsBinary = "";
		for (int levelValue = 1; levelValue <= 5; levelValue++) {
			String levelString = String.valueOf(levelValue);
			String connectionsToAdd = getConnectionAnswerString(levelString);
			conAnsBinary = conAnsBinary + connectionsToAdd;
		}
		return conAnsBinary;
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
	
	public boolean getIsLevelFinished(String level) {
		boolean isLevelFinished;
		if (level.equals("1")) {
			isLevelFinished = getIsFinished1();
		}
		else if (level.equals("2")){
			isLevelFinished = getIsFinished2();
		}
		else if (level.equals("3")) {
			isLevelFinished = getIsFinished3();
		}
		else if (level.equals("4")) {
			isLevelFinished = getIsFinished4();
		}
		else if (level.equals("5")) {
			isLevelFinished = getIsFinished5();
		}
		else {
			isLevelFinished = getIsFinished5();
		}
		return isLevelFinished;
	}
	
	public String sendFinishToDB() {
		String levelFinishBinary = "FFFFF";
		if (isFinished1 == true) {
			levelFinishBinary = "TFFFF";
		}
		if (isFinished2 == true) {
			levelFinishBinary = "TTFFF";
		}
		if (isFinished3 == true) {
			levelFinishBinary = "TTTFF";
		}
		if (isFinished4 == true) {
			levelFinishBinary = "TTTTF";
		}
		if (isFinished5 == true) {
			levelFinishBinary = "TTTTT";
		}
		return levelFinishBinary;
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
	
	public void setConnectionsFromDB(String connectionBinary) {
		for (int i = 0; i < connectionBinary.length(); i++) {
			char currBinary = connectionBinary.charAt(i);
			int currConnection = 0;
			int currIndex = i % 15;
			
			if (currBinary == '1') {
				currConnection = 1;
			}
			else {
				currConnection = 0;
			}
			
			if (i >= 0 && i < 15) {
				this.setConnections1(currIndex, currConnection);
			}
			else if (i >= 15 && i < 30) {
				this.setConnections2(currIndex, currConnection);
			}
			else if (i >= 30 && i < 45) {
				this.setConnections3(currIndex, currConnection);
			}
			else if (i >= 45 && i < 60) {
				this.setConnections4(currIndex, currConnection);
			}
			else if (i >= 60 && i < 75) {
				this.setConnections5(currIndex, currConnection);
			}
		}
	}
	
	public void setConnection (int index, int newValue) {
		if (isFinished1 == false) {
			this.setConnections1(index, newValue);
		}
		else if (isFinished2 == false) {
			this.setConnections2(index, newValue);
		}
		else if (isFinished3 == false) {
			this.setConnections3(index, newValue);
		}
		else if (isFinished4 == false) {
			this.setConnections4(index, newValue);
		}
		else if (isFinished5 == false) {
			this.setConnections5(index, newValue);
		}
		else {
			this.setConnections5(index, newValue);
		}
	}
	
	
	public void setConAnsFromDB(String connectionBinary) {
		for (int i = 0; i < connectionBinary.length(); i++) {
			char currBinary = connectionBinary.charAt(i);
			boolean currConAns = false;
			int currIndex = i % 15;
			
			if (currBinary == 'T') {
				currConAns = true;
			}
			else {
				currConAns = false;
			}
			
			if (i >= 0 && i < 15) {
				this.setConAns1(currIndex, currConAns);
			}
			else if (i >= 15 && i < 30) {
				this.setConAns2(currIndex, currConAns);
			}
			else if (i >= 30 && i < 45) {
				this.setConAns3(currIndex, currConAns);
			}
			else if (i >= 45 && i < 60) {
				this.setConAns4(currIndex, currConAns);
			}
			else if (i >= 60 && i < 75) {
				this.setConAns5(currIndex, currConAns);
			}
		}
	}
	
	public void setConnectionAnswer (int index, boolean newValue) {
		if (isFinished1 == false) {
			this.setConAns1(index, newValue);
		}
		else if (isFinished2 == false) {
			this.setConAns2(index, newValue);
		}
		else if (isFinished3 == false) {
			this.setConAns3(index, newValue);
		}
		else if (isFinished4 == false) {
			this.setConAns4(index, newValue);
		}
		else if (isFinished5 == false) {
			this.setConAns5(index, newValue);
		}
		else {
			this.setConAns5(index, newValue);
		}
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
	
	public void setFinishFromDB (String finishBinary) {
		int numLevelsFinished = 0;
		for (int i = 0; i < finishBinary.length(); i++) {
			if (finishBinary.charAt(i) == 'T') {
				numLevelsFinished = numLevelsFinished + 1;
			}
		}
		
		if (numLevelsFinished >= 1) {
			this.finish1();
		}
		if (numLevelsFinished >= 2) {
			this.finish2();
		}
		if (numLevelsFinished >= 3) {
			this.finish3();
		}
		if (numLevelsFinished >= 4) {
			this.finish4();
		}
		if (numLevelsFinished >= 5) {
			this.finish5();
		}

	}
	
	public String getLevel() {
		int currentLevel = 0;
		
		if (isFinished1 == false) {
			currentLevel = 1;
		}
		else if (isFinished2 == false){
			currentLevel = 2;
		}
		else if (isFinished3 == false) {
			currentLevel = 3;
		}
		else if (isFinished4 == false) {
			currentLevel = 4;
		}
		else if (isFinished5 == false) {
			currentLevel = 5;
		}
		else {
			currentLevel = 5;
		}
		
		return Integer.toString(currentLevel);
		
	}
	
	// Get question, answer, or hint data common to all users
	public String getNodeData(String level) {
		String [] currLevelNodes;
		if (level.equals("1")) {
			currLevelNodes = userLevelInfo.getNodes(1);
		}
		else if (level.equals("2")){
			currLevelNodes = userLevelInfo.getNodes(2);
		}
		else if (level.equals("3")) {
			currLevelNodes = userLevelInfo.getNodes(3);
		}
		else if (level.equals("4")) {
			currLevelNodes = userLevelInfo.getNodes(4);
		}
		else if (level.equals("5")) {
			currLevelNodes = userLevelInfo.getNodes(5);
		}
		else {
			currLevelNodes = userLevelInfo.getNodes(5);;
		}
		return new Gson().toJson(currLevelNodes);
		
	}
	
	public String getQuestionData(String level) {
		String [][] currLevelQuestions;
		if (level.equals("1")) {
			currLevelQuestions = userLevelInfo.getQuestions(1);
		}
		else if (level.equals("2")){
			currLevelQuestions = userLevelInfo.getQuestions(2);
		}
		else if (level.equals("3")) {
			currLevelQuestions = userLevelInfo.getQuestions(3);
		}
		else if (level.equals("4")) {
			currLevelQuestions = userLevelInfo.getQuestions(4);
		}
		else if (level.equals("5")) {
			currLevelQuestions = userLevelInfo.getQuestions(5);
		}
		else {
			currLevelQuestions = userLevelInfo.getQuestions(5);
		}
		return new Gson().toJson(currLevelQuestions);
		
	}
	
	public String getAnswerData(String level) {
		int [][] currLevelAnswers;
		if (level.equals("1")) {
			currLevelAnswers = userLevelInfo.getAnswers(1);
		}
		else if (level.equals("2")){
			currLevelAnswers = userLevelInfo.getAnswers(2);
		}
		else if (level.equals("3")) {
			currLevelAnswers = userLevelInfo.getAnswers(3);
		}
		else if (level.equals("4")) {
			currLevelAnswers = userLevelInfo.getAnswers(4);
		}
		else if (level.equals("5")) {
			currLevelAnswers = userLevelInfo.getAnswers(5);
		}
		else {
			currLevelAnswers = userLevelInfo.getAnswers(5);
		}
		return new Gson().toJson(currLevelAnswers);
		
	}
	
	public String getHintData(String level) {
		String [] currLevelHints;
		if (level.equals("1")) {
			currLevelHints = userLevelInfo.getHints(1);
		}
		else if (level.equals("2")){
			currLevelHints = userLevelInfo.getHints(2);
		}
		else if (level.equals("3")) {
			currLevelHints = userLevelInfo.getHints(3);
		}
		else if (level.equals("4")) {
			currLevelHints = userLevelInfo.getHints(4);
		}
		else if (level.equals("5")) {
			currLevelHints = userLevelInfo.getHints(5);
		}
		else {
			currLevelHints = userLevelInfo.getHints(5);
		}
		return new Gson().toJson(currLevelHints);
 	}
	
	public String getHintLinkData(String level) {
		String [] currLevelHintLinks;
		if (level.equals("1")) {
			currLevelHintLinks = userLevelInfo.getHintLinks(1);
		}
		else if (level.equals("2")){
			currLevelHintLinks = userLevelInfo.getHintLinks(2);
		}
		else if (level.equals("3")) {
			currLevelHintLinks = userLevelInfo.getHintLinks(3);
		}
		else if (level.equals("4")) {
			currLevelHintLinks = userLevelInfo.getHintLinks(4);
		}
		else if (level.equals("5")) {
			currLevelHintLinks = userLevelInfo.getHintLinks(5);
		}
		else {
			currLevelHintLinks = userLevelInfo.getHintLinks(5);
		}
		return new Gson().toJson(currLevelHintLinks);
 	}
	
	//toString method
	public String toString () {
		/*
		String printID = String.valueOf(getUserID());
		String printUsername = username;
		String printPassword = password;
		String printTotalPoints = this.sendPointsToDB();
		String printConnections = this.sendConnectionsToDB();
		String printConAns = this.sendConAnsToDB();
		String printFinish = this.sendFinishToDB();
		*/
		
		/*String userInformation = "User ID: " + printID + " Username: " + printUsername + " Password: " + printPassword + 
				" Total Points: " + printTotalPoints + " Connections: " + printConnections 
				+ " ConAns: " + printConAns + " Finished: " +  printFinish;
		*/
		
		String userInformation = "";
		userInformation = userInformation + " User ID: " + this.getUserID() + "\n";
		userInformation = userInformation + " Username: " + this.username + "\n";
		userInformation = userInformation + " Password: " + this.password + "\n";
		userInformation = userInformation + " Connections1: " + this.getConnections1String() + "\n";
		userInformation = userInformation + " Connections2: " + this.getConnections2String() + "\n";
		userInformation = userInformation + " Connections3: " + this.getConnections3String() + "\n";
		userInformation = userInformation + " Connections4: " + this.getConnections4String() + "\n";
		userInformation = userInformation + " Connections5: " + this.getConnections5String() + "\n";
		userInformation = userInformation + " conAns1: " + this.getConAns1String() + "\n";
		userInformation = userInformation + " conAns2: " + this.getConAns2String() + "\n";
		userInformation = userInformation + " conAns3: " + this.getConAns3String() + "\n";
		userInformation = userInformation + " conAns4: " + this.getConAns4String() + "\n";
		userInformation = userInformation + " conAns5: " + this.getConAns5String() + "\n";
		userInformation = userInformation + " Total Points: " + this.sendPointsToDB() + "\n";
		userInformation = userInformation + " Is Finished: " + this.sendFinishToDB() + "\n";
		
		
		return userInformation;
		
		
		
	}
	
}
