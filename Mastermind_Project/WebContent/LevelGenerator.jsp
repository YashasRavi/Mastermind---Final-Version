<%@ page session = "true" import = "Mastermind_java.userManager" import = "Mastermind_java.user"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
	user tempUser = null;
    if (session != null && session.getAttribute("loggedUser") != null) {
        tempUser = (user) session.getAttribute("loggedUser");

        // Let's say the user has earned points, and you update it
        //int newPoints = calculateNewPoints(currentUser);
        //currentUser.setPoints(newPoints);

        // Update the user object in the session
        //session.setAttribute("loggedUser", currentUser);

        // Now the updated user object is in the session and can be accessed in profile.jsp
    } else {
        // User is not logged in or session has expired
        response.sendRedirect("Mastermind_index.jsp");
        return;
    }
%>


<!DOCTYPE html>
<html lang="en">
<head>
  <title> Mastermind - Level Generator </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href = "LevelGenerator.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
  
</head>

<style> 

  	html {
  		background: linear-gradient(-45deg, #ADFF2F, palegreen, #00FF7F) no-repeat fixed;
  		background-repeat: no-repeat;
  		background-size: cover;
  		width: 100vw;
  		/*background-color: lightgreen;..*/
  	}
  	
  	body {
  		min-height: 100%;
  		width: 100vw;
  		/*margin: 50px;*/
  		background: inherit;
  		position: relative;
  	}
  	
  	.advice {
  		display: none;
  	}
  	
  	#navBtn {
  		margin-left: 20px;
  	}
  	
  	.introStuff {
  		width: 80%;
  	}
  	
  	.title {
	  font-size: 50px;
	  text-align: center;
	  color: blue;
	}
	
	.directions {
	  text-align: center;
	  font-size: 20px;
	  color: black;
	  font-family: arial;
	  font-weight: bold;
	  margin-left: 50px;
	  margin-right: 50px;
	}
	
	#profileBtn {
		font-family: verdana;
		font-size: 25px;
	}
	
	#startBtn {
		font-family: verdana;
		font-size: 25px;
	}
	
	.updateBtn {
		display: none;
	}
	
	hr.rounded {
		border-top: 8px solid black;
		border-radius: 5px;
		width: 100%;
	}
	
	.showQ_container {
		width: 100%;
	}
	
	.showQ_container button {
		width: 80%;
		margin-left: 10%;
	}
  	
	.question {
	  height: auto;
	  padding: 20px;
	  padding-bottom: 50px;
	  width: 400px;
	  background-color: darkgreen;
	  border: 5px solid orange;
	  box-shadow: 10px 10px 5px green;
	  position: absolute;
	  top: 550px;
	  left: 1200px;
	  z-index: 1;
	}
	
	textarea {
	  resize: vertical;
	  max-height: 100px;
	  display: block;
	  margin-left: auto; /*centering*/
	  margin-right: auto; /*centering*/
	  margin-bottom: 10px;
	  margin-top: 10px;
	}

	.NODEM {
	  height: 100px;
	  margin-bottom: 100px;
	  width: 300px;
	  background-color: #555;
	  position: relative;
	  top: 300px;
	  left: 600px;
	  z-index: 1;
	}
	
	.lastText {
		visibility: hidden;
		color: blue;
		margin-left: 200px;
	}
	
	@media screen and (max-width: 999px) {
	    #page_navbar {
	        display: none;
	    }
}

</style>

<body>

<!-- Access user object  -->
<%
	String level = "0";

	//String k = request.getParameter("uId");
	String chosenLevel = request.getParameter("level");
	//user tempUser = userManager.getUser(k);
	
	if (chosenLevel.equals("level1")) {
		level = "1";
	}
	else if (chosenLevel.equals("level2")) {
		level = "2";
	}
	else if (chosenLevel.equals("level3")) {
		level = "3";
	}
	else if (chosenLevel.equals("level4")) {
		level = "4";
	}
	else if (chosenLevel.equals("level5")) {
		level = "5";
	}
	
	String pointsPerCheckpoint = String.valueOf(5+Integer.parseInt(level)*5);
	String pointsPerNode = String.valueOf(1.25+Integer.parseInt(level)*1.25);
	
%>

<p class="advice"> 
	The nodes are to your right!
</p>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark" id = "page_navbar">
	<button class = "btn btn-primary" id = "navBtn" onclick="location.href = 'Mastermind_profile.jsp?username=<%=tempUser.getUsername()%>'">
		Profile
	</button>
	<button class = "btn btn-danger" id = "navBtn" onclick = "location.href = 'logout'">
		Logout
	</button>
	
