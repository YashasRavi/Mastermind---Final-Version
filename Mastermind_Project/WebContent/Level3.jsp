<%@ page session = "true" import = "Mastermind_java.userManager" import = "Mastermind_java.user"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title> Mastermind - Level 3 </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href = "Level3.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <style>
  	
  	body {
  		background: linear-gradient(-45deg, #FFDEAD, #FFDAB9, #CD853F);
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
	  background-color: #A52A2A;
	  border: 5px solid orange;
	  box-shadow: 10px 10px 5px hotpink;
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
			background: yellow;
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
		LEVEL 3
		<br>
		<br> 
		This is the third level of the Mastermind game. Click the left or right edge coming out of the topmost node, and you will see
		the first set of questions appear on the right! For more specific directions, revisit your profile page by clicking the button below!
		<br>
		<br> 
		Each checkpoint is worth 20 POINTS. Good luck!
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

<form name = "checkform" class = "checkspointForm" action="Level3Checkpoint.jsp">	
	<input type="hidden" name="user" value='<%= request.getParameter("uId") %>'>
	<input type="hidden" name="level" value="3">
	<input type="hidden" name="finishCheck" value="">
	<input type="hidden" name="ConAns3String" value=""> 
	<input type="hidden" name="Connections3String" value=""> 
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

let userConnections1 = '<%= tempUser.getConnections3String() %>'
let userConAns1 = '<%= tempUser.getConAns3String() %>'
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
let nodes1 = ["BEGIN!!", "Work", "Dot-Product", "Inequalities", "Trig", "Quadratics", "Kinematics", "Triangles", "Sequences", "Stoichiometry", "Loops", "1-Node11", "1-Node12", "Click above line to finish!"];

//Links that the "Click for more information!" box redirects user to in the Hint modal.
let hintLinks = [
	"NULL",
	"https://www.mathsisfun.com/algebra/vectors-dot-product.html",
	"https://www.mathsisfun.com/algebra/inequality-solving.html",
	"https://socratic.org/questions/how-are-the-6-basic-trigonometric-functions-related-to-right-triangles",
	"https://www.mathsisfun.com/algebra/quadratic-equation.html",
	"https://courses.lumenlearning.com/boundless-physics/chapter/basics-of-kinematics/",
	"https://www.mathsisfun.com/geometry/triangles-similar-theorems.html",
	"https://courses.lumenlearning.com/boundless-physics/chapter/basics-of-kinematics/",
	"https://www.mathsisfun.com/geometry/triangles-similar-theorems.html",
	"https://www.purplemath.com/modules/series.htm",
	"https://www.khanacademy.org/science/ap-chemistry-beta/x2eef969c74e0d802:chemical-reactions/x2eef969c74e0d802:stoichiometry/a/stoichiometry",
	"https://www.tutorialspoint.com/computer_programming/computer_programming_loops.htm",
	"https://www.tutorialspoint.com/computer_programming/computer_programming_loops.htm"
];


//Hints for each connection that appears in the modal!
let hints1 = ["NULL", 
			 "The dot product of 2 vectors A = (a1)i+(a2)j+(a3)k and B = (b1)i+(b2)j+(b3)k is defined to be a1b1 + a2b2 + a3b3. The work done by a force F is the dot product of F and the displacement vector. <br> <br> Thus, for example if F = <1, 2, 3> and d = <3, 2, 1>, then the work done by F is W = 1(3) + 2(2) + 3(1) = 10 J. Also, a dot product of a vector with a multiple of itself is the multiple * (magnitude of the vector squared). For instance, A * 3A= 3|A|^2.", 
			 "It is good to write out inequalities for each situation. Inclusive means the bounds are included, and exclusive means the bounds are NOT included. <br> <br> Question 1: If 3 <= F <= 10 and 2 <= d <= 4, what is the maximum value of F*d?<br> <br> Question 2: If 3 <= F <= 10 and 2 <= d <= 4, what is the minimum value of F*d? <br> <br> Question 3: Since the upper bound is 3k+2, the maximum work occurs when F = 3k+2, so (3k+2)(4) = 20 so k = 1. Also when k = 1, 3k+2 > k.", 
			 "The questions in this set require the formula v * w = |v||w|cos(a) where a is the angle between v and w and |v| and |w| are the magnitudes of v and w respectively. So for a vector v = (v1)i+(v2)j+(v3)k, |v| = sqrt(v1^2 + v2^2 + v3^2), or the distance from the origin. Use the aforementioned formulas to solve the questions!", 
			 "A quadratic function is a function where one of the variables is being squared. Factoring quadratics is a good way to find out more about them. For instance, a^2 + 5a + 6 = (a+3)(a+2). To factor, find 2 numbers that ADD to the coefficient of a (in this case, 5) and MULTIPLY to the constant (in this case, 6). So our numbers were 3 and 2. Notice what happens to the sign of a^2+5a+6 which is (a+3)(a+2) when a < -3, a = -3, -3 < a < -2, a = -2, and a > -2. <br> <br> Question 1: Recall what it means for P(x) > Q(x). it means on the cartesian plane, P(x) is ALWAYS higher than Q(x). <br> <br> Question 2: x^2 - 3x + 2 = (x-2)(x-1). Thus, what is the range for x if (x-2)(x-1) <= 0? <br> <br> Question 3: a^2 + 2a + 4 = (a+1)^2 + 3 = (some number)^2 + 3. What is the minimum value of this? Can  (some number)^2 be less than 0?", 
			 "The horizontal component of a velocity vector v is vcos(a) and the vertical component is vsin(a). Remember that displacement (how far) is equal to vcos(a)t horizontally and vsin(a)-gt vertically (the gt is there due to gravity pulling a particle down). <br> <br> Question 1: Use vcos(a)t to find the displacement after 10 seconds! <br> <br> Question 2: Use vsin(a)t - (1/2)gt^2 to find the vertical displacement after 10 seconds. <br> <br> Question 3: Notice that the vertical component of the velocity at the end is NEGATIVE of the vertical component at launch! Thus, horizontal velocity is sqrt(3) times the vertical velocity at launch. What does this say about the angle?", 
			 " The Law of Cosines states that for a triangle ABC, if |AB| = m, |AC| = n, and angle A = a, then m^2 + n^2 - 2mn*cos(a) = |BC|^2. The Law of Sines states that for a triangle ABC with angles A, B, and C, sin(A)/|BC| = sin(B)/|AC| = sin(C)/|AB|. Use these to answer the questions! <br> <br> Question 1: Similar triangles may be helpful here. In this case, since 3|AD| = |DC|, this means that |AD| = |AC|/4 so since DE is parallel to BC, this means |DE| = |BC|/4. Thus, use the Law of Cosines to determine |BC| and then solve for |DE|! <br> <br> Question 2: The area of a triangle is given by (0.5)(|AB|)(|AC|)sin(A). Use this to find |AB|, and then use the Law of Cosines to find |BC|. <br> <br> Question 3: The expression is a manipulation of the Law of Sines, and uses the Trig identity sin(2x) = 2sin(x)cos(x). Divide both sides by (|AB|*|BC|) and you will see! Also recall the sum of the angles in ABC add to 180 degrees; use this to answer the question!", 
			 "The vertical height of a projectile is y(t) = vsin(a)t - 0.5gt^2 and the horizontal distance is x(t) = vcos(a)t. The maximum height is the vertex of y(t). If this occurs at t = T, then T = vsin(a)/g so y(T) is the maximum height. Use these to answer the questions!", 
			 "Use properties of triangles such as the Pythagorean Theorem, Law of Cosines, and Similar Triangles to answer these questions. <br> <br> Question 1: By the Pythagorean Theorem, (2k+1)^2 + (k-3)^2 = (3k+4)^2. <br> <br> Question 2: By the Law of Cosines, (2x)^2 + (x)^2 - 2(2x)(x)cos(60 deg) = sqrt(2x+1)^2. <br> <br> Question 3: Using Similar Triangles, (x+1)/(x-3) = (4x+3)/(x-2). Cross multiply to solve the quadratic!", 
			 "A Sequence is a list of numbers that can have a specific property. <br> <br> Question 1: If x = kt+5, then x(1) = 10, x(2) = 15, x(3) = 20, etc. Use this to find the value of k. <br> <br> Question 2: The sum of a sequence of n cardinal numbers is S = n(n+1)/2. For instance, 1+2+3+ ... +99+100 = 100(100+1)/2. <br> <br> Question 3: This means y(t) = 0.5st - 5t^2 and notice that the maximum occurs at k = s/20 seconds. This means y = 0 at (s/20)+3 and (s/20)-3. You can use either of those to determine the value of s. In this case, use y((s/20)+3) = 30 OR y((s/20)-3) = 30 to determine the value of s.", 
			 "Moles are a way to quantify chemicals and compounds. The # of moles in a solid is equal to (mass of solid)/(Molar Mass of the thing the solid is made of). <br> <br> Question 1: Use (s^2*sqrt(3)/2) to use density to find mass, then use the Molar Mass formula to determine the outcome. <br> <br> Question 2: An altitude splits a triangle into 2 equal halves. Less area = less mass = less # of moles! <br> <br> Question 3: The medians divide the triangle into 6 triangles with equal area!", 
			 "Draw out the code segment to see what each for loop is doing. A for loop basically repeats the code in its body (like the brackets) a fixed number of times (for ex: this would be 10 times in #2 and 20 times in #3). Also recall that Arithmetic Progressions add numbers while Geometric Progressions multiply them!", 
			 "Draw and analyze the code for each scenario, and remember that a mole is a way to quantify chemicals and compounds. The # of moles in a solid is equal to (mass of solid)/(Molar Mass of the thing the solid is made of). <br> <br> Question 1: How many slabs are there? What is the purpose of n? <br> <br> Question 2: NOTICE the loop termination condition of w < 2, so it terminates when a value of w less than 2 is passed into the loop! <br> <br> Question 3: The loop running 10 times means there are 5 bonds since each bond has 2 electrons and each iteration represents a BONDING valence electron."];

let questions1 = [
      // [Answer, Question]
   /*0*/ [
             [0, "NULL"] /*set to null so tracing code is easier!*/
         ],

    /*1*/[
             [31, "Determine the work done by a Force F = <2,3,4> N displacing the particle by <8,1,3> m."],
             [1, "If the work done by the Force F = <6a, 3a+2, 2a-1> displacing the particle by <-2,6,3> is 3a J, determine the value of |a|."],
             [4, "If the force vector is 3 times the displacement vector for a certain force F moving an object, determine the magnitude of the displacement vector if the work is W = 48 J."]
         ],
   /*2*/ [
             [40, "If the force F exerted by a person can be between 3 N and 10 N inclusive and the displacement parallel to F can be between 2 m and 4 m inclusive , what is the maximum possible work done by the person?"],
             [6, "How about the minimum possible work done by the same person?"],
             [1, "If a force F varies between k N and (3k+2) N, inclusive, for what value of k is the maximum work done to move an object 4 m parallel to the direction of F equal to 20 J?"]
         ],
   /*3*/ [
             [49, "Determine the angle in DEGREES between the vectors <2,3,6> and <5,1,2>. Round to the nearest whole number!"],
             [90, "For what angle in DEGREES between vectors v and w is the dot product of v and w equal to 0?"],
             [180, "For vectors v and w, if |v| = 3|w| and the dot product of v and w is 30, determine |w|^2 if the angle between v and w is 60 degrees."]
         ],
   /*4*/ [
             [0, "If P(x) and Q(x) are quadratic functions (meaning the degree is 2), if P(x) > Q(x) for all values of x, how many intersections do the graphs of P(x) and Q(x) have?"],
             [3, "If F(x) = x^2 - 3x + 2, then what is the sum of the minimum AND maximum value of x such that F(x) <= 0?"],
             [3, "What is the minimum value of the quadratic function f(a) = (a^2 + 2a + 4)?"]
         ],
   /*5*/ [
             [250, "A particle is launched at an angle of 60 degrees at a speed of 50 m/s. How far does the particle travel in 10 seconds?"],
             [510, "A particle is launched at an angle of 30 degrees at a speed of 200 m/s. How high is it at t = 10 seconds? Use g = 9.8 m/s^2."],
             [30, "What angle in DEGREES does a particle need to be launched at so that the horizontal velocity component is -sqrt(3) times its vertical velocity component RIGHT before it lands?"]
         ],
   /*6*/ [
             [15, "In triangle ABC with B = 60 degrees, a line parallel to BC cuts AC and AB at D and E respectively. If |AB| = 5 and |AC| = 7, determine the value of floor(10*|DE|) if 3|AD| = |DC|."],
             [12, "In triangle ABC, if A = 30 degrees, determine the value of floor(|BC|) if the area of the triangle is 50 and |AC| = 10."],
             [110, "In triangle ABC, if BC*sin(15 deg)*cos(15 deg) = AB*sin(20 deg)*cos(20 deg), determine the largest angle in ABC in DEGREES."]
         ],
   /*7*/ [
             [4, "How many seconds does it take for a particle launched at 40 m/s at an angle of 30 degrees to reach the ground? Use g = 10 m/s^2."],
             [3, "A ball launched upwards at 30 m/s reaches its highest point at how many seconds after the launch? Use g = 10 m/s^2."],
             [217, "How far (horizontally) does a particle travel if it is launched at a 30 degree angle with speed 50 m/s? Use g = 10 m/s^2. Round to the nearest whole number and submit!"]
         ],
   /*8*/ [
             [26, "For a parameter k, the sides of a right triangle are (2k+1), (k-3), and the hypotenuse is (3k+4), if K is the sum of all values of k, determine the value of |4k|."],
             [1, "For triangle ABC, if A = 60 degrees, |AB| = 2x, |AC| = x, and |BC| = sqrt(2x+1), determine the value of x if x > 0."],
             [3, "For a triangle ABC, a line DE parallel to BC is drawn, where D is in line segment AB and E is in line segment AC. If |AD| = x+1, |DB| = x-3, |AE| = 4x+3, and |EC| = x-2, determine the value of x if x > 0. Round to the nearest whole number!"]
         ],
   /*9*/ [
             [5, "A particle travels horizontally at a speed of k m/s. Let S be the sequence of distances covered at n seconds, where S = {10, 15, 20, etc} for n = 1, 2, 3, 4, etc. What is the value of k?"],
             [276, "If a car travels at 1 m/s for 0 < t < 1, then 2 m/s for 1 < t < 2, then 3 m/s for 2 < t < 3, etc, then what is the distance covered at 23 seconds (t = 23)?"],
             [60, "A particle is launched s m/s at an angle of 30 degrees. If the times t where a particle reaches a vertical height of 0 m, 45 m, and back to 0 m has a common difference of 3 seconds, determine the value of s. Use g = 10 m/s^2."]
         ],
  /*10*/ [
             [9, "A slab of metal in the shape of an equilateral triangle is made of lead (Molar Mass = 207 g/mol, Density = 11.3 g/cm^3). Determine the number of moles of lead if the slab has a side length of 20 cm. Round to the nearest whole number and submit!"],
             [20, "A uniform Titanium sword shaped like an Isosceles triangle  is cut through the altitude which is perpendicular to the base. If the original sword has n moles and each broken half has m moles, determine 10n/m. "],
             [60, "Now instead imagine the sword being broken into six pieces along the medians, determine the value of 10n/m."]
         ],
  /*11*/ [
             [110, "What is the output of the function add() where the body contains this: int a; for(int i = 0; i < array.length; i++) { a+= 2i;} Assume the array's length is 10."],
             [5, "What is the output of the code segment: int a; int count; for (int i = 0; i < 10; i++) { a = i; if (a % 2 == 0) { count++;} "],
             [3, "If a certain sequence is a Geometric Progression such that g5/g3 = 9, determine the value of k so that this code segment generates the sequence: for(let j = 0; j < 20; j *= k) { print(j); }"]
          ],
   /*12*/[
             [10, "A slab is split into 10 pieces, each with a different molar mass. The function getMass(k) returns the mass of the slab piece marked as the input k. What is the value of n that would make the code print the masses of all the slabs: for (var i = 0; i < n; i++) { print(getMass(n)); }"],
             [6, "If the smallest possible portion of a certain slab of iron is 2 g, determine how many times the following loop runs: while(w < 2) { w = w/2; }. Assume w = 128 g before this started."],
             ["chlorine", "A method is written to keep track of bonding valence electrons in a Covalent compound. If we know a certain compound contains Phosphorus (Molar Mass = 31 g/mol), has a molar mass of 208 g/mol, and the loop iterates 10 times, what is Phosphorus bonded to? Assume all bonds are single bonds. Enter the name of the ELEMENT in ALL LOWERCASE."]
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
	
	document.checkform.Connections3String.value = ConnectionsTemp;
	document.checkform.ConAns3String.value = ConAnsTemp;
	document.checkform.checkBtn.type = "submit";
}

//Makes the checkpoint button dissapear once clicked!
function closeForm () {
	document.checkform.Connections3String.value = "";
	document.checkform.ConAns3String.value = "";
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
	  alert("Correct Answer! You gained 5 points!");
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
  node.style.backgroundImage = "linear-gradient(45deg, limegreen, lightgreen)";
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
let Node1_txt = document.createTextNode("Work");
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
