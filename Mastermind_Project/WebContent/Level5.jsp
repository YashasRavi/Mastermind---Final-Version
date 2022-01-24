<%@ page session = "true" import = "Mastermind_java.userManager" import = "Mastermind_java.user"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title> Mastermind - Level 5 </title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href = "Level5.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <style>
  	
  	body {
  		background: linear-gradient(-45deg, #9370DB, #EE82EE, #DDA0DD);
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
	  background-color: #663399;
	  border: 5px solid #FF00FF;
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
			background: plum;
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
		LEVEL 5
		<br>
		<br> 
		This is the last level of the Mastermind game. Click the left or right edge coming out of the topmost node, and you will see
		the first set of questions appear on the right! For more specific directions, revisit your profile page by clicking the button below!
		<br>
		<br> 
		Each checkpoint is worth 30 POINTS. Good luck!
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

<form name = "checkform" class = "checkspointForm" action="Level5Checkpoint.jsp">	
	<input type="hidden" name="user" value='<%= request.getParameter("uId") %>'>
	<input type="hidden" name="level" value="5">
	<input type="hidden" name="finishCheck" value="">
	<input type="hidden" name="ConAns5String" value=""> 
	<input type="hidden" name="Connections5String" value=""> 
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

let userConnections1 = '<%= tempUser.getConnections5String() %>'
let userConAns1 = '<%= tempUser.getConAns5String() %>'
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
let nodes1 = ["BEGIN!!", "Momentum", "Rotations", "COM", "Derivatives", "Integrals", "Rate Laws", "PV Graph", "Pathways", "Gas Laws", "Pulmonology", "1-Node11", "1-Node12", "Click above line to finish!"];

let hintLinks = [
	"NULL",
	"https://openstax.org/books/physics/pages/6-3-rotational-motion",
	"https://www.ck12.org/book/ck-12-physics---intermediate/section/7.3/",
	"http://kias.dyndns.org/gp/notes/notes.13.html",
	"https://math.libretexts.org/Bookshelves/Calculus/Book%3A_Calculus_(OpenStax)/06%3A_Applications_of_Integration/6.6%3A_Moments_and_Centers_of_Mass#:~:text=x)dx.-,The%20x%2D%20and%20y%2Dcoordinates%20of%20the%20center%20of%20mass,region%20lies%20on%20the%20line.",
	"https://openstax.org/books/chemistry-2e/pages/12-3-rate-laws",
	"https://www.khanacademy.org/science/physics/thermodynamics/laws-of-thermodynamics/a/what-are-pv-diagrams",
	"https://openstax.org/books/chemistry-2e/pages/12-3-rate-laws",
	"https://www.vedantu.com/physics/thermodynamic-processes",
	"https://en.wikipedia.org/wiki/Rate-determining_step",
	"https://www.concepts-of-physics.com/thermodynamics/specific-heats-cv-and-cp-for-monatomic-and-diatomic-gases.php#:~:text=The%20heat%20given%20at%20constant%20pressure%20is%20equal%20to%20the,%CE%94%20U%20%2B%20%CE%94%20W%20).&text=The%20ratio%20of%20the%20specific%20heats%20is%205%2F3%20for,value%20for%20air%20is%201.4.",
	"https://en.wikipedia.org/wiki/Carbonic_anhydrase",
	"https://www.respiratorytherapyzone.com/respiratory-therapy-formulas-calculations/"
	
];


//Hints for each connection that appears in the modal!
let hints1 = ["NULL", 
			"Angular Momentum is defined to be L = mvr where m is the mass of the spinning object, r is the distance from the center of rotation, and v is the tangential velocity. However, L = r x p when r and v are vectors (and p here is momentum so p = mv). <br> <br> Finally, the conservation of angular momentum states that I1*w1 = I2*w2 where I1 and w1 are the initial moment of inertia and angular velocity, and I2 and w2 are the final moment of inertia and angular velocity.", 
			"The center of mass is given by x = (m1x1 + m2x2 + m3x3 . . .  )/(m1 + m2 + m3 . . .  ). Thus, the velocity of the center of mass would be v = (m1v1 + m2v2 + m3v3 . . .)/(m1 + m2 + m3 . . . ). <br> <br> So if M = m1 + m2 + m3 . . .  (or the total mass) then the momentum of the center of mass is Mv =  (m1v1 + m2v2 + m3v3 . . . ). <br> <br> Remember that momentum is a vector so if there are vertical AND horizontal components (see question #3) px and py, then the total momentum is p = (px)i + (py)j.", 
			"Derivatives can be useful when calculating rates of change! <br> <br> Question 1: The angular acceleration is dw/dt so dw/dt = 3-2cos(t). <br> <br> Question 2: The applied torque is dL/dt so dL/dt = 6t-2. <br> <br> Question 3:  The amount of torque doing the work is given by dW/da so dW/da = 4 - (1/a).", 
			"COM can also be determined for continuous objects using integrals (in this case, integrating linear density). <br> <br> Question 1: Since dm = d(x) dx, integrating d(x) from x = 0 to x = 8 gives the mass. <br> <br> Question 2: Now integrate x*d(x) from x = 0 to x = 8 and then divide by the total mass. This is analogous to doing (x1*m1 + x2*m2 . . .) / (total mass). <br> <br> Question 3: All the points on the rod are going to be the SAME distance away from each other. As such, since x(t) = 3ln(t)+4 for the leftmost point, v(t) = 3/t for ANY point on the rod (including the COM!).", 
			"The product and quotient rules can be used to calculate derivatives of functions that are products or quotients of other functions. If f(x) = a(x)*b(x) then f'(x) = a(x)*db/dx + b(x)*da/dx. Likewise by the quotient rule, if f(x) = c(x)/k(x) then f’(x) = (k(x)*dc/dx - c(x)*dk/dx)/(k(x))^2. <br> <br> The ideal gas law states that if a gas is an ideal gas, then PV = nRT where P is pressure, V is volume, n is the number of moles, T is temperature, and R is the ideal gas constant 8.31 J/mol K. <br> <br> This law applies to problems #1 and #3, but for problem #2, you can use the fact that P1/T1 = P2/T2 where P1 and T1 are initial temperature and pressure while P2 and T2 are final temperature and pressure!", 
			"In a thermodynamic process, the work is the integral of pressure with respect to volume, P(V) dV. Thus, P = dW/dV. Use this for question #3! <br> <br> Questions #1 and #2 aim to determine dW/dt, which can be deduced using the chain rule since dW/dt = dW/dV*dV/dt = P*dV/dt. Use this to determine dW/dt!", 
			"The integrated rate laws allow us to figure out the concentrations of reactants after a certain time depending on the rate law of the reaction. <br> <br> Question 1: For first-order, d[C4H8]/dt = -k*[C4H8] so (1/[C4H8]) d[C4H8] = -k dt so integrating and substituting 4 M for the initial concentration of C4H8 and 3 for time yields ln(4/x) = (9.2*10^-3)(3) where x is [C4H8] at t = 3 seconds. <br> <br> Question 2: For zeroth-order, d[A]/dt = -k so [A](t) = [A] - kt where [A] is the initial concentration of A. For [A] to be 0, [A](t) = 0 so solve for t. <br> <br> Question 3: Try trying to find the integrated rate law for a 2nd, 3rd, or 4th order reaction. See which one matches!", 
			"In an isothermal expansion, the work done is calculated by integrating pressure with respect to volume. Since PV = nRT for an an ideal gas, then P(V) = (nRT)/V so integrating P(V) dV yields nRT*ln(V2/V1) where V2 is the final volume and V1 is the initial volume. Use this for question #1! Also, in an isothermal process, the heat transfer is equal to the work done. Use this for question #2! <br> <br> For question #3, an adiabatic expansion occurs when the amount of heat transfer is 0. The heat capacity ratio b is Cp/Cv, where Cp is the molar specific heat in constant pressure and Cv is the molar specific heat in constant volume.  <br> <br> In an adiabatic expansion, P1*(V1)^b = P2*(V2)^b. Use this to answer question #3!", 
			" For a reaction with multiple steps, the step with the LOWEST rate constant (meaning the slowest step) is the rate determining step! Use this to answer question #1. <br> <br> For question #2 and #3, you can find the order of the rate law using the given units of the rate constants. Remember that the rate law is determined by the step with the lowest rate constant! Also, multiply your answer in M/s by 10^9 to get your answer in nM/s!", 
			" The work done by an ideal gas under constant-pressure conditions is W = nR*(T2 - T1) where T2 is the final temperature, T1 is the initial temperature, R is the ideal gas constant of 8.31 J/mol K, and n is the number of moles of gas. Use this for question #1! <br> <br> In regards to heat transfer, it is a bit different where for a diatomic gas under constant volume, Q = (5/2)nR*(T2-T1) but under constant pressure, Q = (7/2)nR*(T2-T1). Note that the molar mass of H2 is around 2 g/mol. Use this to answer questions #2 and #3!", 
			"Carbonic Anhydrase is an enzyme that captures CO2 in the bloodstream, or else CO2 would combine with water to form hydrogen ions and bicarbonate (raising the pH of the blood). Prosthetic groups help Carbonic Anhydrase accelerate these reactions! The answers to these questions can be found on the Wikipedia page for Carbonic Anhydrase, explore for yourself :)) ", 
			"Gas Laws can be useful when analyzing pulmonary physiology. Use the gas law P1*V1 = P2*V2 for question #1! <br> <br> For question #2, the work done by breathing is just (Pressure change)*(Volume change), similar to integrating pressure with respect to volume. <br> <br> For question #3, the minute ventilation is VE = (respiratory rate)*(flow rate)*(inspiratory time)."];

let questions1 = [
      // [Answer, Question]
   /*0*/ [
             [0, "NULL"] /*set to null so tracing code is easier!*/
         ],

    /*1*/[
             [72, "A sphere of mass 2 kg is placed on a 3 meter string, and the string is spun around point P at a tangential velocity of 12 m/s. What is the angular momentum of the sphere about P?"],
             [39, "A box with linear momentum p = <3,2,5> kg m/s is a distance of r = <8,7,4> m from the origin. What is the MAGNITUDE of angular momentum of the box about the origin? Round to the nearest integer and submit!"],
             [3, "An ice skater spins around at 6 rad/s. After stretching her arms to double her moment of inertia, what is the new angular velocity of the skater?"]
         ],
   /*2*/ [
             [32, "A system of 3 particles with masses 4 kg, 2 kg, and 5 kg travel at horizontal velocities of 3 m/s, 5 m/s and 2 m/s respectively. What is the linear momentum of the center of mass of the system?"],
             [3, "What is the velocity of the center of mass? Round to the nearest integer and submit!"],
             [58, "If the particles also travel at vertical velocities 4 m/s, 6 m/s, and 4 m/s respectively, what is the magnitude of momentum for the center of mass? Round to the nearest integer and submit!"]
         ],
   /*3*/ [
             [5, "If the angular velocity w of a ball tied to a string is given by w(t) = 3t - 2sin(t) rad/s, what is the angular acceleration at t = 3 seconds? Round to the nearest integer and submit!"],
             [22, "If the angular momentum of a system is given by L(t) = 3t^2 - 2t + 4, what is the applied torque at t = 4 seconds?"],
             [4, "If the work done by a torque is given by W(a) = 4a-ln(a) J where a is the angle covered, determine the torque at a = 6 radians. Round to the nearest integer and submit!"]
         ],
   /*4*/ [
             [127, "Determine the total mass of a rod if the linear mass density is given by d(x) = 3x-sin(x)+4 kg/m and the rod goes from x = 0 to x = 8 m? Round to the nearest integer and submit!"],
             [5, "Now, determine the x-position of the COM of the rod. Round to the nearest integer and submit!"],
             [190, "If the rod moves horizontally where x(t) = 3ln(t)+4 is the position for the LEFTMOST point on the rod (meaning the point at x = 0), what is the linear momentum of the COM at t = 2? Round to the nearest integer and submit!"]
         ],
   /*5*/ [
             [19, "There are 2 moles of an ideal gas in a container and the number of moles is kept constant. The pressure in the container is given by P(t) = 3t-4 Pa and the volume of the container is given by V(t) = 12t + 1 L. What is the rate of temperature change at t = 5 seconds? Round to the nearest integer and submit!"],
             [9, "In a container where the only changing quantities are the pressure and temperature, and it is given that the final temperature is thrice the initial temperature, what is the rate of change of the final pressure if the initial pressure changes at 3 pascals/s?"],
             [2, "In a balloon with a constant 4 moles of ideal Helium gas, where the volume expansion is given by V(t) = 3e^t+7 L and the temperature is given by T(t) = sin(t)+1 K, then determine |dP/dt| at t = 2 seconds. Round to the nearest integer and submit!"]
         ],
   /*6*/ [
             [3, "What is the rate of change of the work dW/dt at t = 4 seconds in a thermodynamic process if the pressure is constant at 3 pascals and the volume is given by V(t) = 3sin(t)+4cos(t) L? Round to the nearest integer and submit!"],
             [22, "If instead V(t) = 2e^0.5t L, what is dW/dt at t = 4 seconds? Round to the nearest integer and submit!"],
             [20, "If the Work W done in a thermodynamic process is given by W(V) = 3V^2 - 4V + 2, determine the pressure P when V = 4 L."]
         ],
   /*7*/ [
             [3, "The rate constant for the first-order decomposition of Cyclobutane (C4H8) is (9.2*10^-3) 1/s. What is the concentration of C4H8 after 20 seconds if the initial concentration of C4H8 is 4 M? Round to the nearest integer and submit!"],
             [4, "For a zero-order reaction A --> B + C, with rate constant of 3*10^-4 M/s, how many seconds would it take for [A] to become 0 if the initial [A] is 1.2*10^-3 M?"],
             [3, "For the reaction K --> M + N, what is the order of the chemical reaction if 1/([K](t)) = (1/(2[K]^2)) + kt where k is the rate constant and [K] is the initial concentration?"]
         ],
   /*8*/ [
             [4382, "Determine the amount of work done by 4 moles of ideal gas at a constant temperature of 120 K when it expands so that the volume it takes up triples. Round to the nearest integer and submit!"],
             [4382, "Determine the amount of heat transfer in the same scenario."],
             [2, "If the heat capacity ratio Cp/Cv for an ideal gas is (7/5), determine the final volume of an adiabatic expansion of this gas if the pressure doubles and the initial volume is 3 L. Round to the nearest integer and submit!"]
         ],
   /*9*/ [
             [2, "A chemical pathway containing 3 steps is used to convert Nitric Oxide (NO) to Nitrogen Gas (N2) and water (H2O). Which step (1, 2, or 3) is the rate determining step of the pathway if step 1 proceeds faster then step 3, which proceeds faster than step 2?"],
             [36000, "In an SN1 organic reaction, C4H9Br is decomposed into C4H9 and the leaving group (Bromide) with rate constant k1, and then C4H9 reacts with Methanol (CH3OH) forming 2 products (rate constant k2). If k1 = 1.2*10^-4 (1/s) and k2 = 3*10^-2 (1/s*M) for a specific temperature, what is the rate of the reaction in nM/s if at time t, [C4H9Br] = 0.3 M and [CH3OH] = 0.2 M?"],
             [60000, "If at another time, [C4H9Br] = 0.5 M and [CH3OH] = 0.4 M, determine the reaction rate in nM/s."]
         ],
  /*10*/ [
             [1745, "What is the amount of work done by 7 moles of ideal gas at constant pressure if the temperature increases from 20 K to 50 K? Round to the nearest integer and submit!"],
             [1662, "Determine the amount of heat transferred to 4 g of H2 in a container at constant volume if the temperature increases from 40 K to 80 K. Round to the nearest integer and submit!"],
             [2327, "Now instead if the container had constant pressure instead of constant volume, determine the amount of heat transfer. Round to the nearest integer and submit!"]
         ],
  /*11*/ [
             ["carbonic", "If the name of the intermediate in the reaction: CO2 + H2O --> H2CO3 and H2CO3 → (H+) + (HCO3-) is _____ acid, fill in the blank! Write in ALL LOWERCASE!"],
             [7, "Carbonic Anhydrase is the enzyme that accelerates the above reaction. If Carbonic Anhydrase allows the reaction to proceed 10^k times faster, what is k?"],
             ["zinc", "What metal prosthetic group is used by Carbonic Anhydrase? Write the name of the METAL in ALL LOWERCASE."]
          ],
   /*12*/[
             [125, "In an expanding lung, if the volume of O2 gas changes by a factor of 0.8, by what factor does the volume taken up by the O2 gas change? Multiply by 100 and submit!"],
             [25, "Determine the work done by breathing (WoB) for a certain animal if the change in pressure in its lungs is 50 Pa and the change in volume is 0.5 L?"],
             [12, "Determine the value of minute ventilation (VE) in L*breaths/minute  if the respiratory rate is 20 breaths/minute, the flow rate is 0.1 L/s, and the inspiratory time is 6 seconds?"]
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
	
	document.checkform.Connections5String.value = ConnectionsTemp;
	document.checkform.ConAns5String.value = ConAnsTemp;
	document.checkform.checkBtn.type = "submit";
}

//Makes the checkpoint button dissapear once clicked!
function closeForm () {
	document.checkform.Connections5String.value = "";
	document.checkform.ConAns5String.value = "";
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
  //s.disabled = false;
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
	  alert("Correct Answer! You gained 7.5 points!");
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
  node.style.backgroundImage = "linear-gradient(45deg, goldenrod, lemonchiffon)";
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
let Node1_txt = document.createTextNode("Momentum");
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