</nav>

<div class="introStuff"> 
	<br> <br> 
	<h2 class = "title" >
	  Mastermind
	</h2>
	
	<h4 class="directions"> 
		LEVEL <%= level %>
		<br>
		<br> 
		Click the left or right edge coming out of the topmost node, and you will see
		the first set of questions appear on the right! For more specific directions, revisit your profile page by clicking the button below!
		<br>
		<br> 
		Each checkpoint is worth <%= pointsPerCheckpoint %> POINTS. Good luck!
	</h4>
	<br> <br> 
	<div align="center"> 
		<button class="btn btn-warning" id="startBtn">
			Start Level
		</button>
		<br>
		<br>
	
		<button class="btn btn-warning" id="profileBtn" onclick="location.href = 'Mastermind_profile.jsp?username=<%=tempUser.getUsername()%>'"> 
			Back to Profile Page
		</button>
	</div>
	
	<br> <br> <br> 


</div>

<br> <br> <br> 

<form name = "checkform" class = "checkpointForm" action="LevelCheckpoint.jsp">	
	<input type="hidden" name="user" value='<%= tempUser.getUsername() %>'>
	<input type="hidden" name="level" value="">
	<input type="hidden" name="finishCheck" value="">
	<input type="hidden" name="connectionAnswerString" value=""> 
	<input type="hidden" name="connectionString" value=""> 
	<input type ="hidden" name = "checkBtn" value="submit" class = "updateBtn"/>	
</form>


<!-- Question and answer box -->
<!--  
<div class="level_question_container">
	<div class = "question"></div>
	<textarea class="answer1" name="43243" rows="2" cols = "15" placeholder="Enter answer here!"> </textarea>
	<textarea class="answer2" name="43243" rows="2" cols = "15" placeholder="Enter answer here!"> </textarea>
	<textarea class="answer3" name="43243" rows="2" cols = "15" placeholder="Enter answer here!"> </textarea>
	<button class = "sub" type = "submit" name="submit">Submit</button>
	<button id = "hintBtn" type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal3">
	  	Get a hint for this question!
	</button>
	<button class="pBtn" onclick="location.href = 'Mastermind_profile.jsp?username=<%=tempUser.getUsername()%>&password=<%=tempUser.getPassword()%>'"> 
	 	Back to Profile Page
	</button>
</div>
-->


<!-- Hint Modal  -->
			<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Hint</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			         <p id = "ModalText" > No question selected! </p>
			         <br>
			         <div class="align-self-center mx-auto">
			         	<!-- 
			         	<button type="button" id = "moreInfo" class="btn btn-primary">More Information!</button>
			         	-->
			         	
					     <h2 align="center"> 
							<a id = "moreInfo" href="#" target="_blank" rel="noopener noreferrer" role="button" class="btn btn-primary"> 
					      	Click for more Information!
					      </a>
						</h2>	
			         	 <br> 
			         </div>
			      </div>
			      
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			      </div>
			      		      
			      
			    </div>
			  </div>
			</div>


<!-- All the nodes and edges! -->
<div class = "allstuff">
	<div class="NODE0"></div>
	<div class = "L0-1" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE1" id = "node_type"></div>
	<div class = "L1-2" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE2" id = "node_type"></div>
	<div class = "L1-3" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE3" id = "node_type"></div>
	<div class = "L2-4" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE4" id = "node_type"></div>
	<div class = "L3-5" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE5" id = "node_type"></div>
	<div class = "L4-6" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "L5-6" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE6" id = "node_type"></div>
	<div class = "L4-7" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "L5-7" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE7" id = "node_type"></div>
	<div class = "L6-8" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE8" id = "node_type"></div>
	<div class = "L7-9" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE9" id = "node_type"></div>
	<div class = "L8-10" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "L9-10" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODE10" id = "node_type"></div>
	<div class = "L10-M" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"></div>
	<div class = "NODEM" id = "node_type"></div>
	<br> <br> <br> <br> <br> 
	<p class = "lastText"> </p>
</div>

