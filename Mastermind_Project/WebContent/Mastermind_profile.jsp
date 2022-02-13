<%@ page  session = "true" import = "Mastermind_java.userManager" import = "Mastermind_java.user"%>

<html>

	<head>
	  <title> Mastermind - Profile Page </title>
	  <meta charset="UTF-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta http-equiv="X-UA-Compatible" content="ie=edge"> 
	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	  <!--  
	  <script
		  src="https://code.jquery.com/jquery-3.6.0.min.js"
		  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		  crossorigin="anonymous">
	  </script>
	  -->
	  <style>
	  		body {
	  			margin: 50px;
	  			background: linear-gradient(45deg, orange, lightblue);
	  		}
	  			  		
	  		.testmystuff {
	  			color: purple;
	  			text-shadow: 2px 2px 5px orange;
	  		}
	  		
	  		.showpoints {
	  			color: purple;
	  			text-shadow: 2px 2px 5px orange;
	  		}
	  		
	  		.somedirections {
	  			color: purple;
	  			font-family: "Lucida Console", "Courier New", monospace;
	  			font-weight: bold;
	  			text-shadow: 2px 2px 5px lightblue;
	  		}
	  		
	  		.carousel-item img  {
	  			height: 50vh;
	  			/*width: 50px;
	  			padding: 20px;
	  			/*margin: 0 auto;*/
	  			object-fit: center;
	  			object-position: center;
	  			overflow: hidden;
	  			opacity: 0.7;
	  			
	  		}
	  		
	  		@media only screen and (max-width: 750px) {
			  .carousel-item img {
			  	height: 30vh;
			  }
			}
			
			@media only screen and (max-width: 400px) {
				#middlestuff {
					display: none;
				}
				
				.somedirections {
					display: none;
				}
			}
	  		
	  		.CAROUSEL img  {
	  			border: 8px solid purple;
	  		}
	  		
	  	
			.carousel .carousel-indicators li {
			  	color: red;
			 }
			
			.carousel .carousel-indicators .active {
			  background-color: lightblue;
			}
			
			.carousel .carousel-control-prev-icon {
			    background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23ff00cb' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E");
			}
			
			.carousel .carousel-control-next-icon {
			    background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23ff00cb' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E");
			}
			
			.card {
				box-shadow: 10px 10px 5px purple;
				opacity: 0.85;
			}
			
			.card:hover {
				opacity: 1;
			}
							  		
	  </style>
	
	</head>
	<body>
	
	<div class="display-3" align="center"> 
	<strong> MASTERMIND - PROFILE PAGE </strong> </div>
	
	
	<br>
	<br>
	
	<h2 class="testmystuff" align="center">
		Username: <%= request.getParameter("username") %>
	</h2>
	
	<h2 class="showpoints" align="center"> 
		<!-- text is added using JS  -->
	</h2>
	
	<br>
	<br>
	
	<h3 class="somedirections" align="center">
		Use the slideshow below to learn the directions of the game!
	</h3>
	
	<h5 class="somedirections" align="center">
		NOTE: the slideshow displays a DEMO level; none of the levels actually look like what is shown!
	</h5>
	
	<%-- HashMap contains <%= userManager.print() %> --%>
	
	<br>
	
	<div id = "middlestuff" class="container"> 
		<div class="row"> 
			<div class="col-0 col-xl-3"> </div>
			<div class="col-12 col-xl-6"> 
				<div class="CAROUSEL"> <!-- align="center" -->
					<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
					  <div class="carousel-indicators">
					    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
					    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
					    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
					    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
					    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
					    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>
					  </div>
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <img src="images/Directions1.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="images/Directions2.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="images/Directions3.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="images/Directions4.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="images/Directions5.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="images/Directions6.png" class="d-block w-100" alt="...">
					    </div>
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div>	
				</div>
				
			
			</div>
			<div class="col-0 col-xl-3"> </div>
		
		</div>
	</div>		

	<br>
	<br>
	
	<h3 class="somedirections" align="center">
		Choose a level to play! 
	</h3>
	
	<br>
	<br>
	
	<div id = "allcards" class="container">
	  <div class="row">
	  <div class="col-12 col-xl-2 col-md-4">
			<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
			  <div class="card-header">Choosing Levels</div>
			  <div class="card-body">
			    <h5 class="card-title">Levels</h5>
			    <p class="card-text">Unlock levels by completing previous levels! Level 1 is already unlocked. Each level is harder than the previous one.</p>
			  </div>
			</div>	    
	    </div>
	    <div class="col-12 col-xl-2 col-md-4">
			<div class="card text-white bg-success mb-3" style="max-width: 18rem;">
			  <div id = "l1unlock" class="card-header">UNLOCKED</div>
			  <div class="card-body">
			    <h5 class="card-title">Level 1</h5>
			    <p class="card-text">The first level contains questions that combine topics from concepts in a middle school curriculum.</p>
			    <a id = "level1Link" href="#" class="btn btn-light stretched-link" target="_blank" rel="noopener noreferrer">Enter Level 1</a>
			  </div>
			</div>	    
	    </div>
	    <div class="col-12 col-xl-2 col-md-4">
	      <div class="card text-white bg-secondary mb-3" style="max-width: 18rem;">
			  <div id = "l2unlock" class="card-header">
			  	LOCKED
			  	<i class="bi bi-lock-fill"></i>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title">Level 2</h5>
			    <p class="card-text">The second level is a bit harder and draws concepts from a late-middle school curriculum.</p>
			    <a id = "level2Link" href="#" class="btn btn-light stretched-link" target="_blank" rel="noopener noreferrer">Enter Level 2</a>
			  </div>
			</div>	
	    </div>
	    <div class="col-12 col-xl-2 col-md-4">
	      <div class="card text-black bg-warning mb-3" style="max-width: 18rem;">
			  <div id = "l3unlock" class="card-header">
				  LOCKED
				  <i class="bi bi-lock-fill"></i>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title">Level 3</h5>
			    <p class="card-text">The third level has more advanced topics such as Quadratics, Stoichiometry, and Kinematics.</p>
			    <a id = "level3Link" href="#" class="btn btn-light stretched-link" target="_blank" rel="noopener noreferrer">Enter Level 3</a>
			  </div>
			</div>	
	    </div>
	    <div class="col-12 col-xl-2 col-md-4">
	      <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
			  <div id = "l4unlock" class="card-header">
			  	LOCKED
			  	<i class="bi bi-lock-fill"></i>
			  </div>
			  <div class="card-body">
			    <h5 class="card-title">Level 4</h5>
			    <p class="card-text">The fourth level is fairly challenging and draws concepts from a 9th/10th grade curriculum.</p>
			    <a id = "level4Link" href="#" class="btn btn-light stretched-link" target="_blank" rel="noopener noreferrer">Enter Level 4</a>
			  </div>
			</div>	
	    </div>
	    <div class="col-12 col-xl-2 col-md-4">
	      <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
			  <div id = "l5unlock" class="card-header">
			  	LOCKED
			  	<i class="bi bi-lock-fill"></i>	
			  </div>
			  <div class="card-body">
			    <h5 class="card-title">Level 5</h5>
			    <p class="card-text">The 5th level is rigorous, combining topics such as Derivatives, PV Graphs, and Momentum.</p>
			    <a id = "level5Link" href="#" class="btn btn-light stretched-link" target="_blank" rel="noopener noreferrer">Enter Level 5</a>
			  </div>
			</div>	
	    </div>
	  </div>
	</div>
	
	<br> <br> <br> 
		
	<div align="center" id="homeBtn"> 
		<button type="button" class="btn btn-primary" onclick="location.href = 'Mastermind_index.jsp'">
		  Return home!
		  <i class="bi bi-house-fill"></i>
		</button>
	</div>
	
	
	</body>

