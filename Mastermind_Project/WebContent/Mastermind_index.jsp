<!DOCTYPE html>
<html lang="en">
	<head>
	  <title> Mastermind - Home </title>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge"> 
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  <style> 
	  	body {
	  		padding: 50px;
	  		background: linear-gradient(45deg, green, blue);
	  		/*background-repeat: no-repeat;*/
	  	}
	  	
	  	#maintitle {
	  		font-weight: bold;
	  		text-decoration: underline;
 			text-decoration-color: lightgreen;
	  		background: -webkit-linear-gradient(lightblue, lightgreen);
 		   -webkit-background-clip: text;
      	   -webkit-text-fill-color: transparent;
	  	}
	  	
	  	#maintitle_mobile {
	  		display: none;
	  		font-size: 20px;
	  	}
	  	
	  	#subtitle {
	  		color: lightgreen;
	  	}
	  	
	  	#subBtn {
	  		background-color: white;
	  		border-radius: 10px;
	  		color: blue;
	  	}
	  	
	  	#mainimage {
	  		border: 7px solid lightgreen;
	  		width: 100%;
	  	}
	  	
	  	/* ---- */	
	  	
	  	.card {
	  		border-top: 7px solid lightgreen;
	  	}
	  	
	  	hr.rounded {
		  border-top: 8px solid lightgreen;
		  border-radius: 5px;
		}
			  	
	  	#whatIsIt {
	  		border-radius: 10px;
	  		font-size: 50px;
	  		font-weight: bold;
	  		color: darkblue;
	  		/*margin-left: 10px;*/
	  	}
	  	
	  	#exampleModal .modal-content {
	  		background-color: lightgreen;
	  	}
	  	
	  	.offcanvas {
	  		background-color: lightblue;
	  	}
	  	
	  	footer {
	  		padding: 3px;
  			background-color: lightgreen;
	  	}
	  	
	  	
	  	@media only screen and (max-width: 992px) {
	  		#mainimage {
	  			display: none;
	  		}  
	  		#whatIsIt {
				font-size: 15px;
			}
		}
		
		@media only screen and (max-width: 400px) {
			
			#maintitle {
				display: none;
			}
			
			#maintitle_mobile {
				display: block;
				color: lightgreen;
				font-weight: bold;
		  		text-decoration: underline;
	 			text-decoration-color: lightgreen;
			}
			
			#input1 {
				width: 120px;
			}
			
			#input2 {
				width: 120px;
			}

			
			
		}
		
	  	
	  	
	  	
	  	
	  </style>
	</head>
  
	  <body>
	  
	  		<h2 id = "maintitle_mobile" class="display-2" align="center">
	  			MASTERMIND 
	  		</h2>
		  	<h1 id="maintitle" class="display-2" align="center"> 
		  		MASTERMIND 
		  	</h1>
		  	
		  	<h5 id="subtitle" class="display-4" align="center"> 
		  		Skyrocket learning, boost creativity, master analytical skills
		  	</h5>
		  	
		  	<br>
		  	<br>
	  	
	  	  <div class="container-fluid"> 
			<div class="row"> 
				<div class="col-0 col-sm-4 col-lg-1"> 
				</div>
				<div class="col-12 col-sm-6 col-lg-4"> 
					<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
					  <div class="card-header">Welcome!</div>
					  <div class="card-body">
					    <h5 class="card-title">Login</h5>
					  	<p> 
					  	Enter the information below. Please use a valid username and password (they can't be blank)!
					  	<br> <br> 
					  	If you don't have an account, a new account with the username and the password that you enter will be set up for you!
					  	</p> 
					  
					  	 <!--  
			  			<form id = "userInput" action="Mastermind_profile.jsp" >  
							Username: <input id="input1" type="text" name="username" />
							
							<br/> <br/>
							
							Password: <input id="input2" type="text" name="password" />
							
							<br/> <br/>
							
							<input type="submit" id="subBtn" value="Submit" />
						 </form> 
						 --> 
						 <form action="login" method="post">
						 	 <% if (session != null && session.getAttribute("loginError") != null) { %>
						 	 	<div class="alert alert-danger" role="alert">
								  	<%= session.getAttribute("loginError") %>
								</div>
							    <% session.removeAttribute("loginError"); %>
							 <% } %>
						 	 
						 
						 	 Username: 
							 <br> 
							 <input type="text" id="input1" name="username" required>
							 <br> 
							 <br> 
							 Password: 
							 <br> 
							 <input type="password" id="input2" name="password" required>
							 <br> <br> 
							 <button id="subBtn" type = "submit" name="submit">Submit</button>
						 </form>
						 
						 
					  </div>
					</div>						
				
				</div>
				<div class="col-0 col-sm-2 col-lg-7">
					<img id = "mainimage" src="images/MImage.png">
				</div>
			</div>
		 </div>
		 
		 <br> <br> <br> <br> <br> <br>
		 
		 <hr class="rounded">
		 
		 <br> <br> <br> 
		 
		 
		 <!-- Button trigger modal. -->
		 <div align="center" id="btn_container"  class="container"> 
		 	<button type="button" id="whatIsIt" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal">
			 	 What is Mastermind? 
			</button> 	
		 </div>

			
			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">What is Mastermind?</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        Mastermind is a game that encourages you to apply concepts and ideas from different STEM fields (ex: math, biology, etc).
			        Doing this helps you learn more about individual STEM concepts and practice how they relate to each other!
			        <br><br>
			        Many roles and jobs in STEM demand people to creatively link different concepts to come up with elegant solutions;
			        this requires the development of a versatile mind and an unquenchable thirst to learn - two things that Mastermind helps you achieve!
			        <br> <br>
			        So use the sign-in box to create an account, start learning, and challenge yourself to your limits! Good luck! :D
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			<br> <br> <br> <br>
			
			<!-- Button trigger modal -->
		 <div align="center" id="btn_container" class="container" id="buttonBox"> 
		 	<button type="button" id="whatIsIt" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#exampleModal2">
			 	 How does Mastermind work? 
			</button> 	
		 </div>

			
			<!-- Modal -->
			<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-centered">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">How does Mastermind work?</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        The game has 5 levels, each level progressively harder than the last.
			        In each level, there are a set of nodes and edges (in the image below, the nodes are titled 1-Node1, 1-Node2, etc).
			  		Initially, all the nodes EXCEPT the first node are LOCKED; unlocked nodes have a title (ex: 1-Node1 in the image).
			        <br> <br>  
			        There are also edges connecting the nodes (the arrow is pointing to two of them!). 
			        Unlocked edges are solid lines, and locked connections are dotted lines. 
			        To unlock a node, you need to unlock ALL the edges connecting TO the node!
			        NOTE that the image shows a demo level; none of the levels actually look like what is shown! 
			        <br><br>
			        <img class="img-fluid" src="images/Directions1.png">
			        <br><br>
			        Clicking any edge makes a set of 3 questions appear in the question box. The questions combine concepts from the nodes that the clicked edge connects! 
			        If you get the questions right, the node that the edge connects to unlocks!
			      	<br> <br> 
			        The 1st Node is already unlocked for you. Thus, clicking any of the 2 edges from the 1st Node and answering the questions that appear unlocks the corresponding Node that the edge connects.
			        <br><br>
			        In this case, answering the questions corresponding to the edge between 1-Node1 and 1-Node2 unlocks 1-Node2! These questions would relate the concepts represented by 1-Node1 and 1-Node2. 
			        <br><br>
			        <img class="img-fluid" src="images/Directions3.png">
			        <br><br>
			       	Some nodes require 2 connections to be unlocked, such as 1-Node10 in the image below (which requires the edges from 1-Node9 and 1-Node8)!
			        <br> 
			        You reach a checkpoint for every 4 nodes you unlock. Keep playing until you unlock all the nodes in the level! 
			        <br> 
			        Good luck :D
			        <br> <br>
			        <img class="img-fluid" src="images/Directions5.png">
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			<br> <br> <br> <br>
			 
			<div align="center" id="btn_container"  class="container"> 
				<button class="btn btn-info" id="whatIsIt" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
				  About the author!
				</button>
			</div>
			
			
			<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
			  <div class="offcanvas-header">
			    <h5 class="offcanvas-title" id="offcanvasExampleLabel">About the author!</h5>
			    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			  </div>
			  <div class="offcanvas-body">
			    <div>
			      My name is Yashas Ravi, and I created Mastermind to convey my passion for applying concepts from different STEM fields.
			      <br> <br>
			      I personally love linking ideas in creative ways, especially in the realms of computer science, mathematics, and biology!
			      <br> <br>
			      Currently, I'm an undergrad at Rutgers University - New Brunswick. I am planning to double major in Computer Science and Biomathematics!
			      <br> <br>
			      Mastermind initially started as a small game with only 1 screen, where the nodes contained generic fields such as Logic, Algebra, Physics, etc.
			      It was basically a hackathon project. 
			      <br><br> 
			      After the hackathon (HackRU) was over, I decided to improve Mastermind by adding cool UIs (using Bootstrap CSS) and a way for users to save their progress using Java and JSP. 
			      I also added 4 more levels and more questions to the game! The entire website was made with raw HTML/CSS/JavaScript with the help of some frameworks!
			      <br> <br>
			      I hope that you enjoy playing the Mastermind game; it was a fun project for me, and I hope that it will be a fun experience for you as well! Good Luck! :))
			    </div> 
			  </div>
			</div>	
			
			<br> <br> <br> <br>
			
			<footer> 
			
			
			</footer>
	  
	  </body>
  
  </html>
  
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<script>
	
	
	
	let MainImage = document.querySelector("#mainimage");
	MainImage.style.marginLeft = "1000px";
	var id = setInterval(frame, 5);
	let pos = 1000;
	function frame() {
	  if (pos <= 0) {
	    clearInterval(id);
	  } else {
	    pos-=6;
	    MainImage.style.marginLeft = pos + "px";
	  }
	}
	/*
	let entries = document.querySelector("#userInput");
	if (document.querySelector("#input1").value != "" && document.querySelector("#input2").value != "") {
		//entries.action = "Mastermind_profile.jsp";
		entries.disabled = false;
	}
	*/
	
	
	document.querySelector("#subBtn").onclick = function () {
		
		if (document.querySelector("#input1").value.trim() != "" && document.querySelector("#input2").value.trim() != "") {
			//window.location.href = "http://stackoverflow.com";
			window.location.href = "Mastermind_profile.jsp?username=" + document.querySelector("#input1").value + "&password=" + document.querySelector("#input2").value;
		}
		else {
			alert("Please enter a valid username and password!");
		}
	}
	
	
	let Form = document.querySelector(".card");
	Form.style.opacity = 0;
	
	let subTitle = document.querySelector("#subtitle");
	subTitle.style.opacity = 0;
	
	var tick = function () {
		Form.style.opacity = +Form.style.opacity + 0.01;
		subTitle.style.opacity = +subTitle.style.opacity + 0.01;
		
	    if (Form.style.opacity <= 0.9) {
	          (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16);
	    }
	};

	tick();
	
	<% if (session != null && session.getAttribute("newUserConfirmed") != null) { %>
	 	window.onload = function () {
	 		alert("A user account has been created with the credentials you entered. Please log in to access your profile!");
	 	}
	    <% session.removeAttribute("newUserConfirmed"); %>
	<% } %>
	

</script>