<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
	 <div class="offcanvas-header">
	   <h5 class="offcanvas-title" id="offcanvasExampleLabel">Question Panel</h5>
	   <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	 </div>
	 <div class="offcanvas-body">
	   <div class="level_question_container">
			<div class = "question_in_side">
				<div class = "card" id = "q1_card">
					<div class = "card-header" id = "q1_card_title">
						Question 1
					</div>
					<div class = "card-body" id = "q1_card_question">
						<!-- Question 1 goes here  -->
					</div>
					<div class = "card-footer" id = "q1_card_answer">
						<!-- Answer 1 goes here  -->
					</div>
				</div>
				
				<br>
				
				<div class = "card" id = "q2_card">
					<div class = "card-header" id = "q2_card_title">
						Question 2
					</div>
					<div class = "card-body" id = "q2_card_question">
						<!-- Question 2 goes here  -->
					</div>
					<div class = "card-footer" id = "q2_card_answer">
						<!-- Answer 2 goes here  -->
					</div>
				</div>
				
				<br>
				
				<div class = "card" id = "q3_card">
					<div class = "card-header" id = "q3_card_title">
						Question 3
					</div>
					<div class = "card-body" id = "q3_card_question">
						<!-- Question 3 goes here  -->
					</div>
					<div class = "card-footer" id = "q3_card_answer">
						<!-- Answer 3 goes here  -->
					</div>
				</div>
				
			</div>
			<textarea class="answer1" name="43243" rows="2" cols = "15" placeholder="Enter answer here!"> </textarea>
			<br>
			<textarea class="answer2" name="43243" rows="2" cols = "15" placeholder="Enter answer here!"> </textarea>
			<br>
			<textarea class="answer3" name="43243" rows="2" cols = "15" placeholder="Enter answer here!"> </textarea>
			<br>
			<button class = "sub" type = "submit" name="submit">Submit</button>
			<button id = "hintBtn" type="button" class="btn" data-bs-toggle="modal" data-bs-target="#exampleModal3">
			  	Get a hint for this question!
			</button>
			<button class="pBtn" onclick="location.href = 'Mastermind_profile.jsp?username=<%=tempUser.getUsername()%>&password=<%=tempUser.getPassword()%>'"> 
			 	Back to Profile Page
			</button>
		</div>
	 </div>
</div>	

<br> <br> <br> <br> <br> 


<!--  
<footer> 

</footer>
-->

</body>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.0.0/crypto-js.min.js"></script>
<script>


//let tStuff = document.querySelector(".teststuff");

let userConnections1 = '<%= tempUser.getConnectionString(level) %>'
let userConAns1 = '<%= tempUser.getConnectionAnswerString(level) %>'
let userLevel = '<%= tempUser.getLevel() %>'
let userNodes = <%= tempUser.getNodeData(level) %>
let userQuestions = <%= tempUser.getQuestionData(level) %>
let userAnswers = <%= tempUser.getAnswerData(level) %>
let userHints = <%= tempUser.getHintData(level) %>
let userHintLinks = <%= tempUser.getHintLinkData(level) %>
let bodyBackgroundColor = '<%= tempUser.getBodyBackground(level) %>'
let nodeBackgroundColor = '<%= tempUser.getNodeBackground(level) %>'
//tStuff.innerHTML = userConnections1 + " " + userConAns1;


// Set background color
window.onload = function() {
    document.documentElement.style.background = bodyBackgroundColor;
};

let nodeList = document.querySelectorAll("#node_type");

nodeList.forEach(function(currentNode) {
	currentNode.style.background = nodeBackgroundColor;
});



//connections1[i] = 1 if the connection is unlocked, and 0 otherwise.
//let connections1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];


let connections1 = [];
for (let i = 0; i < userConnections1.length; i++) {
	connections1[i] = parseInt(userConnections1.substring(i,i+1));
}

//conAns1[i] = answer given by the USER to the question corresponding to the i'th connection.
//let conAns1 = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false];

let conAns1 = [];
for (let j = 0; j < userConAns1.length; j++) {
	if (userConAns1.substring(j,j+1) == "T") {
		conAns1[j] = true;
	}
	else {
		conAns1[j] = false;
	}
}

//The nodes array basically stores the names of the nodes that are to be unlocked in a specific level.
//let nodes1 = ["BEGIN!!", "PEMDAS", "Typecasting", "Number Sets", "Equations", "Measurement", "Forces", "Reactions", "Mean", "Density", "Proportions", "1-Node11", "1-Node12", "Click above line to finish!"];
let nodes1 = userNodes;


//Hints for each connection that appears in the modal!
let hints1 = userHints;

//Links that the "Click for more information!" box redirects user to in the Hint modal.
let hintLinks = userHintLinks;

let questions1 = []

