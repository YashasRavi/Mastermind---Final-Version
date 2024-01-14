<%@ page session = "true" import = "Mastermind_java.userManager" import = "Mastermind_java.user"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
	user myUser = null;
    if (session != null && session.getAttribute("loggedUser") != null) {
    	myUser = (user) session.getAttribute("loggedUser");

    } else {
        // User is not logged in or session has expired
        response.sendRedirect("Mastermind_index.jsp");
        return;
    }
%>

<%
	//int level = Integer.parseInt(request.getParameter("level"));
	int level = Integer.parseInt(request.getParameter("level"));
	int maxLevel = Integer.parseInt(myUser.getLevel());
	
	String levelIndicator = "level" + level;
	String redirectUrl = "LevelGenerator.jsp?uId=" + myUser.getUsername() + "&level=" + level;
	if (level > maxLevel) {
		response.sendRedirect(redirectUrl);
        return;
	}
	
	String conAns_1 = request.getParameter("connectionAnswerString");
	String connections_1 = request.getParameter("connectionString");
	//user myUser = userManager.getUser(request.getParameter("user"));
	
	//String conAns_1 = myUser.getConnectionAnswerString(String.valueOf(level));
	//String connections_1 = myUser.getConnectionString(String.valueOf(level));
	
	//System.out.println("conAns: " + conAns_1);
	//System.out.println("connections: " + connections_1);
	
	
%>
		
		
	
<%
	int counter = 0;
	for (int i = 0; i < conAns_1.length(); i++) {
		//System.out.println("conAns - iteration: " + i + " value: " + conAns_1.substring(i,i+1) + " counter: " + counter);
		if (conAns_1.substring(i,i+1).equals("T")) {
			myUser.setConnectionAnswer(i, true);
			counter++;
		}
		else {
			myUser.setConnectionAnswer(i, false);
		}	
	}

	for (int j = 0; j < connections_1.length(); j++) {
		//System.out.println("connections - iteration: " + j + " value: " + connections_1.substring(j,j+1));
		if (connections_1.substring(j,j+1).equals("0")) {
			myUser.setConnection(j, 0);
		}
		else {
			myUser.setConnection(j, 1);
		}
	}

	if (counter >= 12) {
		myUser.setTotalPoints((3*level),5+(5*level));
	}
	else if (counter >= 8) {
		myUser.setTotalPoints((3*level)-1,5+(5*level));
	}
	else if (counter >= 4) {
		myUser.setTotalPoints((3*level)-2,5+(5*level));
	}
	else {
		myUser.setTotalPoints(0,0);
	}
	
%>

<% 
	
	boolean a = false;

	if (request.getParameter("finishCheck").equals("true")) {
		if (level == 1) {
			myUser.finish1();
		}
		else if (level == 2) {
			myUser.finish2();
		}
		else if (level == 3) {
			myUser.finish3();
		}
		else if (level == 4) {
			myUser.finish4();
		}
		else if (level == 5) {
			myUser.finish5();
		}
		//out.println("Congrats on finishing Level 1! Level 2 is now unlocked on your profile!");
		a = true;
	}
	
	session.setAttribute("loggedUser", myUser);
	boolean isUserUpdated = userManager.updateUserInDB(myUser);
%>


<html>
	<head>
	  <title> Mastermind - Checkpoint (Level 1) </title>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge"> 
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	</head>
	<style> 
		body {
			
			background: linear-gradient(-45deg, #ADFF2F, palegreen, #00FF7F);
  			background-repeat: no-repeat;
  			background-size: cover;
		}
		
		#navBtn {
	  		margin-left: 20px;
	  	}
		
		.all_container {
			margin-left: 30px;
		}
		
		.msg {
			background-color: lightgreen;
			border-radius: 10px;
			margin-right: 30px;
			border: 3px solid darkgreen;
		}
		
		.msg h2 {
			padding: 10px;
		}
		
		.myBtn {
			background: yellow;
		}
		
		.myBtn h5 {
			padding: 10px;
			font-family: cursive;
		}
		
		
		
	
	</style>
	
	<body>	
		
		<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
			<button class = "btn btn-primary" id = "navBtn" onclick="location.href = 'Mastermind_profile.jsp?username=<%=myUser.getUsername()%>'">
				Profile
			</button>
			<button class = "btn btn-danger" id = "navBtn" onclick = "location.href = 'logout'">
				Logout
			</button>	
		</nav>
		
		<br>
		<br>
			
		<div class = "all_container">
		
		
			<div class="msg"> 
				<h2 class="userText"> 
					Congratulations, you reached a checkpoint!!
				</h2>
			</div>
		
			<br> <br> 
			
			<div id = "showPts" class="card text-white bg-primary" style="width: 18rem;">
			  <div class="card-body">
			    <h5 class="card-title">You currently have: </h5>
			    <p id = "value" class="card-text">0 points!</p>
			  </div>
			</div>
					
			<br>
			<br> 
			<div id="buttons"> 
				<button class="myBtn" onclick="location.href = 'LevelGenerator.jsp?uId=<%=myUser.getUsername()%>&level=<%=levelIndicator%>'"> 
				 <h5 id="btn_content"> Return to Level <%= level %>! </h5> 
				</button>
				<br>
				<br>
				<button class="myBtn" onclick="location.href = 'Mastermind_profile.jsp?username=<%=myUser.getUsername()%>'"> 
				 <h5> Back to Profile Page! </h5> 
				</button>	
			</div>
			
		</div>
		
	
	</body>


</html>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.0.0/crypto-js.min.js"></script>
<script>
	

	let numpoints = <%= myUser.getTotalPoints() %>;
	
	console.log(<%= level %>);
	console.log(numpoints);
	console.log(<%= counter %>)
	

	if (<%=a%>) {
		if (<%= level==5 %>) {
			document.querySelector(".userText").innerHTML = "Congrats on finishing Level <%=level%>! You have completed the game.";
		}
		else {
			document.querySelector(".userText").innerHTML = "Congrats on finishing Level <%=level%>! Level <%=level + 1%> is now unlocked on your profile!";
		}
		
	}

let Msg = document.querySelector(".msg");
Msg.style.opacity = 0;

let showPTS = document.querySelector("#showPts");
showPTS.style.opacity = 0;

var tick = function () {
	Msg.style.opacity = +Msg.style.opacity + 0.01;
	showPTS.style.opacity = +showPTS.style.opacity + 0.01;
	
    if (Msg.style.opacity <= 0.9) {
          (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16);
    }
};

tick();

let Buttons = document.querySelector("#buttons");
Buttons.style.marginLeft = "1000px";
var id = setInterval(frame, 5);
let pos = -300;
function frame() {
  if (pos >= 0) {
    clearInterval(id);
  } else {
    pos+=2;
    Buttons.style.marginLeft = pos + "px";
  }
}


let points = <%= myUser.getTotalPoints() %>;

function animateValue(id){
    var obj = document.getElementById(id);
    var current = parseInt(obj.innerHTML);
   	let jump = Math.ceil(points/50);

    setInterval(function(){
     if (current < points) {
    	 obj.innerHTML = (current+=jump) + " points!";
     } 
     if (current > points) {
    	 obj.innerHTML = points + " points!";
    	 
     }
      	
    },50);
    
}

animateValue('value');
//document.querySelector("#value").innerHTML = points + " points!";

</script>