</html>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<script>
	
	
	document.body.style.visibility = "hidden";
	var userCheck = <%= userManager.checkUser(request.getParameter("username"), request.getParameter("password")) %>;
	
	if (<%=request.getParameter("username").isEmpty() %> || <%=request.getParameter("password").isEmpty() %>) {
		
		userCheck = false;
	}
		
	if (userCheck == true) {
		document.body.style.visibility = "visible";
		<%
			String k = request.getParameter("username");
			user tempUser = userManager.getUser(k);
		%>
		
		let showPoints = document.querySelector(".showpoints");
		showPoints.innerHTML = "Total Points: " + <%= tempUser.getTotalPoints()%>;
		showPoints.style.opacity = 0;
		
		let uName = document.querySelector(".testmystuff");
		uName.style.opacity = 0;
		
		let ALLCARDS = document.querySelector("#allcards");
		ALLCARDS.style.opacity = 0;
		
		let HomeBtn = document.querySelector("#homeBtn");
		HomeBtn.style.opacity = 0;
		
		var tick = function () {
			ALLCARDS.style.opacity = +ALLCARDS.style.opacity + 0.01;
			showPoints.style.opacity = +showPoints.style.opacity + 0.01;
			uName.style.opacity = +uName.style.opacity + 0.01;
			HomeBtn.style.opacity = +HomeBtn.style.opacity + 0.01;
			
		    if (ALLCARDS.style.opacity <= 0.85) {
		          (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16);
		    }
		};

		tick();
		
		let l1Link = document.querySelector("#level1Link");
		l1Link.href = 'Level1.jsp?uId=<%=request.getParameter("username")%>';
		
		let l2Link = document.querySelector("#level2Link");
		l2Link.href = 'Level2.jsp?uId=<%=request.getParameter("username")%>';
		l2Link.style.visibility = "hidden";
	    if (<%= tempUser.getIsFinished1() %>) {
	    	l2Link.style.visibility = "visible";
	    	document.querySelector("#l2unlock").innerHTML = "UNLOCKED";
		}
		
		let l3Link = document.querySelector("#level3Link");
		l3Link.href = 'Level3.jsp?uId=<%=request.getParameter("username")%>';
		l3Link.style.visibility = "hidden";
	    if (<%= tempUser.getIsFinished2() %>) {
	    	l3Link.style.visibility = "visible";
	    	document.querySelector("#l3unlock").innerHTML = "UNLOCKED";
		}
		
		let l4Link = document.querySelector("#level4Link");
		l4Link.href = 'Level4.jsp?uId=<%=request.getParameter("username")%>';
		l4Link.style.visibility = "hidden";
	    if (<%= tempUser.getIsFinished3() %>) {
	    	l4Link.style.visibility = "visible";
	    	document.querySelector("#l4unlock").innerHTML = "UNLOCKED";
		}
		
		let l5Link = document.querySelector("#level5Link");
		l5Link.href = 'Level5.jsp?uId=<%=request.getParameter("username")%>';
		l5Link.style.visibility = "hidden";
	    if (<%= tempUser.getIsFinished4() %>) {
	    	l5Link.style.visibility = "visible";
	    	document.querySelector("#l5unlock").innerHTML = "UNLOCKED";
		}
		
	}
	else {
		alert("The username an password you have entered to not match! Either you entered the wrong password or another user has the same username. Try with a different login!");
		window.location.replace("Mastermind_index.jsp");
	}

	

</script>