// Populate question-answer array using data from server
for (let i = 0; i < userQuestions.length; i++) {
	currQuestionSet = userQuestions[i];
	currAnswerSet = userAnswers[i];
	
	let questionAnswerPairs = [];
	
	for (let j = 0; j < currQuestionSet.length; j++){
		let currPair = [currAnswerSet[j], currQuestionSet[j]];
		questionAnswerPairs.push(currPair);	
	}
	
	questions1.push(questionAnswerPairs);
}


// Start level button, which makes the level contents appear upon clicking.
let START_BTN = document.querySelector("#startBtn");
if (conAns1[1] == true) {
	START_BTN.textContent = "Continue Level!";
}


//The purpose of z is to specify under which condition conAns1[i] should assume the user input (basically, ONLY when the i'th connection is clicked!) This is so the comparison with the correct intended answer for the question is executed properly.
let z = 0;

//Boolean that determines if the user is done with the level or not!
let isFinished = false;

//div class for all the content (nodes and edges)
let ALLSTUFF = document.querySelector(".allstuff");
ALLSTUFF.style.opacity = 0;
ALLSTUFF.style.display = "none";

let INTROSTUFF = document.querySelector(".introStuff");
INTROSTUFF.style.opacity = 0;

//Text at the end telling user to click Line10M
let lasttext = document.querySelector(".lastText");

//Question box
let q = document.querySelector(".question_in_side");
let card_question1 = document.querySelector("#q1_card_question");
let card_question2 = document.querySelector("#q2_card_question");
let card_question3 = document.querySelector("#q3_card_question");
let card_answer1 = document.querySelector("#q1_card_answer");
let card_answer2 = document.querySelector("#q2_card_answer");
let card_answer3 = document.querySelector("#q3_card_answer");
let q_txt1 = document.createTextNode("Question #1 shows up here!");
let q_txt2 = document.createTextNode("Question #2 shows up here!");
let q_txt3 = document.createTextNode("Question #3 shows up here!");
let a_txt1 = document.querySelector(".answer1");
let a_txt2 = document.querySelector(".answer2");
let a_txt3 = document.querySelector(".answer3");
let sub_btn = document.querySelector(".sub");
let hint_btn = document.querySelector("#hintBtn");
let hint_txt = document.querySelector("#ModalText");
let pBtn = document.querySelector(".pBtn");
let mInfo = document.querySelector("#moreInfo");

//Attaching the questions, textareeas, and buttons to the question box
/*
q.appendChild(q_txt1);
q.appendChild(a_txt1);
q.appendChild(q_txt2);
q.appendChild(a_txt2);
q.appendChild(q_txt3);
q.appendChild(a_txt3)
*/
card_question1.appendChild(q_txt1)
card_answer1.appendChild(a_txt1);
card_question2.appendChild(q_txt2)
card_answer2.appendChild(a_txt2);
card_question3.appendChild(q_txt3)
card_answer3.appendChild(a_txt3);

q.appendChild(sub_btn);
q.appendChild(hint_btn);
q.appendChild(pBtn);

//Styling for question box
q.style.marginLeft = "1000px";
q.style.color = "black";
q.style.textAlign = "center";
q.style.lineHeight = "30px";
q.style.fontFamily = "cursive";

//Styling for Submit button
sub_btn.style.display = "block";
sub_btn.style.backgroundColor = "yellow";
sub_btn.style.marginLeft = "auto";
sub_btn.style.marginRight = "auto";
sub_btn.style.marginTop = "20px";
sub_btn.addEventListener("click", subT);

//Styling for hints button
hint_btn.style.backgroundColor = "yellow";
hint_btn.style.marginTop = "20px";

//Styling Back to Profile button
pBtn.style.marginTop = "20px";
pBtn.style.backgroundColor = "yellow";

//Initially do not show the question box
q.style.display = "none";

/*
let m = window.matchMedia("(max-width: 1460px)");
if I(m.matches) {
	let pBtn = document.querySelector(".profileBtn");
	pBtn.style.marginTop = "20px";
	q.appendChild(pBtn);
}
*/

//Fading directions in
var tickDirections = function () {
	INTROSTUFF.style.opacity = +INTROSTUFF.style.opacity + 0.01;
	
    if (INTROSTUFF.style.opacity <= 1) {
          (window.requestAnimationFrame && requestAnimationFrame(tickDirections)) || setTimeout(tickDirections, 16);
    }
};

tickDirections();


//Starting level - fades level contents in
let showNodes = function () {
	ALLSTUFF.style.display = "block";
	
	ALLSTUFF.style.opacity = +ALLSTUFF.style.opacity + 0.01;
	if (ALLSTUFF.style.opacity <= 1) {
        (window.requestAnimationFrame && requestAnimationFrame(showNodes)) || setTimeout(showNodes, 16);
  }
}

