<%@ page session = "true" import = "Mastermind_java.userManager" import = "Mastermind_java.user"%>

<html>
	<head>
	  <title> Mastermind - Checkpoint (Level 5) </title>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge"> 
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	</head>
	<style> 
		body {
			margin: 20px;
			background: linear-gradient(-45deg, #9370DB, #EE82EE, #DDA0DD);
  			background-repeat: no-repeat;
  			background-size: cover;
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
		
		@media only screen and (max-width: 1460px) {
			body {
				background: plum;
			}
		}
		
	
	</style>
	
	<body>
	
		<%
			int level = Integer.parseInt(request.getParameter("level"));
			String conAns_1 = request.getParameter("ConAns5String");
			String connections_1 = request.getParameter("Connections5String");
			user myUser = userManager.getUser(request.getParameter("user"));
		%>
		
		<%-- 
		level is <%= level %>
		<br>
		conAns1 is <%= conAns_1 %>
		<br>
		connections1 is <%= connections_1 %>
		<br>
		user is <%= myUser.toString() %>
		--%>
		
		
		
		
		<br> 
		<br>
	
		<%
			int counter = 0;
			for (int i = 0; i < conAns_1.length(); i++) {
				if (conAns_1.substring(i,i+1).equals("T")) {
					myUser.setConAns5(i, true);
					counter++;
				}
				else {
					myUser.setConAns5(i,false);
				}	
			}
		
			for (int j = 0; j < connections_1.length(); j++) {
				if (connections_1.substring(j,j+1).equals("0")) {
					myUser.setConnections5(j, 0);
				}
				else {
					myUser.setConnections5(j,1);
				}
			}
		
			if (counter == 4) {
				myUser.setTotalPoints(13,30);
			}
			else if (counter == 8) {
				myUser.setTotalPoints(14, 30);
			}
			else if (counter == 12) {
				myUser.setTotalPoints(15, 30);
			}
			else {
				myUser.setTotalPoints(0,0);
			}

		%>
		
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
		<br> <%--request.getParameter("user")--%>
		<%--<a href = 'Level1.jsp?uId=<%=myUser.getUsername()%>'> Return to Level 1 </a> --%>
		<div id="buttons"> 
			<button class="myBtn" onclick="location.href = 'Level5.jsp?uId=<%=myUser.getUsername()%>'"> 
			 <h5> Return to Level 5! </h5> 
			</button>
			<br>
			<br>
			<button class="myBtn" onclick="location.href = 'Mastermind_profile.jsp?username=<%=myUser.getUsername()%>&password=<%=myUser.getPassword()%>'"> 
			 <h5> Back to Profile Page! </h5> 
			</button>	
		</div>
		
	
	</body>


</html>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<script>

<%
	boolean a = false;
	if (request.getParameter("finishCheck").equals("true")) {
		myUser.finish5();
		a = true;
	}

%>

if (<%= a %>) {
	document.querySelector(".userText").innerHTML = "Congrats on finishing Level 5! You finished the entire game!!";
	
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



