<%@ page session = "true" import = "Mastermind_java.userManager" import = "Mastermind_java.user"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title> Mastermind - Level 4 </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href = "Level4.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <style>
  	
  	body {
  		background: linear-gradient(-45deg, #FF6347, #FFB6C1, #FFA07A);
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
	  background-color: #008080;
	  border: 5px solid lightblue;
	  box-shadow: 10px 10px 5px #6A5ACD;
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
			background: pink;
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
		LEVEL 4
		<br>
		<br> 
		This is the fourth level of the Mastermind game. Click the left or right edge coming out of the topmost node, and you will see
		the first set of questions appear on the right! For more specific directions, revisit your profile page by clicking the button below!
		<br>
		<br> 
		Each checkpoint is worth 25 POINTS. Good luck!
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

<form name = "checkform" class = "checkspointForm" action="Level4Checkpoint.jsp">	
	<input type="hidden" name="user" value='<%= request.getParameter("uId") %>'>
	<input type="hidden" name="level" value="4">
	<input type="hidden" name="finishCheck" value="">
	<input type="hidden" name="ConAns4String" value=""> 
	<input type="hidden" name="Connections4String" value=""> 
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

let userConnections1 = '<%= tempUser.getConnections4String() %>'
let userConAns1 = '<%= tempUser.getConAns4String() %>'
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
let nodes1 = ["BEGIN!!", "Logarithms", "Populations", "Big-O", "Sinusoids", "Polynomials", "Modulus", "Homeostasis", "Charge", "DNA", "Biotech", "1-Node11", "1-Node12", "Click above line to finish!"];

//Hints for each connection that appears in the modal!
let hints1 = ["NULL", 
			"Logarithms are the inverse operations to exponents. Thus, if a^b = c, then b = log(c)/log(a). Some other properties to know are log(ab) = log(a) + log(b) and log(a/b) = log(a) - log(b). Another rule is log(a^b) = b*log(a).  <br> <br> Question 1: The initial size is 30 and the size increases by a factor of 1.1 every year, so 30*(1.1)^x = 50. Solve for x using logarithms! <br> <br> Question 2:  If the population doubles in log(2)/log(1.2) years, then x^(log(2)/log(1.2)) = 2. Solve for x using logarithms! <br> <br> Question 3: If the emigration rate and immigration rate are equal, then the # of foxes leaving = # of foxes entering. Thus, population size is increased by having more offspring, so x*(1.3)^3 = 50. Solve for x!", 
			"Time complexity is a way to analyze the running time of algorithms AS the inputs get larger. An O(n) algorithm grows linearly, an O(n^2) grows quadratically, etc as the input gets larger. Usually the input is an array or a string. If a certain algorithm divides the input repeatedly, then it is most likely O(logn). Think about why this is!", 
			"In sinusoidal graphs such as f(x) = asin(bx)+c, a is the amplitude, c is the midline, and 2pi/b is the period. The midline is the average of the highest and lowest values of the graph, and the amplitude is the DISTANCE from the midline to the highest/lowest value. The period T is the LOWEST amount of time (or in this case whatever x represents) such that f(x) = f(x+T) where T = 2pi/b. <br> <br> For question #3, note that Q(t) = Acos(Bt)+C since this is the only sinusoidal function different from P(t) if A, B, and C are the same. It also makes sense for a predator-prey relationship. To find |P(t)-Q(t)|, use the R-method which states sin(x)-cos(x) = sqrt(2)*sin(x - pi/4).", 
			"The big-O notation eliminates the leading coefficients and constants and ONLY includes the highest degree term. For instance, O(2x^3-3x^2+1) = O(x^3). Use this to answer the questions!", 
			" REMEMBER that the modules (or absolute value) of a number is its distance from 0. Thus, it is ALWAYS positive! So if |a| = b, then b >= 0. <br> <br> Let’s consider the graph of a function f(x). If g(x) = |f(x)|, then when f(x) < 0, then g(x) = f(x) (so basically the negative portions of f(x) are flipped over the x-axis). <br> <br> If h(x) = f(|x|), then the portion of the graph left of the y-axis is the SAME as the portion of the graph to the right of the y-axis! So if instead h(x) = f(|x-a|) then the axis of symmetry is at x = a since that is when x-a=0. Think about why this is!", 
			"Note that [X] means the concentration of X in chemistry. In negative feedback, if A inhibits B and B inhibits A, then A and B are in a sinusoidal relationship. If the extent of inhibition is the same between A and B, then B is phase shifted from A by 90 degrees (meaning the graph of [B] is pi/2 to the right or left of the graph of [A]). <br> <br> Sometimes, there is something else going on other than just a sinusoidal relationship. For instance, in question #2 the presence of a coactivator means that [A](t) = [C](t)*(Acos(t)+C) so substitute t = 0 to find the value of m.", 
			"Let’s consider the graph of a function f(x). If g(x) = |f(x)|, then when f(x) < 0, then g(x) = f(x) (so basically the negative portions of f(x) are flipped over the x-axis). <br> <br> If h(x) = f(|x|), then the portion of the graph left of the y-axis is the SAME as the portion of the graph to the right of the y-axis! A more complicated example is the function g(x) = |f(x)| + g(x). Here, g(x) = f(x)+g(x) when x > 0 and g(x) = -f(x)+g(x) when x < 0. <br> <br> In regards to polynomials, the roots are where the graph intersects the x-axis. The factored form of a polynomial can give information about the roots; for example, the roots of f(x) = (x-2)(x-3)(x+1) are 2, 3, and -1 since f(2) = f(3) = f(-1) = 0.", 
			"Approximations can be useful in complex biological systems. Note that Glucose is converted to Fructose-6-Phosphate when the net amount of ATP is -2 (2 ATP is used for this), so P(t) = -2. Glycolysis has ended when the net amount of ATP is 2, so P(t) = 2. For question #3, P(3.5) would be the total amount of ATP produced when Oxidative Phosphorylation ends.", 
			"The charge of a particle is an intrinsic property that defines how it behaves in Electric and Magnetic Fields. Charges can be positive or negative. <br> <br> Question 1: The motion of a charged particle functions the same way as the motion of any particle if there is no magnetic field (which in this case, the problem does not mention any). <br> <br> Question 2: Electrons transfer from P1 and P2 until both particles have the SAME charge. So if the # of electrons on P2 double, what was the initial ratio of charges (|q2/q1|)? <br> <br> Question 3: The force between 2 charges is defined as F = k|q1*q2|/r^2 where r is the distance between them, k is the Coulomb constant, and q1 and q2 are the charges. Use this to answer the question!", 
			"DNA is essential to Cellular function since it contains the code for generating proteins and biomolecules. <br> <br> Question 1: During which cell cycle phase is the amount of DNA doubled? <br> <br> Question 2: DNA replication occurs between G1 and G2. This doubles the amount of DNA! <br> <br> Question 3: Each picojoule is 10^-12 joules. Thus, (3.2 billion NTPs) * (1.8*10^-23 kJ/NTP) * (1000 J / 1 kJ) / (10^-12 J / 1 pJ). Basically we are using conversion factors.", 
			"Electrophoresis and Ion-Exchange Chromatography are methods to separate and distinguish compounds based on charge. In Electrophoresis, the sample is put on a gel and an Electric Field is applied, causing the sample to move towards the side with opposite charge. <br> <br> Question 1: Electrophoretic mobility is given by u = v/E where v is the drift velocity of the sample (how fast it travels in the gel) and E is the electric field on the gel (which moves the sample if the sample is charged). <br> <br> Question 2: The electroosmotic flow is the flow of the solutes IN the gel (not the same as the SAMPLE). However, the sample is IN the gel so the electroosmotic flow contributes to the net velocity of the sample (in addition to the electrophoretic velocity caused by the Electric Field!) <br> <br> Question 3: Ion Exchange chromatography works by having anions or cations embedded on the inner surface of a tube, and when the solution is poured through the solutes of opposite charge bond ionically with the inner surface. Here, His, Lys, and Arg are positively charged and thus would bond to the anionic surface of the tube.", 
			"Taking advantage of the properties of DNA is a major technique in Biotechnology! <br> <br> Question 1: In Gel Electrophoresis, the sample is put on a gel (Agarose for DNA) and an Electric Field is applied, causing theDNA  sample to move towards the side with opposite charge. Since DNA is negatively charged, the sample moves towards the positively charged anode. The more mass the sample has, the less distance it covers. <br> <br> Question 2: Basically how many GTs are there in the sequence? If the enzymes cut at these locations, how many fragments are produced? <br> <br> Question 3: Each cycle of PCR doubles the amount of DNA present. Note that ssDNA means single-stranded DNA. As such, 4*2^n = 30 where ceil(n) is the required number of cycles!"];

let hintLinks = [
	"NULL",
	"https://www.britannica.com/science/population-ecology",
	"https://www.freecodecamp.org/news/big-o-notation-why-it-matters-and-why-it-doesnt-1674cfa8a23c/",
	"https://www.purplemath.com/modules/grphtrig.htm",
	"https://www.mathsisfun.com/algebra/polynomials.html",
	"https://www.mathsisfun.com/numbers/absolute-value.html",
	"https://en.wikipedia.org/wiki/Homeostasis",
	"https://www.mathsisfun.com/numbers/absolute-value.html",
	"https://en.wikipedia.org/wiki/Homeostasis",
	"https://en.wikipedia.org/wiki/Electric_charge",
	"https://www.britannica.com/science/DNA",
	"https://en.wikipedia.org/wiki/Electrophoresis",
	"https://www.khanacademy.org/science/biology/biotech-dna-technology#dna-sequencing-pcr-electrophoresis"
];

let questions1 = [
      // [Answer, Question]
   /*0*/ [
             [0, "NULL"] /*set to null so tracing code is easier!*/
         ],

    /*1*/[
             [5, "A population of rabbits starts off at 30 and grows exponentially by 10% each year. How many years does it take for the population to reach 50 rabbits? Round to the nearest whole number and submit!"],
             [20, "The population of deer grows exponentially at a% every year. What is the value of a if it takes log(2)/log(1.2) years for the population to double? Round to the nearest whole number and submit!"],
             [23, "If the immigration rate and emigration rate are equal for a population of foxes, determine the initial population size if the population grows by 30% each year, and reaches a size of 50 foxes in 3 years. Round to the nearest integer and submit!"]
         ],
   /*2*/ [
             [2, "The binary search algorithm is used to search for a value in a sorted array. It keeps splitting the array into halves and searching the required half. For example, to search for 7 in {2, 3, 5, 7, 9}, the array being searched is {5, 7, 9}, then {7, 9}, and then {7}. If the big-O is O(f(n)), determine f(513). Round your answer to the nearest integer and submit!"],
             [129, "The merge sort algorithm also splits an array into halves, but this time to sort. MergeSort keeps splitting the array into halves until there are just individual indices. Then, each half is merged with another half, where the merge algorithm takes O(n) time.  If the big-O is O(g(n)), determine g(70). Round your answer to the nearest integer and submit!"],
             [2, "What is the time complexity of the following code segment: for(int i = 1; i <= 64; i *= 2) { print(i); } . . .  If the big-O is O(h(n)), determine the value of h(120)? Round to the nearest integer and submit!"]
         ],
   /*3*/ [
             [327, "A population of pigeons grows by P(t) = Asin(Bt)+C for time t in years. Determine the value of B if the period is 1/52. Round to the nearest integer and submit!"],
             [50, "Determine the value of A*C if the maximum population is 15 and the minimum population is 5."],
             [7, "If Q(t) is the graph of the predator population such that A, B, and C in Q(t) are the same as the corresponding values in P(t), what would be the maximum value of |P(t)-Q(t)|?"]
         ],
   /*4*/ [
             [16, "For a function f(x), g(x) = O(f(x)) means that g(x) is the simplified expression inside the big-O. For example, if f(x) = 3x^2-2, then g(x) = x^2. Using this scheme, if f(n) = 3n^4 - 4n^3 + 3n^2, and g(n) = O(f(n)), determine the value of g(2)."],
             [216, "If instead f(n) = (n-3)(n+1)(n-4), determine the value of g(6)."],
             [1, "If P(n) and Q(n) are functions such that P(n) = O(Q(n)) and Q(n) = O(P(n)), determine the value of P(Q(1))."]
         ],
   /*5*/ [
             [315, "If |sin(x)| = cos(x), determine the maximum value of x in 0 < x < 360 degrees. "],
             [9, "If f(x) = |2sin((1/3)x+1)|, determine the period of f(x). Round to the nearest integer and submit!"],
             [3, "If g(x) = 2sin|4x-12|-10, determine the x-coordinate of the axis of symmetry."]
         ],
   /*6*/ [
             [90, "In a certain biochemical model, protein A inhibits protein B, and protein B inhibits protein A. The extent of inhibition is the same for both proteins. If [A](t) = Acos(t)+C and [B](t) = Acos(t+k)+C, determine the minimum value of k in DEGREES."],
             [3, "If the extent to which protein A functions ALSO depends on the concentration of a coactivator protein C where [C](t) = m-kt, determine the value of m if the initial [A] = 3(A+C). "],
             [3, "The concentration of Carbon Monoxide (CO) is given by f(t) = |4cos(4t)|*e^(-0.05t). What is the concentration of CO at t = 7 seconds? Round to the nearest integer and submit!"]
         ],
   /*7*/ [
             [3, "If a polynomial P(x) has 3 zeros, how many zeros does H(x) = |P(x)| have?"],
             [6, "A polynomial f(x) is defined as f(x) = (x-a)(x-b)(x-c) for 0 < a < b < c. If g(x) = f(|x|), determine the number of zeros for g(x)."],
             [4, "If f(x) = |x-3|^2 + 2|x| - 12, determine the sum of roots of f(x). Round to the nearest integer and submit!"]
         ],
   /*8*/ [
             [1, "The process of Cellular Respiration provides energy for cells to function. The release of energy from Glucose can be approximated by a polynomial P(t) = t^3 - 3t, where P(t) is equal to the TOTAL amount of ATP generated by time t. Feel free to graph P(t) using a calculator. At what time t has Glucose been converted into Fructose-6-Phosphate?"],
             [2, "At what time t has Glycolysis finished?"],
             [32, "According to the model, what is the total amount of ATP produced if Oxidative Phosphorylation of the Glucose molecule we are tracking ends at t = 3.5? Round to the nearest integer and submit!"]
         ],
   /*9*/ [
             [10, "Determine the distance traveled by an electric charge q in 5 seconds if the displacement is given by x(t) = 2t-3."],
             [2, "Two particles P1 and P2 with charges q1 and q2 respectively are positioned on a line. If electrons move from P1 to P2 causing the number of electrons on P2 to double, determine the value of |q1/q2| before the transfer occurred."],
             [6, "Determine the magnitude of electric force |F| between two particles with charges q and -3q that are a distance of 4 m from each other. If |F| = Bkq^2 where k is the Coulomb constant, find the value of 32B."]
         ],
  /*10*/ [
             ["S", "Mitosis is a term for Cell Division, where cells divide to form tissues, organs, etc. The process of cell division requires that both daughter cells have enough DNA. Enter the name of the PHASE where DNA Replication occurs (it is a single uppercase letter)."],
             [2, "If a cell during the G1 phase contains k grams of DNA and in the G2 phase contains m grams of DNA, determine the value of m/k."],
             [58, "The energy to power DNA Replication comes from the Phosphoanhydride linkages which are broken from NTPs before they are incorporated as NMPs in the DNA strand. If each NTP contains the same amount of energy of 1.8*10^-23 kJ, and there are 3.2 billion bases in the human genome, around how much energy (in picojoules) might DNA replication cost? Round to the nearest integer and submit!"]
         ],
  /*11*/ [
             [33, "A gel electrophoresis is conducted on a DNA sample. Determine the Electric Field strength if 3u/v = 1/11, where u is the Electrophoretic mobility and v is the drift velocity."],
             [1, "What is the net speed of a protein sample if its electrophoretic velocity is 4 m/s towards the anode and its electroosmotic flow is 3 m/s towards the anode?"],
             ["aspartate", "An Ion-Exchange Chromatography is performed to separate a solution containing solutes Histidine, Aspartate, Lysine, and Arginine based on charge. If the surface is embedded with immobilized anions, what solute comes out first? Write the FULL LOWERCASE name of the solute."]
          ],
   /*12*/[
             [123, "In an electrophoresis experiment, DNA Sample 1 has mass 50 g, DNA Sample 2 has mass 75 g, and DNA Sample 3 has mass 100 g. Rate the distance of the samples from closest to furthest from the anode after the electrophoresis is done (ex: if your answer is Sample 2, then Sample 3, then Sample 1, enter 231)."],
             [4, "Restriction Enzymes cut DNA Sequences at specific locations, producing DNA fragments. How many fragments are generated if the strand AATGTGGGTACCCAGTCAA is cut with Restriction enzymes recognizing the sequence GT?"],
             [3, "Polymerase-Chain Reaction (PCR) copies a small sample of DNA repeatedly so there is enough of the sample to study. Starting with 4 strands of ssDNA, how many cycles of PCR replication does it take to make at least 30 ssDNA strands?"]
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
	
	document.checkform.Connections4String.value = ConnectionsTemp;
	document.checkform.ConAns4String.value = ConAnsTemp;
	document.checkform.checkBtn.type = "submit";
}

//Makes the checkpoint button dissapear once clicked!
function closeForm () {
	document.checkform.Connections4String.value = "";
	document.checkform.ConAns4String.value = "";
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
	  alert("Correct Answer! You gained 6.25 points!");
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
	s.disabled = false
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
  node.style.backgroundImage = "linear-gradient(45deg, navy, cadetblue)";
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
let Node1_txt = document.createTextNode("Logarithms");
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