let showQuestions = function () {
	q.style.display = "block";
	var id = setInterval(frame, 5);
	let pos = 1000;
	function frame() {
	  if (pos <= 0) {
	    clearInterval(id);
	  } else {
	    pos-=6;
	    q.style.marginLeft = pos + "px";
	  }
	}
}

let startLevel = function () {
	INTROSTUFF.style.display = "none";
	showNodes();
	showQuestions();
}

START_BTN.addEventListener('click', startLevel);

//Encrypt and encode data in connections and conAns
async function generateKey() {
    const key = await window.crypto.subtle.generateKey(
        { name: "AES-GCM", length: 256 },
        true,
        ["encrypt", "decrypt"]
    );
    return key;
}

async function encryptData(data, key) {
    const encodedData = new TextEncoder().encode(data);
    const iv = window.crypto.getRandomValues(new Uint8Array(12));
    const encrypted = await window.crypto.subtle.encrypt(
        { name: "AES-GCM", iv: iv },
        key,
        encodedData
    );

    const combined = new Uint8Array(iv.byteLength + encrypted.byteLength);
    combined.set(iv);
    combined.set(new Uint8Array(encrypted), iv.byteLength);

    const base64Encrypted = btoa(String.fromCharCode.apply(null, combined));
    return base64Encrypted;
}


async function prepareAndEncrypt(ConAnsTemp, ConnectionsTemp) {

	
    const connectionsKey = await generateKey(); 
	const conAnsKey = await generateKey(); 
    const encryptedConnections = await encryptData(ConnectionsTemp, connectionsKey);
    const encryptedConAns = await encryptData(ConAnsTemp, conAnsKey);

    
    window.sessionStorage.setItem('connectionKeyAttribute', JSON.stringify(await window.crypto.subtle.exportKey('jwk', connectionsKey)));
    window.sessionStorage.setItem('conAnsKeyAttribute', JSON.stringify(await window.crypto.subtle.exportKey('jwk', conAnsKey)));
    document.checkform.connectionAnswerString.value = encodeURIComponent(encryptedConnections);
	document.checkform.connectionString.value = encodeURIComponent(encryptedConAns);
    document.checkform.checkBtn.type = "submit";
}


//Sends data from connections1 and conAns1 to another file using the checkpoint button; the other file saves the data for the instance variables in the user object.
function sendCheckPoint () {
	let currLevelFinished = <% out.print(tempUser.getIsLevelFinished(level)); %>
	
	<% 
		String strToEncode = "";
	%>
	
	if (currLevelFinished == true) {
		return;
	}
	
	let ConnectionsTemp = "";
	for (let k = 0; k < connections1.length; k++) {
		ConnectionsTemp = ConnectionsTemp + connections1[k];
		<%--
		<%
			tempUser.setConnection(level, connections1[k]);
		%>
		--%>
	}
	
	let ConAnsTemp = "";
	for (let b = 0; b < conAns1.length; b++) {
		<%--tempUser.setConnectionAnswer(level, conAns1[b]);--%>
		if (conAns1[b] == true) {
			ConAnsTemp = ConAnsTemp + "T";
		}
		else {
			ConAnsTemp = ConAnsTemp + "F";
		}
	}
	
	document.checkform.level.value = <%= level %>;
	
	
	//prepareAndEncrypt(ConAnsTemp, ConnectionsTemp);
	
	document.checkform.connectionAnswerString.value = ConAnsTemp;
	document.checkform.connectionString.value = ConnectionsTemp;
	
	
	//session.setAttribute("loggedUser", tempUser);
	document.checkform.checkBtn.type = "submit";
	
	//console.log(ConnectionsTemp);
	//console.log(ConAnsTemp);
}

//Makes the checkpoint button dissapear once clicked!
function closeForm () {
	document.checkform.connectionAnswerString.value = "";
	document.checkform.connectionString.value = "";
	document.checkform.checkBtn.type = "hidden";	
}

//Each index represents a text box except index = 0!
let textBoxes = [null, a_txt1, a_txt2, a_txt3];

//Checks the user input with the predefined output, and colors each text area red if the answer is incorrect or green if it is correct!
function checkAns (n) {
  let temp = true;
  for (let i = 1; i < textBoxes.length; i++) {
    if (textBoxes[i].value.trim() == "" || textBoxes[i].value != questions1[n][i-1][0]) {
      temp = false;
      textBoxes[i].style.backgroundColor = "pink";
    }
    else {
      textBoxes[i].style.backgroundColor = "lightgreen";
    }
  }
  return temp;
}

