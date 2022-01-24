<%@ page session = "true" import = "Mastermind_java.userManager" import = "Mastermind_java.user"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title> Mastermind - Level 2 </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href = "Level2.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <style>
  	
  	body {
  		background: linear-gradient(-45deg, #DCDCDC, #D3D3D3, #FFF0F5);
  		background-repeat: no-repeat;
  		background-size: cover;
  		/*background-color: lightgreen;*/
  	}
  	
  	.advice {
  		display: none;
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
  	
  	
	
	.profileBtn {
		background-color: yellow;
		font-family: verdana;
		font-size: 25px;
	}
	
	hr.rounded {
		border-top: 8px solid black;
		border-radius: 5px;
	}
  	
	.question {
	  height: auto;
	  padding: 20px;
	  padding-bottom: 50px;
	  width: 400px;
	  background-color: #2F4F4F;
	  border: 5px solid orange;
	  box-shadow: 10px 10px 5px black;
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
	
	@media only screen and (max-width: 1460px) {
		body {
			background: lavender;
		}
		
		.advice {
			display: block;
			font-weight: bold;
			margin: 20px;
		}
		
		.title {
			display: none;
		}
		
		.introStuff {
			display: none;
		}
		
		.question {
			top: 120px;
		}
		
	}

  </style>
  
</head>
<body>

<!-- Access user object  -->
<%
	String k = request.getParameter("uId");
	user tempUser = userManager.getUser(k);
%>

<p class="advice"> 
	The nodes are to your right!
</p>

<div class="introStuff"> 
	<br> <br> 
	<h2 class = "title" >
	  Mastermind
	</h2>
	
	<h4 class="directions"> 
		LEVEL 2
		<br>
		<br> 
		This is the second level of the Mastermind game. Click the left or right edge coming out of the topmost node, and you will see
		the first set of questions appear on the right! For more specific directions, revisit your profile page by clicking the button below!
		<br>
		<br> 
		Each checkpoint is worth 15 POINTS. Good luck!
	</h4>
	<br> <br> 
	<div align="center"> 
		<button class="profileBtn" onclick="location.href = 'Mastermind_profile.jsp?username=<%=tempUser.getUsername()%>&password=<%=tempUser.getPassword()%>'"> 
			Back to Profile Page
		</button>
	</div>
	
	<br> <br> <br> 
	
	<hr class="rounded">

</div>

<br> <br> <br> 

<form name = "checkform" class = "checkspointForm" action="Level2Checkpoint.jsp">	
	<input type="hidden" name="user" value='<%= request.getParameter("uId") %>'>
	<input type="hidden" name="level" value="2">
	<input type="hidden" name="finishCheck" value="">
	<input type="hidden" name="ConAns2String" value=""> 
	<input type="hidden" name="Connections2String" value=""> 
	<input type ="hidden" name = "checkBtn" value="submit" class = "updateBtn"/>	
</form>


<!-- Question and answer box -->
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
			         
			         <h2 align="center"> 
							<a id = "moreInfo" href="#" target="_blank" rel="noopener noreferrer" role="button" class="btn btn-primary"> 
					      	Click for more Information!
					      </a>
					</h2>	
			         
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
	<div class = "L0-1"></div>
	<div class = "NODE1"></div>
	<div class = "L1-2"></div>
	<div class = "NODE2"></div>
	<div class = "L1-3"></div>
	<div class = "NODE3"></div>
	<div class = "L2-4"></div>
	<div class = "NODE4"></div>
	<div class = "L3-5"></div>
	<div class = "NODE5"></div>
	<div class = "L4-6"></div>
	<div class = "L5-6"></div>
	<div class = "NODE6"></div>
	<div class = "L4-7"></div>
	<div class = "L5-7"></div>
	<div class = "NODE7"></div>
	<div class = "L6-8"></div>
	<div class = "NODE8"></div>
	<div class = "L7-9"></div>
	<div class = "NODE9"></div>
	<div class = "L8-10"></div>
	<div class = "L9-10"></div>
	<div class = "NODE10"></div>
	<div class = "L10-M"></div>
	<div class = "NODEM"></div>
	<br> <br> <br> <br> <br> 
	<p class = "lastText"> </p>
</div>

<br> <br> <br> <br> <br> 


<!--  
<footer> 

</footer>
-->

</body>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

<script>


//let tStuff = document.querySelector(".teststuff");

let userConnections1 = '<%= tempUser.getConnections2String() %>'
let userConAns1 = '<%= tempUser.getConAns2String() %>'
//tStuff.innerHTML = userConnections1 + " " + userConAns1;



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
let nodes1 = ["BEGIN!!", "If-statements", "F=ma", "Primes", "Functions", "Probability", "Velocity", "Systems", "Vectors", "Lines", "Pythagoras", "1-Node11", "1-Node12", "Click above line to finish!"];

//Links that the "Click for more information!" box redirects user to in the Hint modal.
let hintLinks = [
	"NULL",
	"http://www.mem50212.com/MDME/MEMmods/MEM23109A/dynamics/F=ma/F=ma.html",
	"https://www.mathsisfun.com/prime_numbers.html",
	"https://www.mathsisfun.com/sets/function.html",
	"https://www.statisticshowto.com/probability-and-statistics/probability-main-index/how-to-find-the-probability-of-two-events-occurring-together/#:~:text=The%20best%20way%20to%20learn,the%20wording%2C%20multiply%20the%20probabilities.",
	"https://byjus.com/physics/velocity/",
	"https://www.mathsisfun.com/algebra/systems-linear-equations.html",
	"https://byjus.com/physics/velocity/",
	"https://www.mathsisfun.com/algebra/systems-linear-equations.html",
	"https://www.mathsisfun.com/algebra/vectors.html",
	"https://numberock.com/lessons/lines/",
	"https://www.mathsisfun.com/pythagoras.html",
	"https://www.mathsisfun.com/pythagoras.html"
];

//Hints for each connection that appears in the modal!
let hints1 = ["NULL", 
			 "Analyze each part of the question since each part contains valuable information. Also use Newton's 2nd Law, where F = ma where m is mass, a is acceleration, and F is applied force <br> <br> Question 1: Minimum acceleration means minimum force and maximum mass. Determine under which conditions the TOTAL force (F1+F2) is minimized and the mass is maximized! <br> <br> Question 2: If the object is made of 2 pieces of equal mass, then m has to be even! <br> <br> Question 3: If a is the acceleration and f(a) is the force, then Force =  f(a) = 2a! What does this say about the mass?", 
			 "Remember that a prime number has NO factors besides 1, and that for an integer n, we would have to check that EVERY number below (and including) sqrt(n) and ABOVE 1 are NOT factors of n.<br> <br> Question 1: Substitute the lowest prime number, and if the function returns true, keep substituting the subsequent prime! <br> <br> Question 2:  Remember that every integer from 2 to sqrt(n) cannot be factors! This means that the remainder is NOT 0, so n % k is not 0. <br> <br> Question 3: Start with the lowest integer 1 and count your way up, plugging in every number and stop once you reach an output that is prime!", 
			 "Functions require an input and an output. For a function a(t) = 2t, the acceleration at t = 3 seconds is a(3) = 2*3 = 6. Here time t is the input and acceleration a(t) is the output. Thus, force is F(t) = m*a(t)  where m is the mass. Use this to solve the questions!", 
			 "Recall that a prime number CANNOT have any factors other than 1. The first couple prime numbers are 2, 3, 5, 7, 11, etc. <br> <br> The probability of an event occurring is the chance that the event occurs. <br> <br> For example, the probability of picking 1 from the numbers in the set {1, 2, 3} is (1/3). Note that picking 1 and then 2 requires multiplying the probabilities P(picking 1) and P(picking 2 AFTER 1 is picked), so this would be (1/3)*(1/2) since after 1 is picked, there are 2 numbers remaining.", 
			 " The displacement of an object is its distance from the starting position. Thus, if an object moves from position 0 to 3 to 2, the final displacement is (2 - 0) = 2. If the object starts from 1, then goes to 3, then back to 1, the displacement is (1 - 1) = 0. <br> <br> Note that the velocity is the (displacement/time elapsed). So if the displacement is 10 meters in 2 seconds, the velocity is 5 m/s. Thus if a function s(t) = kt gives the displacement, then the velocity is s(t)/t = (kt)/t = k.", 
			 "Remember that in solving systems, we are determining which variables fit 2 scenarios. Substitution can really help in determining what the equations are. <br> <br> Question 1: If f(x) = ax + b, then we are solving the system f(3) = 1 and f(1) = 3, meaning 3a + b = 1 and a + b = 3. Solve for a and b, then determine f(-13) which is -13a+b. <br> <br> Question 2: If y = f(x) and y = g(x), then f(x) = g(x) for some x, soo 2x + 1 = 3x - 2. Solve for x, then solve for the y-coordinate which is g(x) OR f(x) at the determined value of x. <br> <br> Question 3: If f(x) and g(x) are the same, then 3a - 2 = b + 4 and 2b + 1 = 3a - 6. Solve this system and then determine the value of 6(a+b).", 
			 "Recall that velocity is (distance traveled / time elapsed). <br> <br> Question 1: Expected value is like a weighted average, so 0.6(8000)+0.4(10000). <br> <br> Question 2: Read the question carefully! The probability increases by 10 PERCENT each SECOND. So if p is the probability of exploding at t = 0, then P(exploding at t seconds) = p*(1.1)^t. Note that guaranteed to explode at 20 meters means at 20/4 = 5 seconds, P(exploding) is 1. Use this to solve for p. <br> <br> Question 3: Note that 90 miles in 3 hours means 30 mph, since the car is not accelerating. If x is the probability that it travels >= 30 mph, then 3x is the probability of traveling at <30 mph. These have to add up to 1. Use this to answer the question!", 
			 "Read each question carefully and note down any details the problem gives. Note that P(an event) is the probability that the event happens! <br> <br> Question 1: Use the fact that P(red orb) + P(blue orb) + P(green orb) = 1. <br> <br> Question 2: Note down important details here. Use a variable to represent the # of blue cars, and write the other variables (# of red cars and # of green cars) in terms of this. Note that they sum to 12 and P(green car) = (# of green cars)/(total # of cars). <br> <br> Question 3: Recall that P(A and B) = P(A)*P(B) = 0.18 and P(A or B) = P(A) + P(B) = 0.9. You can solve this system of P(A) and P(B) by substitution, but guessing and checking works better.", 
			 "Vectors are quantities that have a magnitude (length) AND direction. In each case, draw a vector with the specified speed (or calculate speed by doing distance/time). If the vectors are opposite to each other, they cancel out (like in #3). If the object does not move in a certain direction, the speed is 0 in that direction (see #2)! Also, vectors pointing in the same direction add up (see #1).", 
			 "Remember that y = f(x) means a line on the xy-plane (or cartesian plane) if f(x) is linear. For example, if f(x) = 3x + 1, then y = f(x) signifies the line y = 3x+1. <br> <br> Question 1: If f(5) = g(5) + 1 then the lines have a different y-intercept. What does this say about the lines, given the slopes are equal (meaning the lines are parallel)? <br> <br> Question 2: 2 non parallel lines can have only 1 intersection! <br> <br> Question 3: Think about how many points ALL 3 lines can intersect in. Recall that lines are straight; they aren't curves that can bend or have turning points!", 
			 "Vectors  are quantities that have a magnitude (length) AND direction. The problems here require the addition or subtraction of vectors, which utilizes the Pythagorean theorem. The final speed (or resultant speed) is the sum of squares of the 2 perpendicular speeds. <br> <br> For instance, if a car travels north at 24 mph and a westward wind blows at 7 mph, the final (resultant) speed of the car is sqrt(24^2 + 7^2) = 25 mph. Use this technique to solve the questions!", 
			 "Remember that if a certain value is on a line, then it satisfies the equation of the line. In other words, if x = k is on the line y=4x, then (k,4k) is on the line y=4x. Quadrant I means that BOTH x and y coordinates are positive. <br> <br> Question 1: For a value x = a, the point (a,3a) is on the line so (a)^2 + (3a)^2 = sqrt(40)^2 so 10a^2 = 40. <br> <br> Question 2: Here, (a, -4a) is on the line so a^2 + (-4a)^2 = sqrt(68)^2. <br> <br> Question 3: This question requires a system. If (12,16) is on the line, then 12m+n=16. The point (12,16) is 20 units from the origin, so 3n+8m=20. Solve the system and enter the sum (m+n)."];

let questions1 = [
      // [Answer, Question]
   /*0*/ [
             [0, "NULL"] /*set to null so tracing code is easier!*/
         ],

    /*1*/[
             [2, "The force F1 applied to an object varies depending on the mass m of the object, where m <= 6 kg. If the mass is at least 5 kg, then F1 = 9 N, else F1 = 12 N. An additional force F2 is applied such that if the mass is lower than 3 kg, F2 = 6 N, else F2 = 3 N. What is the minimum acceleration of the object?"],
             [3, "For an input a, the Java function getForce(int a) returns 18 if a is even and 12 if a is odd. What is the acceleration of an object made of 2 pieces, EACH of equal integer mass of 3 kg? Assume the applied force is getForce(m) where m is the total mass of the object."],
             [2, "A function f(k) contains a chain of if-else statements so the value of k is doubled. If the acceleration of an object is a, and f(a) returns the force required to accelerate it, then what is the mass of the object?"]
         ],
   /*2*/ [
             [2, "For an input k, the code segment if (k % 2 == 1) { return true; } is executed. What is the lowest value of k such that k is prime and the segment returns FALSE? "],
             [9, "The function test() takes inputs n and k, and if ((n%k == 0)) the function returns true. If n = 101, for how many values of k would test(n,k) return true to ensure that 101 is prime?"],
             [3, "A certain integer n is inputted through a code segment that halves n if n is even and triples if n is odd. What is the minimum value of n such that the output is prime?"]
         ],
   /*3*/ [
             [6000, "The acceleration of a car is given by a(t) = 3t-1 m/s^2. Determine the force exerted by the engine at t = 2 seconds if the mass is 1200 kg. "],
             [1, "If instead the acceleration was a(t) = 2t + 3, determine the time t where the force exerted is 7500 N, given that the mass is 1500 kg. "],
             [180, "If the mass AND acceleration change as functions of time, where m(t) = 2t+3 and a(t) = 7t-1, determine the force exerted at t = 3 seconds."]
         ],
   /*4*/ [
             [60, "If a random number is picked from the set {2, 3, 7, 1, 12}, what is the probability that the number is prime? Convert to a PERCENT and submit (ex: if the probability is (1/2) then submit 50)!"],
             [30, "Now instead if 2 random numbers are picked without replacement, what is the probability that the 1st number is prime AND the 2nd number is NOT? Convert to a PERCENT and submit!"],
             [0, "Given that a certain number is divisible by 3, 5, or 7, what is the probability that this number is prime?"]
         ],
   /*5*/ [
             [2, "If the displacement of a particle is given by s(t) = 2t, what is the particle's velocity?"],
             [0, "If the displacement was instead a constant quantity, where s(t) = 3, what is the particle's velocity?"],
             [10, "If the displacement is s(t) = (3a+1)t - (10a) for a constant a, what is the velocity if the particle reaches its starting point at t = 3 seconds?"]
         ],
   /*6*/ [
             [17, "If f(x) is a linear function (so f(x) = ax+b for constants a and b), where f(3) = 1 and f(1) = 3, determine the value of f(-13)."],
             [7, "The intersection of 2 lines requires us to solve a system of equations. If the functions f(x) = 2x+1 and g(x) = 3x-2 describe the lines y = f(x) and y = g(x), determine the y-coordinate of the intersection point."],
             [4, "If the functions f(x) = (3a-2)x + (2b + 1) and g(x) = (b+4)x + (3a-6) are the same, determine the value of 6(a+b)."]
         ],
   /*7*/ [
             [8800, "There is a 60% chance that the velocity of a rocket is 8000 m/s and a 40% chance that the velocity is 10000 m/s. What is the expected velocity of the rocket?"],
             [62, "The probability that an engine explodes increases by a FACTOR of 10% EACH second it is in motion. If the engine travels at 4 m/s and it is guaranteed to explode upon traveling 20 meters, what is the probability that the engine explodes BEFORE it starts moving (t = 0 seconds)? CONVERT to a percent and round your answer to the nearest whole number!"],
             [25, "A car can travel at a certain velocity between 0 mph to 60 mph. If it is 3 times more likely to travel at less than 30 mph than to travel at at least 30 mph, what is the probability that the car covers 90 miles in 3 hours without accelerating?  CONVERT to a percent and submit!"]
         ],
   /*8*/ [
             [25, "The probability of picking a red orb from a pack of orbs is 2 TIMES the probability of picking a blue orb from the same pack. If P(picking a green orb) = (1/4), what is the probability of picking a blue orb? (Assume only red, blue, and green orbs are in the pack). CONVERT to a percent and submit!"],
             [50, "There are 2 times as many red cars as blue cars, and 3 times as many green cars as blue cars. What is the probability of picking a green car if there are 12 cars in total? CONVERT to a percent and submit!"],
             [30, "If A and B are independent, disjoint events and P(A and B) = 0.18 and P(A or B) = 0.9, then determine 100*(P(A)-P(B)), assuming P(A) > P(B)."]
         ],
   /*9*/ [
             [14, "What is the total speed of a car that is moving north at 6 mph and a wind blows north at 8 mph? Ignore friction."],
             [6, "Now instead if the car was stationary and the wind blew leftward at 6 mph, what is the speed of the car? Ignore friction."],
             [0, "A swimmer trying to swim 4 miles north in 2 hours and a tide moves south at the same speed, what is the net speed of the swimmer?"]
         ],
  /*10*/ [
             [0, "Two lines in the cartesian plane have the same slope. If f(x) and g(x) represent the lines, how many solutions (x,y) are there to y = f(x) and y = g(x) if f(5) = g(5) + 1?"],
             [0, "If f(x) and g(x) are 2 lines such that f(2) = g(2) and f(3) = g(3)-1. How many values of k OTHER than k = 2 are there such that f(k) = g(k)?"],
             [1, "If y = f(x), y = g(x), and y = h(x) are 3 lines on the cartesian plane, what is the maximum number of ordered pairs (h, k) such that ALL 3 lines intersect at (h, k)?"]
         ],
  /*11*/ [
             [5, "A boat traveling north at 3 mph is diverted by an eastward wind traveling 4 mph. What is the speed in mph of the boat now?"],
             [5, "Now, a westward wind blows 8 mph, in addition to the aforementioned eastward wind. What is the speed in mph of the boat now?"],
             [120, "What speed in km/h does a plane have to travel northward to have a resultant speed of 150 km/h if there is a westward wind blowing at 90 km/h?"]
          ],
   /*12*/[
             [2, "For what point P = (x,y) on the line y = 3x in the cartesian plane is the distance sqrt(40) units from the origin? Enter the sum of the coordinates of P such that P is in Quadrant I."],
             [2, "Instead if the line was y = -4x, for what point P is the distance sqrt(68) units from the origin? Enter the sum of the coordinates of P such that P is in Quadrant I."],
             [5, "For a line y = mx+n, a certain point (12,16) on the line is at a distance of (3n+8m) from the origin. Determine the value of (m+n)."]
         ]
];


//The purpose of z is to specify under which condition conAns1[i] should assume the user input (basically, ONLY when the i'th connection is clicked!) This is so the comparison with the correct intended answer for the question is executed properly.
let z = 0;

//Boolean that determines if the user is done with the level or not!
let isFinished = false;

//div class for all the content (nodes and edges)
let ALLSTUFF = document.querySelector(".allstuff");
ALLSTUFF.style.opacity = 0;

let INTROSTUFF = document.querySelector(".introStuff");
INTROSTUFF.style.opacity = 0;

//Text at the end telling user to click Line10M
let lasttext = document.querySelector(".lastText");

//Question box
let q = document.querySelector(".question");
let q_txt1 = document.createTextNode("Question #1 shows up here!");
let q_txt2 = document.createTextNode("Question #2 shows up here!");
let q_txt3 = document.createTextNode("Question #3 shows up here!");
let a = document.querySelector(".answer1");
let b = document.querySelector(".answer2");
let c = document.querySelector(".answer3");
let s = document.querySelector(".sub");
let h = document.querySelector("#hintBtn");
let h_txt = document.querySelector("#ModalText");
let pBtn = document.querySelector(".pBtn");
let mInfo = document.querySelector("#moreInfo");

//Attaching the questions, textareeas, and buttons to the question box
q.appendChild(q_txt1);
q.appendChild(a);
q.appendChild(q_txt2);
q.appendChild(b);
q.appendChild(q_txt3);
q.appendChild(c)
q.appendChild(s);
q.appendChild(h);
q.appendChild(pBtn);

//Styling for question box
q.style.marginLeft = "1000px";
q.style.color = "yellow";
q.style.textAlign = "center";
q.style.lineHeight = "30px";
q.style.fontFamily = "cursive";

//Styling for Submit button
s.style.display = "block";
s.style.backgroundColor = "yellow";
s.style.marginLeft = "auto";
s.style.marginRight = "auto";
s.style.marginTop = "20px";
s.addEventListener("click", subT);

//Styling for hints button
h.style.backgroundColor = "yellow";
h.style.marginTop = "20px";


//Styling Back to Profile button
pBtn.style.marginTop = "20px";
pBtn.style.backgroundColor = "yellow";

//Fading everything in
var tick = function () {
	ALLSTUFF.style.opacity = +ALLSTUFF.style.opacity + 0.01;
	INTROSTUFF.style.opacity = +INTROSTUFF.style.opacity + 0.01;
	
    if (ALLSTUFF.style.opacity <= 1) {
          (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16);
    }
};

tick();

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

//Sends data from connections1 and conAns1 to another file using the checkpoint button; the other file saves the data for the instance variables in the user object.
function sendCheckPoint () {
	let ConnectionsTemp = "";
	for (let k = 0; k < connections1.length; k++) {
		ConnectionsTemp = ConnectionsTemp + connections1[k];
	}
	
	let ConAnsTemp = "";
	for (let b = 0; b < conAns1.length; b++) {
		if (conAns1[b] == true) {
			ConAnsTemp = ConAnsTemp + "T";
		}
		else {
			ConAnsTemp = ConAnsTemp + "F";
		}
	}
	
	document.checkform.Connections2String.value = ConnectionsTemp;
	document.checkform.ConAns2String.value = ConAnsTemp;
	document.checkform.checkBtn.type = "submit";
}

//Makes the checkpoint button dissapear once clicked!
function closeForm () {
	document.checkform.Connections2String.value = "";
	document.checkform.ConAns2String.value = "";
	document.checkform.checkBtn.type = "hidden";	
}

//Each index represents a text box except index = 0!
let textBoxes = [null, a, b, c];

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
	s.disabled = true;
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
	  alert("Correct Answer! You gained 3.75 points!");
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


//Purpose of update is to show the question ONLY  if the correct link is clicked (as determined by k)!
function update (k) {
	s.disabled = false;
  if (k == 13 && connections1[13] == 1) {
	q_txt1.nodeValue = "You are done with the game :)";
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
      h_txt.innerHTML = hints1[k];
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
  node.style.backgroundImage = "linear-gradient(45deg, dimgrey, silver)";
  node.style.textAlign = "center";
  node.style.lineHeight = "100px";
  
  node.style.color = "white";
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
let Node1_txt = document.createTextNode("If-statements");
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
if (conAns1[11] == true) {
	document.body.scrollIntoView();
}
else if (conAns1[5] == true) {
	Node4.scrollIntoView();
}
else if (conAns1[3] == true) {
	Node2.scrollIntoView();
}
else {
	document.body.scrollIntoView();
}

//update(13);

</script>


</html>
