<%@ page session = "true" import = "Mastermind_java.userManager" import = "Mastermind_java.user"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title> Mastermind - Level 1 </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href = "Level1.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  
  
</head>

<style> 

  	body {
  		background: linear-gradient(-45deg, #ADFF2F, palegreen, #00FF7F);
  		background-repeat: no-repeat;
  		background-size: cover;
  		/*background-color: lightgreen;..*/
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
	
	.updateBtn {
		display: none;
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
	
	@media only screen and (max-width: 1460px) {
		body {
			background: lightgreen;
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
			/*margin-right: 30px;*/
		}
		
		
		
	}

</style>

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
		LEVEL 1
		<br>
		<br> 
		This is the first level of the Mastermind game. Click the left or right edge coming out of the topmost node, and you will see
		the first set of questions appear on the right! For more specific directions, revisit your profile page by clicking the button below!
		<br>
		<br> 
		Each checkpoint is worth 10 POINTS. Good luck!
	</h4>
	<br> <br> 
	<div align="center"> 
		<button class="profileBtn" onclick="location.href = 'Mastermind_profile.jsp?username=<%=tempUser.getUsername()%>&password=<%=tempUser.getPassword()%>'" > 
			Back to Profile Page
		</button>
	</div>
	
	<br> <br> <br> 
	
	<hr class="rounded">

</div>

<br> <br> <br> 

<form name = "checkform" class = "checkpointForm" action="Level1Checkpoint.jsp">	
	<input type="hidden" name="user" value='<%= request.getParameter("uId") %>'>
	<input type="hidden" name="level" value="1">
	<input type="hidden" name="finishCheck" value="">
	<input type="hidden" name="ConAns1String" value=""> 
	<input type="hidden" name="Connections1String" value=""> 
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

let userConnections1 = '<%= tempUser.getConnections1String() %>'
let userConAns1 = '<%= tempUser.getConAns1String() %>'
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
let nodes1 = ["BEGIN!!", "PEMDAS", "Typecasting", "Number Sets", "Equations", "Measurement", "Forces", "Reactions", "Mean", "Density", "Proportions", "1-Node11", "1-Node12", "Click above line to finish!"];

//Hints for each connection that appears in the modal!
let hints1 = ["NULL", 
			"In Java, the (int) function removes the decimal part of a number. For instance, (int)(4.2) = 4. Similarly in python, int(4.2) = 4. This is called typecasting. Remember in the order of operations, whatever is inside the parenthesis is always done first! So (int)(4+3) = (int)(7) = 7. ", 
			"Integers include positive and negative numbers and have NO decimals; for instance, -4, 2, and 0 are integers while 0.5 and 1.4 aren't. <br><br> Real numbers include decimals AND integers; thus, numbers such as 1/3, 2.5, -0.4 are all real.  <br><br> Natural numbers are integers GREATER than 0; thus, these would be the counting numbers 1,2,3, etc. <br> <br>Remember that in the order of operations, parenthesis come first! ", 
			"Recall that integers are  positive and negative numbers and have NO decimals; for instance, -4, 2, and 0 are integers while 0.5 and 1.4 aren't. However, real numbers can be integers OR decimal numbers, so numbers such as 1/3, 2.5, -0.4 are all real. <br> <br> Also remember that in typecasting, the Java function Integer.parseInt() essentially converts a String to an integer. <br> For instance, Integer.parseInt('123') = 123,. <br> <br> The Python int() function removes the decimal portion of the input; thus, int(4.2) = 4, int(3.9) = 3. and int(0.5) = 0.", 
			"The questions in this set require you to count the number of integers in a range (for the 1st 2 questions) or find the lowest possible number such that it can be ROUNDED to an integer (3rd question). <br> <br> Question 1:  Reading the question can help clarify things. Note that 'between 2 and 10' means GREATER than 2 and LESS than 10. Also, different sounds for each integer basically means distinct integers. <br> <br> Question 2: Note that 3542 meters would be 3.542 kilometers; the length of the road has to be an integer LESS than 3.542. <br> <br> Question 3: The wording could be a bit confusing here. Remember that in rounding, if the decimal part is >=0.5 we round up, else we round down. Think about multiples of (1/5) that are close to 6, such that if we round that multiple we get 6. Then, determine the minimum of those!", 
			"Note that if an object is not moving, the NET force is 0. This means that the TOTAL force on ONE side is EQUAL to the TOTAL force on the OTHER side. <br> <br> Question 1: Mack and Bob exert 3 N and 5 N, so the total force on their side is 8 N. Jack exerts 2 N of force and we don't know Jill's force, but we know that the TOTAL force from Jill AND Jack has to be 8 N since the box doesn't move! <br> <br> Question 2: The tension in a rope is the force that holds the box up, and gravity pulls the box down. If the box is static, the tension force is the SAME as the force of gravity (which is F = mg). <br> <br> Question 3: Set the dog's force as a variable, and keep track of who is on each side. Also note that the box doesn't move, so the TOTAL force from each side has to be the same!", 
			"These questions mostly require the law of conservation of mass, which states that the TOTAL mass of reactants is equal to the TOTAL mass of products. <br> <br> Question 1: We know the mass of Oxygen and Methane that reacted and the mass of H2O produced. Note that mass(O2) + mass(Methane) = mass(CO2) + mass(H2O). <br> <br> Question 2: This question is similar to question #1, but make sure that in this case, 0.5*(total mass of reactants) = total mass of products. The mass of the product CANNOT exceed the mass of reactants, so mass(H2O) has to be LESS than 0.5*(mass(H2) + mass(O2))! <br> <br> Question 3: Here, we are given the mass of one of the reactants (Carbonate) as a PROPORTION of the mass of the product (CaCO3). Thus, mass(Calcium) + 0.6*mass(CaCO3) = mass(CaCO3).", 
			"Note common uses such as 1 km = 1000 m, 1 kg = 1000 g, 1 kN = 1000 N, etc. kilo- means 'thousand'! Also, centi- means 'hundred', so 1 m = 100 cm and 1 g = 100 cg (centigrams). <br> <br> Question 1: Convert g to kg and km to m to convert g*km/s^2 to the familiar 1 N = kg*m/s^2! <br> <br> Question 2: Note that 1 N has 100 cN and 1 kN has 1000 N. <br> <br> Question 3: The metric kg/(m*s^2) is the same as (kg*m/s^2)/m^2, or Force per unit area (the pressure)! Also be careful that force is in meters while the dimensions of the surface are given in cm!", 
			"For sig-figs, locate the FIRST nonzero number, and count EVERY digit after (AND including) that number. <br> <br> For example, for 12.1, this has 3 sig-figs since the 1st non zero digit is the 1 (in the tens place), and there are 3 digits after and including that. <br> <br> Another example is 230.06 which has 5  sig-figs since the first nonzero digit is the 2 in the hundreds place, and there are 5 digits after and including the 2. <br> <br> For actual measurements, drop the last digit, so 101.05 liters is counted as 101.0 liters; now enter how many sig-figs 101.0 has!", 
			"Average force means the weighted average force over the time period. So if a force acts such as F = F1 over t1 seconds and F = F2 over t2 seconds, then the average force is (F1*t1 + F2*t2)/(t1+t2). Basically the weighted sum of forces over the FULL time interval. <br> <br> Note that this is different from the average OF multiple forces (question #2), which is simply the sum of forces divided by the number of forces!", 
			"Remember that mass = volume * density! <br> <br> Question 1: recall that if the side length of a cube is s, then SA = 6s^2 and volume = s^3. <br> <br> Question 2: The top and bottom half have the same volume, so mass depends only on density! The question asks for a RATIO; in this case, (Mass of top half)/(Mass of bottom half). <br> <br> Question 3: Find the mass of Sodium first! Recall that the volume of a sphere is (4/3)(3.14)*r^3 where r is the radius. Also remember that the total mass of NaCl product is the sum of masses of the reactants (Sodium and Chloride)!", 
			"An important thing to know about these questions is that for a proportion y = kx, then (average of y) = k*(average of x). This can be used to solve questions #1 and #2. <br> <br> For question #3, it is helpful to write the average of L and N in TERMS of the average of G. As such, (average G) = 2*((1/3) * average G) + m * ((2/3) * average G). Now you can solve for m!", 
			"Recall that Mass/Volume = density, and make sure to remember that direct proportion between A and B means A=kB and inverse proportion means AB = k. <br> <br> Question 1: Recall that Mass = volume * density, so what happens to the mass if volume is tripled and density is doubled? <br> <br> Question 2: If D is inversely proportional to d, then D*d = constant of proportionality. Recall that d = m/V, so after substitution notice that we have mD/V = 2*(mD/2V)! <br> <br> Question 3: Note that d = m/V so if V = kT where T is temperature, then d = m/(kT). Thus, what happens if T is halved?"
			];

//Links that the "Click for more information!" box redirects user to in the Hint modal.
let hintLinks = [
	"NULL",
	"https://en.wikipedia.org/wiki/Type_conversion",
	"https://www.mathsisfun.com/sets/number-types.html",
	"https://www.mathsisfun.com/algebra/equation-formula.html",
	"https://www.splashlearn.com/math-vocabulary/geometry/metric-system#:~:text=The%20metric%20system%20is%20a,and%20weight%20(mass)%20respectively.&text=The%20units%20to%20the%20left,the%20unit%20to%20its%20right.",
	"https://www.physicsclassroom.com/class/newtlaws/Lesson-2/The-Meaning-of-Force",
	"https://www.khanacademy.org/science/biology/chemistry--of-life/chemical-bonds-and-reactions/a/chemical-reactions-article",
	"https://www.physicsclassroom.com/class/newtlaws/Lesson-2/The-Meaning-of-Force",
	"https://www.khanacademy.org/science/biology/chemistry--of-life/chemical-bonds-and-reactions/a/chemical-reactions-article",
	"https://www.statisticshowto.com/probability-and-statistics/statistics-definitions/mean-median-mode/",
	"https://www.britannica.com/science/density",
	"https://www.mathsisfun.com/algebra/proportions.html",
	"https://www.mathsisfun.com/algebra/proportions.html"
];

let questions1 = [
      // [Answer, Question]
   /*0*/ [
             [0, "NULL"] /*set to null so tracing code is easier!*/
         ],

    /*1*/[
             [8, "Evaluate the Java expression 5+(int)(3.7)."],
             [15, "Evaluate the Python expression int(3+int(12.4))."],
             [0, "Evaluate the Java expression ((int)(0.7)/4)."]
         ],
   /*2*/ [
             [1, "If n is a natural number and (3+(4+n)) is even, determine the lowest possible value of n."],
             [3, "If n is a natural number such that 1 < n < 4, and (7+3n)/(5-n) is an integer, determine the value of n."],
             [4, "If q is a positive real number and q/sqrt(2) is an integer, determine the lowest possible value of q^4."]
         ],
   /*3*/ [
             [2, "If the Java expression (x+Integer.parseInt('12')) = 14 holds for a real number x, determine the value of x."],
             [2, "If the Python expression int(3+4x) = 11 for an integer x, determine the value of x."],
             [24, "If the Python expression int(x+0.5) = 12 holds for a real number x, determine the range for x such that a <= x < b where a and b are real numbers. Enter (a+b)."]
         ],
   /*4*/ [
             [7, "Researchers are working with a container of water. The level of water in a container is always BETWEEN 2 feet and 10 feet deep. Whenever the water level is an integer, an alarm goes off that notifies the researchers. The sound of the alarm depends on which integer it is. How many different possible sounds can there be?"],
             [3, "The metric system uses powers of 10 to measure quantities. The basic unit of length is a meter, and 1 kilometer has 1000 meters. If the length of a road has to be less than 3542 meters, then how many possible lengths are there such that the number of KILOMETERS is an integer?"],
             [28, "Rounding error can lead to inaccurate measurements in science. Let S be the set of rational numbers that are multiples of (1/5). If the length of a hammer is ROUNDED to be 6 cm and the ACTUAL length is part of the set S, determine 5 TIMES the lowest possible length of the hammer."]
         ],
   /*5*/ [
             [6, "A box is pushed to the left by Mack and Bob, and pushed to the right by Jack and Jill. If Mack, Bob, and Jack exert a force of 3 N, 5 N, and 2 N respectively, how much force does Jill exert if the box DOES NOT move? "],
             [98, "The force of gravity F is proportional to the mass of an object, where F = mg where g is 9.8 m/s^2. If a box of mass 10 kg hangs from the ceiling using a rope, determine the tension in the rope."],
             [84, "Assume that the force exerted by a person is 3 times the force exerted by a dog. Also, the force exerted by a horse is 952 N. If 10 people and 5 dogs push a box while 1 person and a horse pull it, and the box does not move, determine the force exerted by a SINGLE person. "]
         ],
   /*6*/ [
             [44, "A chemical reaction takes place where methane (CH4) reacts completely with Oxygen (O2) to generate Carbon Dioxide (CO2) and water (H2O). If 64 g of Oxygen reacts with 16 g of Methane to produce 36 g of water, how many grams of Carbon Dioxide is produced?"],
             [18, "The generation of water molecules can be done by reacting hydrogen gas (H2) with oxygen molecules (O2). In a certain reaction chamber, 50% of the reactants (H2 and O2) actually react to form water. If the chamber starts with 32 g of O2 and 4 g of H2, what is the maximum mass of water (H2O) produced?"],
             [100, "If Calcium ions and Carbonate ions react to form solid Calcium Carbonate (CaCO3). If the 40 g of Calcium ions reacted and the mass of Carbonate ions reacted is 60% the mass of Calcium Carbonate produced, determine the mass of CaCO3 generated from the reaction."]
         ],
   /*7*/ [
             [1, "The convention unit of a Newton is kg*m/s^2 where kg is kilogram, m is meters, and s is second. How many Newtons would be in a unit designated as g*km/s^2?"],
             [300000, "If an elephant hits a wall with 3 kN (kilonewtons) of force, how many centinewtons (cN) does the elephant exert?"],
             [120, "If a certain metric has units of kg/(m*s^2), determine the value of this metric for a force exerting 30 N over a surface that is 50 cm wide and 50 cm long."]
         ],
   /*8*/ [
             [3, "Significant Figures (sig-figs) are used to measure quantities in experiments to standardize precision. For a number such as 0.045, the number of sig-figs is equal to the number of digits after AND including the FIRST nonzero digit. Thus, 0.045 has 2 sig-figs. Using this scheme, how many sig-figs does 0.0207 have?"],
             [5, "How many sig-figs does 10.020 have?"],
             [4, "When taking measurements, we drop the last digit and then count the number of  sig-figs. For instance, for a measurement of 2.56 kg, we take it as 2.5 kg to avoid measurement errors. Thus, if a can of water has 101.05 liters,  how many sig-figs would we be counting in?"]
         ],
   /*9*/ [
             [6, "If  a certain force field applies a force of 8 N for 10 seconds and a force of 5 N for the next 20 seconds, what is the average force over the 30 seconds?"],
             [20, "Constant forces F1, F2, and F3 are applied on an object over a period of time. If the net force is 60 N, what is the average of F1, F2, and F3? "],
             [7, "A force of F1 = 15 N applied for 3 seconds, and force F2 is applied over the next 5 seconds. If the average force over the time period is 10 N, determine the value of F2."]
         ],
  /*10*/ [
             [90744 , "A cube of lead with a surface area of 24 m^2. What is the mass of the cube in kg? The Density of lead is 11343 kg/m^3."],
             [2, "A material with an unknown density is shaped as a cylinder where the top half has a density 2 TIMES the bottom half. What is the ratio of the mass of the top half to the mass of the bottom half?"],
             [279, "A sphere of Sodium (Na) with radius 3 m reacts with an 169 g of Chloride gas to form solid Sodium Chloride (NaCl). What is the mass of Sodium Chloride produced? The Density of Sodium is 968 kg/m^3. Round to the nearest integer."]
         ],
  /*11*/ [
             [36, "If the price of a box is proportional to its volume, then what is the mean price if the average volume is 12 m^3? The constant of proportionality is 3. "],
             [3, "Determine the constant of proportionality k for a relation where G = k*L for an input L and an output G, if the average value of L is (1/3) the average value of G."],
             [2, "If instead G = k*L + m*N for inputs L and N, such that k = 2 and the average of N is (2/3) the average of G and the average of L is (1/3) the average of G, determine the value of 4m."]
          ],
   /*12*/[
             [6, "If the density of material A is twice the density of material B, and a solid made of material A takes up thrice of the volume as material as a solid made of material B, then determine the value of k if (mass of A) = k*(mass of B)."],
             [5, "If a certain metric D for a material  X is inversely proportional to the density d of X, determine the value of (mD)/2V if the constant of proportionality is 10, m is the mass, and V is the volume of a solid made of X."],
             [2, "If the volume of a solid is dependent on the external temperature (direct proportion), by what factor does the density change if the temperature is halved, assuming the mass is constant?"]
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

/*
let m = window.matchMedia("(max-width: 1460px)");
if I(m.matches) {
	let pBtn = document.querySelector(".profileBtn");
	pBtn.style.marginTop = "20px";
	q.appendChild(pBtn);
}
*/

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
	
	document.checkform.Connections1String.value = ConnectionsTemp;
	document.checkform.ConAns1String.value = ConAnsTemp;
	document.checkform.checkBtn.type = "submit";
}

//Makes the checkpoint button dissapear once clicked!
function closeForm () {
	document.checkform.Connections1String.value = "";
	document.checkform.ConAns1String.value = "";
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
	  alert("Correct Answer! You gained 2.5 points!");
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
let Node1_txt = document.createTextNode("PEMDAS");
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