//If the user clicks on an edge that was unlocked, this function restores the answers the user entered, assuming they were all correct.
function returnAns (n) {
	//s.removeEventListener("click", subT);
	sub_btn.disabled = true;
	for (let d = 1; d < textBoxes.length; d++) {
		textBoxes[d].style.backgroundColor = "lightgreen";
		textBoxes[d].value = questions1[n][d-1][0];
	}
}

//Resets answers to default values
function resetAns () {
  for (let j = 1; j < textBoxes.length; j++) {
    textBoxes[j].value = "";
    textBoxes[j].style.backgroundColor = "white";
  }
}

//Resets questions to default values
function resetQues () {
  //s.addEventListener("click", subT);
  q_txt1.nodeValue = "Question #1 shows up here!";
  q_txt2.nodeValue = "Question #2 shows up here!";
  q_txt3.nodeValue = "Question #3 shows up here!";
}


//Updates the links and Nodes based on the answer given by the user to a particular question!
function subT () {
  if (z == 1 && connections1[1] == 1) {
    conAns1[1] = checkAns (z);

    //Note: The functions resetAns() and resetQues() are done inside this if-statement so textBoxes[i].value does NOT permenantly become "" and resetQues() does not permenantly change the questions1 to default values!
    if (conAns1[1]) {
      Node1.scrollIntoView();
      resetAns();
      resetQues();
      //Line12.style.borderBottomStyle = "solid";
    }

  }


  if (conAns1[1]) {
	  Line12.style.borderBottomStyle = "solid";
      Node2_txt.nodeValue = nodes1[2];
      connections1[3] = 1;

  }

  if (z == 2 && connections1[2] == 1) {
    conAns1[2] = checkAns(z);

    if (conAns1[2]) {
      Node1.scrollIntoView();
      resetAns();
      resetQues();
      //Line13.style.borderBottomStyle = "solid";
    }

  }

  if (conAns1[2]) {
	  Line13.style.borderBottomStyle = "solid";
      Node3_txt.nodeValue = nodes1[3];
      connections1[4] = 1;
  }

  if (z == 3 && connections1[3] == 1) {
    conAns1[3] = checkAns(z);
    if (conAns1[3]) {
      Node2.scrollIntoView();
      resetAns();
      resetQues();
      //Line24.style.borderBottomStyle = "solid";
    }
  }

  if (conAns1[3]) {
	  Line24.style.borderBottomStyle = "solid";
      Node4_txt.nodeValue = nodes1[4];
      connections1[5] = 1;
      connections1[6] = 1;
  }

  if (z == 4 && connections1[4] == 1) {
    conAns1[4] = checkAns(z);

    if (conAns1[4]) {
      Node3.scrollIntoView();
      resetAns();
      resetQues();
      //Line35.style.borderBottomStyle = "solid";
    }
  }

  if (conAns1[4]) {
	Line35.style.borderBottomStyle = "solid";
    Node5_txt.nodeValue = nodes1[5];
    connections1[7] = 1;
    connections1[8] = 1;
  }

  if (z == 5 && connections1[5] == 1) {
    conAns1[5] = checkAns(z);

    if (conAns1[5]) {
      Node4.scrollIntoView();
      resetAns();
      resetQues();
      //Line46.style.borderBottomStyle = "solid";
    }
  }
  
  if (conAns1[5]) {
	  Line46.style.borderBottomStyle = "solid";
  }

  if (z == 6 && connections1[6] == 1) {
    conAns1[6] = checkAns(z);

    if (conAns1[6]) {
      Node4.scrollIntoView();
      resetAns();
      resetQues();
      //Line47.style.borderBottomStyle = "solid";
    }
  }
  
  if (conAns1[6]) {
	  Line47.style.borderBottomStyle = "solid";  
  }

  if (z == 7 && connections1[7] == 1) {
    conAns1[7] = checkAns(z);

    if (conAns1[7]) {
      Node4.scrollIntoView();
      resetAns();
      resetQues();
      //Line56.style.borderBottomStyle = "solid";
    }
  }
  
  if (conAns1[7]) {
	  Line56.style.borderBottomStyle = "solid";
  }

  if (z == 8 && connections1[8] == 1) {
    conAns1[8] = checkAns(z);

    if (conAns1[8]) {
      Node4.scrollIntoView();
      resetAns();
      resetQues();
      //Line57.style.borderBottomStyle = "solid";
    }
  }
  
  if (conAns1[8]) {
	  Line57.style.borderBottomStyle = "solid";
  }

  if (conAns1[5] && conAns1[7]) {
    Node6_txt.nodeValue = nodes1[6];
    connections1[9] = 1;
  }

  if (conAns1[6] && conAns1[8]) {
    Node7_txt.nodeValue = nodes1[7];
    connections1[10] = 1;
  }

  if (z == 9 && connections1[9] == 1) {
    conAns1[9] = checkAns(z);

    if (conAns1[9]) {
      Node6.scrollIntoView();
      resetAns();
      resetQues();
      //Line68.style.borderBottomStyle = "solid";
    }
  }

  if (conAns1[9]) {
	Line68.style.borderBottomStyle = "solid";
    Node8_txt.nodeValue = nodes1[8];
    connections1[11] = 1;
  }

  if (z == 10 && connections1[10] == 1) {
    conAns1[10] = checkAns(z);

    if (conAns1[10]) {
      Node6.scrollIntoView();
      resetAns();
      resetQues();
      //Line79.style.borderBottomStyle = "solid";
    }
  }

  if (conAns1[10]) {
	Line79.style.borderBottomStyle = "solid";
    Node9_txt.nodeValue = nodes1[9];
    connections1[12]  = 1;
  }

  if (z == 11 && connections1[11] == 1) {
    conAns1[11] = checkAns(z);

    if (conAns1[11]) {
      Node9.scrollIntoView();
      resetAns();
      resetQues();
      //Line810.style.borderBottomStyle = "solid";
    }
  }

  if (conAns1[11]) {
	  Line810.style.borderBottomStyle = "solid";
  }
  
  if (z == 12 && connections1[12] == 1) {
    conAns1[12] = checkAns(z);

    if (conAns1[12]) {
      Node9.scrollIntoView();
      resetAns();
      resetQues();
      //Line910.style.borderBottomStyle = "solid";
    }
  }
  
  if (conAns1[12]) {
	  Line910.style.borderBottomStyle = "solid";
  }

  if (conAns1[11] && conAns1[12]) {
    Node10_txt.nodeValue = nodes1[10];
    connections1[13] = 1;
    lasttext.style.visibility = "visible";
    //alert("Click the line below this node to finish the level!");
    Line10M.style.borderBottomStyle = "solid";
    NodeM_txt.nodeValue = nodes1[nodes1.length-1];
    isFinished = true;
    document.checkform.finishCheck.value = "true";
    
  }
  
  //Alerts the user if the answer is correct!
  
  if (conAns1[z] == true) {
	  alert("Correct Answer! You gained " + <%= pointsPerNode %> + " points!");
  }
  
  
 
  //Checkpoint button updating!
  if ((z == 4 || z == 3) && (conAns1[3] && conAns1[4])) {
	 sendCheckPoint();
	 document.querySelector(".updateBtn").click();
  }
  else if ((z == 5 || z == 6 || z == 7 || z == 8) && (conAns1[5] && conAns1[7] && conAns1[6] && conAns1[8])) {
	 sendCheckPoint();
     document.querySelector(".updateBtn").click();
  }
  else {
	  closeForm();
  }

}


//Purpose of update is to show the question ONLY if the correct link is clicked (as determined by k)!
function update (k) {
  sub_btn.disabled = false;
  if (k == 13 && connections1[13] == 1) {
    q_txt1.nodeValue = "You are done with the level :)";
    q_txt2.nodeValue = "No more questions!";
    q_txt3.nodeValue = "No more questions!";
    
    sendCheckPoint();
	document.querySelector(".updateBtn").click();
    //alert("YOU WON!! Reload the page if you want to play again!");
    /*
    Line10M.style.borderBottomStyle = "solid";
    NodeM_txt.nodeValue = nodes1[nodes1.length-1];
    isFinished = true;
    sendCheckPoint();
	document.querySelector(".updateBtn").click();
	*/
  }
  else {
    if (connections1[k] == 1) {
      q_txt1.nodeValue = questions1[k][0][1];
      q_txt2.nodeValue = questions1[k][1][1];
      q_txt3.nodeValue = questions1[k][2][1];
      hint_txt.innerHTML = hints1[k];
      mInfo.href = hintLinks[k];
      q.scrollIntoView();
      resetAns();
    }
    else {
    	alert("This link is not unlocked yet!");
    }
  }
  
  if (k != 13 && conAns1[k] == true) {
	  returnAns(k);
  }
  
}

function mature (node, txt) {
  node.appendChild(txt);
  //node.style.backgroundColor = "linear-gradient(-45deg, red, yellow)";
  node.style.backgroundImage = "linear-gradient(45deg, red, orange)";
  node.style.textAlign = "center";
  node.style.lineHeight = "100px";
  
  node.style.color = "black";
  node.style.fontWeight = "bold";
  node.style.fontSize = "12px";
  node.style.fontFamily = "cursive";
  node.style.border = "3px solid black";
  node.style.boxShadow = "5px 5px 10px blue";
}

let Node0 = document.querySelector(".NODE0");
let Node0_txt = document.createTextNode("BEGIN!!");
mature(Node0, Node0_txt);

let Line01 = document.querySelector(".L0-1");
//Line01.addEventListener("click", f01);
connections1[1] = 1;
connections1[2] = 1;


let Node1 = document.querySelector(".NODE1");
//let Node1_txt = document.createTextNode("___________ " + "Node 1: " + "Divergence Theorem");
let Node1_txt = document.createTextNode(nodes1[1]);
Line01.style.borderBottomStyle = "solid";
mature(Node1, Node1_txt);

let Line12 = document.querySelector(".L1-2");
Line12.addEventListener("click", function () { z = 1; update(1);});

let Node2 = document.querySelector(".NODE2");
let Node2_txt = document.createTextNode("");
mature(Node2, Node2_txt);

let Line13 = document.querySelector(".L1-3");
Line13.addEventListener("click", function () {z = 2; update(2);});

let Node3 = document.querySelector(".NODE3");
let Node3_txt = document.createTextNode("");
mature(Node3, Node3_txt);

let Line24 = document.querySelector(".L2-4");
Line24.addEventListener("click", function () {z = 3; update(3);});

let Node4 = document.querySelector(".NODE4");
let Node4_txt = document.createTextNode("");
mature(Node4, Node4_txt);

let Line35 = document.querySelector(".L3-5");
Line35.addEventListener("click", function () {z = 4; update(4);});

let Node5 = document.querySelector(".NODE5");
let Node5_txt = document.createTextNode("");
mature(Node5, Node5_txt);

let Line46 = document.querySelector(".L4-6");
Line46.addEventListener("click", function () {z = 5; update(5);});
let Line47 = document.querySelector(".L4-7");
Line47.addEventListener("click", function () {z = 6; update(6);});

let Node6 = document.querySelector(".NODE6");
let Node6_txt = document.createTextNode("");
mature(Node6, Node6_txt);

let Line56 = document.querySelector(".L5-6");
Line56.addEventListener("click", function () {z = 7; update(7);});
let Line57 = document.querySelector(".L5-7");
Line57.addEventListener("click", function () {z = 8; update(8);});

let Node7 = document.querySelector(".NODE7");
let Node7_txt = document.createTextNode("");
mature(Node7, Node7_txt);

let Line68 = document.querySelector(".L6-8");
Line68.addEventListener("click", function () {z = 9; update(9);});

let Node8 = document.querySelector(".NODE8");
let Node8_txt = document.createTextNode("");
mature(Node8, Node8_txt);

let Line79 = document.querySelector(".L7-9");
Line79.addEventListener("click", function () {z = 10; update(10);});

let Node9 = document.querySelector(".NODE9");
let Node9_txt = document.createTextNode("");
mature(Node9, Node9_txt);


let Line810 = document.querySelector(".L8-10");
Line810.addEventListener("click", function () {z = 11; update(11);});
let Line910 = document.querySelector(".L9-10");
Line910.addEventListener("click", function () {z = 12; update(12);});

let Node10 = document.querySelector(".NODE10");
let Node10_txt = document.createTextNode("");
mature(Node10, Node10_txt);

let Line10M = document.querySelector(".L10-M");
Line10M.addEventListener("click", function () {z = 13; update(13);});

let NodeM = document.querySelector(".NODEM");
let NodeM_txt = document.createTextNode("");
mature(NodeM, NodeM_txt);

subT();

let width = window.innerWidth;

	if (conAns1[11] == true) {
		document.body.scrollIntoView();
		/*
		if (width < 1000) {
			Node1.scrollIntoView();
		}
		else {
			document.body.scrollIntoView();
		}
		*/
	}
	else if (conAns1[5] == true) {
		Node4.scrollIntoView();
	}
	else if (conAns1[3] == true) {
		Node2.scrollIntoView();
	}
	else {
		document.body.scrollIntoView();
		/*
		if (width < 1000) {
			Node1.scrollIntoView();
		}
		else {
			document.body.scrollIntoView();
		}
		*/
	}
	


//update(13);

</script>


</html>
