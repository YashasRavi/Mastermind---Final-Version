package Mastermind_java;

public class levelDatabase {
	
	
	private String [] STYLINGS1 = {
			"linear-gradient(-45deg, #ADFF2F, palegreen, #00FF7F) no-repeat fixed",
			"red"
	};
	
	private String [] NODES1 = {
		"BEGIN!!", "PEMDAS", "Typecasting", "Number Sets", "Equations", "Measurement", "Forces", "Reactions", "Mean", "Density", "Proportions", "1-Node11", "1-Node12", "Click above line to finish!"
	};
	
	private int [][] ANSWERS1 = {
			{0},
			{8,15,0},
			{1,3,4},
			{2,2,24},
			{7,3,28},
			{6,98,84},
			{44,18,100},
			{1,300000,120},
			{3,5,4},
			{6,20,7},
			{90744,2,279},
			{36,3,2},
			{6,5,2}
	};
	
	private String [][] QUESTIONS1 = {
			{
				"NULL"
			},
			{
				"Evaluate the Java expression 5+(int)(3.7).",
				"Evaluate the Python expression int(3+int(12.4)).",
				"Evaluate the Java expression ((int)(0.7)/4)."
			},
			{
				"If n is a natural number and (3+(4+n)) is even, determine the lowest possible value of n.",
				"If n is a natural number such that 1 < n < 4, and (7+3n)/(5-n) is an integer, determine the value of n.",
				"If q is a positive real number and q/sqrt(2) is an integer, determine the lowest possible value of q^4."
			},
			{
				"If the Java expression (x+Integer.parseInt('12')) = 14 holds for a real number x, determine the value of x.",
				"If the Python expression int(3+4x) = 11 for an integer x, determine the value of x.",
				"If the Python expression int(x+0.5) = 12 holds for a real number x, determine the range for x such that a <= x < b where a and b are real numbers. Enter (a+b)."
			},
			{
				"Researchers are working with a container of water. The level of water in a container is always BETWEEN 2 feet and 10 feet deep. Whenever the water level is an integer, an alarm goes off that notifies the researchers. The sound of the alarm depends on which integer it is. How many different possible sounds can there be?",
				"The metric system uses powers of 10 to measure quantities. The basic unit of length is a meter, and 1 kilometer has 1000 meters. If the length of a road has to be less than 3542 meters, then how many possible lengths are there such that the number of KILOMETERS is an integer?",
				"Rounding error can lead to inaccurate measurements in science. Let S be the set of rational numbers that are multiples of (1/5). If the length of a hammer is ROUNDED to be 6 cm and the ACTUAL length is part of the set S, determine 5 TIMES the lowest possible length of the hammer."
			},
			{
				"A box is pushed to the left by Mack and Bob, and pushed to the right by Jack and Jill. If Mack, Bob, and Jack exert a force of 3 N, 5 N, and 2 N respectively, how much force does Jill exert if the box DOES NOT move?",
				"The force of gravity F is proportional to the mass of an object, where F = mg where g is 9.8 m/s^2. If a box of mass 10 kg hangs from the ceiling using a rope, determine the tension in the rope.",
				"Assume that the force exerted by a person is 3 times the force exerted by a dog. Also, the force exerted by a horse is 952 N. If 10 people and 5 dogs push a box while 1 person and a horse pull it, and the box does not move, determine the force exerted by a SINGLE person."
			},
			{
				"A chemical reaction takes place where methane (CH4) reacts completely with Oxygen (O2) to generate Carbon Dioxide (CO2) and water (H2O). If 64 g of Oxygen reacts with 16 g of Methane to produce 36 g of water, how many grams of Carbon Dioxide is produced?",
				"The generation of water molecules can be done by reacting hydrogen gas (H2) with oxygen molecules (O2). In a certain reaction chamber, 50% of the reactants (H2 and O2) actually react to form water. If the chamber starts with 32 g of O2 and 4 g of H2, what is the maximum mass of water (H2O) produced?",
				"If Calcium ions and Carbonate ions react to form solid Calcium Carbonate (CaCO3). If the 40 g of Calcium ions reacted and the mass of Carbonate ions reacted is 60% the mass of Calcium Carbonate produced, determine the mass of CaCO3 generated from the reaction."
			},
			{
				"The convention unit of a Newton is kg*m/s^2 where kg is kilogram, m is meters, and s is second. How many Newtons would be in a unit designated as g*km/s^2?",
				"If an elephant hits a wall with 3 kN (kilonewtons) of force, how many centinewtons (cN) does the elephant exert?",
				"If a certain metric has units of kg/(m*s^2), determine the value of this metric for a force exerting 30 N over a surface that is 50 cm wide and 50 cm long."
			},
			{
				"Significant Figures (sig-figs) are used to measure quantities in experiments to standardize precision. For a number such as 0.045, the number of sig-figs is equal to the number of digits after AND including the FIRST nonzero digit. Thus, 0.045 has 2 sig-figs. Using this scheme, how many sig-figs does 0.0207 have?",
				"How many sig-figs does 10.020 have?",
				"When taking measurements, we drop the last digit and then count the number of  sig-figs. For instance, for a measurement of 2.56 kg, we take it as 2.5 kg to avoid measurement errors. Thus, if a can of water has 101.05 liters,  how many sig-figs would we be counting in?"
			},
			{
				"If  a certain force field applies a force of 8 N for 10 seconds and a force of 5 N for the next 20 seconds, what is the average force over the 30 seconds?",
				"Constant forces F1, F2, and F3 are applied on an object over a period of time. If the net force is 60 N, what is the average of F1, F2, and F3?",
				"A force of F1 = 15 N applied for 3 seconds, and force F2 is applied over the next 5 seconds. If the average force over the time period is 10 N, determine the value of F2."
			},
			{
				"A cube of lead with a surface area of 24 m^2. What is the mass of the cube in kg? The Density of lead is 11343 kg/m^3.",
				"A material with an unknown density is shaped as a cylinder where the top half has a density 2 TIMES the bottom half. What is the ratio of the mass of the top half to the mass of the bottom half?",
				"A sphere of Sodium (Na) with radius 3 m reacts with an 169 g of Chloride gas to form solid Sodium Chloride (NaCl). What is the mass of Sodium Chloride produced? The Density of Sodium is 968 kg/m^3. Round to the nearest integer."
			},
			{
				"If the price of a box is proportional to its volume, then what is the mean price if the average volume is 12 m^3? The constant of proportionality is 3.",
				"Determine the constant of proportionality k for a relation where G = k*L for an input L and an output G, if the average value of L is (1/3) the average value of G.",
				"If instead G = k*L + m*N for inputs L and N, such that k = 2 and the average of N is (2/3) the average of G and the average of L is (1/3) the average of G, determine the value of 4m."
			},
			{
				"If the density of material A is twice the density of material B, and a solid made of material A takes up thrice of the volume as material as a solid made of material B, then determine the value of k if (mass of A) = k*(mass of B).",
				"If a certain metric D for a material  X is inversely proportional to the density d of X, determine the value of (mD)/2V if the constant of proportionality is 10, m is the mass, and V is the volume of a solid made of X.",
				"If the volume of a solid is dependent on the external temperature (direct proportion), by what factor does the density change if the temperature is halved, assuming the mass is constant?"
			}
			
	};
	
	private String [] HINTS1 = {
			"NULL",
			"In Java, the (int) function removes the decimal part of a number. For instance, (int)(4.2) = 4. Similarly in python, int(4.2) = 4. This is called typecasting. Remember in the order of operations, whatever is inside the parenthesis is always done first! So (int)(4+3) = (int)(7) = 7.",
			"Integers include positive and negative numbers and have NO decimals; for instance, -4, 2, and 0 are integers while 0.5 and 1.4 aren't. <br><br> Real numbers include decimals AND integers; thus, numbers such as 1/3, 2.5, -0.4 are all real.  <br><br> Natural numbers are integers GREATER than 0; thus, these would be the counting numbers 1,2,3, etc. <br> <br>Remember that in the order of operations, parenthesis come first!",
			"Recall that integers are  positive and negative numbers and have NO decimals; for instance, -4, 2, and 0 are integers while 0.5 and 1.4 aren't. However, real numbers can be integers OR decimal numbers, so numbers such as 1/3, 2.5, -0.4 are all real. <br> <br> Also remember that in typecasting, the Java function Integer.parseInt() essentially converts a String to an integer. <br> For instance, Integer.parseInt('123') = 123,. <br> <br> The Python int() function removes the decimal portion of the input; thus, int(4.2) = 4, int(3.9) = 3. and int(0.5) = 0.",
			"The questions in this set require you to count the number of integers in a range (for the 1st 2 questions) or find the lowest possible number such that it can be ROUNDED to an integer (3rd question). <br> <br> Question 1:  Reading the question can help clarify things. Note that 'between 2 and 10' means GREATER than 2 and LESS than 10. Also, different sounds for each integer basically means distinct integers. <br> <br> Question 2: Note that 3542 meters would be 3.542 kilometers; the length of the road has to be an integer LESS than 3.542. <br> <br> Question 3: The wording could be a bit confusing here. Remember that in rounding, if the decimal part is >=0.5 we round up, else we round down. Think about multiples of (1/5) that are close to 6, such that if we round that multiple we get 6. Then, determine the minimum of those!",
			"Note that if an object is not moving, the NET force is 0. This means that the TOTAL force on ONE side is EQUAL to the TOTAL force on the OTHER side. <br> <br> Question 1: Mack and Bob exert 3 N and 5 N, so the total force on their side is 8 N. Jack exerts 2 N of force and we don't know Jill's force, but we know that the TOTAL force from Jill AND Jack has to be 8 N since the box doesn't move! <br> <br> Question 2: The tension in a rope is the force that holds the box up, and gravity pulls the box down. If the box is static, the tension force is the SAME as the force of gravity (which is F = mg). <br> <br> Question 3: Set the dog's force as a variable, and keep track of who is on each side. Also note that the box doesn't move, so the TOTAL force from each side has to be the same!",
			"These questions mostly require the law of conservation of mass, which states that the TOTAL mass of reactants is equal to the TOTAL mass of products. <br> <br> Question 1: We know the mass of Oxygen and Methane that reacted and the mass of H2O produced. Note that mass(O2) + mass(Methane) = mass(CO2) + mass(H2O). <br> <br> Question 2: This question is similar to question #1, but make sure that in this case, 0.5*(total mass of reactants) = total mass of products. The mass of the product CANNOT exceed the mass of reactants, so mass(H2O) has to be LESS than 0.5*(mass(H2) + mass(O2))! <br> <br> Question 3: Here, we are given the mass of one of the reactants (Carbonate) as a PROPORTION of the mass of the product (CaCO3). Thus, mass(Calcium) + 0.6*mass(CaCO3) = mass(CaCO3).",
			"Note common uses such as 1 km = 1000 m, 1 kg = 1000 g, 1 kN = 1000 N, etc. kilo- means 'thousand'! Also, centi- means 'hundred', so 1 m = 100 cm and 1 g = 100 cg (centigrams). <br> <br> Question 1: Convert g to kg and km to m to convert g*km/s^2 to the familiar 1 N = kg*m/s^2! <br> <br> Question 2: Note that 1 N has 100 cN and 1 kN has 1000 N. <br> <br> Question 3: The metric kg/(m*s^2) is the same as (kg*m/s^2)/m^2, or Force per unit area (the pressure)! Also be careful that force is in meters while the dimensions of the surface are given in cm!",
			"For sig-figs, locate the FIRST nonzero number, and count EVERY digit after (AND including) that number. <br> <br> For example, for 12.1, this has 3 sig-figs since the 1st non zero digit is the 1 (in the tens place), and there are 3 digits after and including that. <br> <br> Another example is 230.06 which has 5  sig-figs since the first nonzero digit is the 2 in the hundreds place, and there are 5 digits after and including the 2. <br> <br> For actual measurements, drop the last digit, so 101.05 liters is counted as 101.0 liters; now enter how many sig-figs 101.0 has!",
			"Average force means the weighted average force over the time period. So if a force acts such as F = F1 over t1 seconds and F = F2 over t2 seconds, then the average force is (F1*t1 + F2*t2)/(t1+t2). Basically the weighted sum of forces over the FULL time interval. <br> <br> Note that this is different from the average OF multiple forces (question #2), which is simply the sum of forces divided by the number of forces!",
			"Remember that mass = volume * density! <br> <br> Question 1: recall that if the side length of a cube is s, then SA = 6s^2 and volume = s^3. <br> <br> Question 2: The top and bottom half have the same volume, so mass depends only on density! The question asks for a RATIO; in this case, (Mass of top half)/(Mass of bottom half). <br> <br> Question 3: Find the mass of Sodium first! Recall that the volume of a sphere is (4/3)(3.14)*r^3 where r is the radius. Also remember that the total mass of NaCl product is the sum of masses of the reactants (Sodium and Chloride)!",
			"An important thing to know about these questions is that for a proportion y = kx, then (average of y) = k*(average of x). This can be used to solve questions #1 and #2. <br> <br> For question #3, it is helpful to write the average of L and N in TERMS of the average of G. As such, (average G) = 2*((1/3) * average G) + m * ((2/3) * average G). Now you can solve for m!",
			"Recall that Mass/Volume = density, and make sure to remember that direct proportion between A and B means A=kB and inverse proportion means AB = k. <br> <br> Question 1: Recall that Mass = volume * density, so what happens to the mass if volume is tripled and density is doubled? <br> <br> Question 2: If D is inversely proportional to d, then D*d = constant of proportionality. Recall that d = m/V, so after substitution notice that we have mD/V = 2*(mD/2V)! <br> <br> Question 3: Note that d = m/V so if V = kT where T is temperature, then d = m/(kT). Thus, what happens if T is halved?",
	};
	
	private String [] HINTLINKS1 = {
			"NULL",
			"https://en.wikipedia.org/wiki/Type_conversion",
			"https://www.mathsisfun.com/sets/number-types.html",
			"https://www.mathsisfun.com/algebra/equation-formula.html",
			"https://www.splashlearn.com/math-vocabulary/geometry/metric-system#:~:text=The%20metric%20system%20is%20a,and%20weight%20(mass)%20respectively.&text=The%20units%20to%20the%20left,the%20unit%20to%20its%20right.",
			"https://www.physicsclassroom.com/class/newtlaws/Lesson-2/The-Meaning-of-ForceHintLink1-6",
			"https://www.khanacademy.org/science/biology/chemistry--of-life/chemical-bonds-and-reactions/a/chemical-reactions-article",
			"https://www.physicsclassroom.com/class/newtlaws/Lesson-2/The-Meaning-of-Force",
			"https://www.khanacademy.org/science/biology/chemistry--of-life/chemical-bonds-and-reactions/a/chemical-reactions-article",
			"https://www.statisticshowto.com/probability-and-statistics/statistics-definitions/mean-median-mode",
			"https://www.britannica.com/science/density",
			"https://www.mathsisfun.com/algebra/proportions.html",
	};
	
	private String [] STYLINGS2 = {
			"linear-gradient(-45deg, #DCDCDC, #D3D3D3, #FFF0F5)",
			"red"
	};
	
	private String [] NODES2 = {
			"BEGIN!!", "If-statements", "F=ma", "Primes", "Functions", "Probability", "Velocity", "Systems", "Vectors", "Lines", "Pythagoras", "1-Node11", "1-Node12", "Click above line to finish!"
		};
		
	private int [][] ANSWERS2 = {
			{0},
			{2,3,2},
			{2,9,3},
			{6000,1,180},
			{60,30,0},
			{2,0,10},
			{17,7,4},
			{8800,62,25},
			{25,50,30},
			{14,6,0},
			{0,0,1},
			{5,5,120},
			{2,2,5}
	};
	
	private String [][] QUESTIONS2 = {
			{
				"NULL"
			},
			{
				"The force F1 applied to an object varies depending on the mass m of the object, where m <= 6 kg. If the mass is at least 5 kg, then F1 = 9 N, else F1 = 12 N. An additional force F2 is applied such that if the mass is lower than 3 kg, F2 = 6 N, else F2 = 3 N. What is the minimum acceleration of the object?",
				"For an input a, the Java function getForce(int a) returns 18 if a is even and 12 if a is odd. What is the acceleration of an object made of 2 pieces, EACH of equal integer mass of 3 kg? Assume the applied force is getForce(m) where m is the total mass of the object.",
				"A function f(k) contains a chain of if-else statements so the value of k is doubled. If the acceleration of an object is a, and f(a) returns the force required to accelerate it, then what is the mass of the object?"
			},
			{
				"For an input k, the code segment if (k % 2 == 1) { return true; } is executed. What is the lowest value of k such that k is prime and the segment returns FALSE?",
				"he function test() takes inputs n and k, and if ((n%k == 0)) the function returns true. If n = 101, for how many values of k would test(n,k) return true to ensure that 101 is prime?",
				"A certain integer n is inputted through a code segment that halves n if n is even and triples if n is odd. What is the minimum value of n such that the output is prime?"
			},
			{
				"The acceleration of a car is given by a(t) = 3t-1 m/s^2. Determine the force exerted by the engine at t = 2 seconds if the mass is 1200 kg.",
				"If instead the acceleration was a(t) = 2t + 3, determine the time t where the force exerted is 7500 N, given that the mass is 1500 kg.",
				"If the mass AND acceleration change as functions of time, where m(t) = 2t+3 and a(t) = 7t-1, determine the force exerted at t = 3 seconds."
			},
			{
				"If a random number is picked from the set {2, 3, 7, 1, 12}, what is the probability that the number is prime? Convert to a PERCENT and submit (ex: if the probability is (1/2) then submit 50)!",
				"Now instead if 2 random numbers are picked without replacement, what is the probability that the 1st number is prime AND the 2nd number is NOT? Convert to a PERCENT and submit!",
				"Given that a certain number is divisible by 3, 5, or 7, what is the probability that this number is prime?"
			},
			{
				"If the displacement of a particle is given by s(t) = 2t, what is the particle's velocity?",
				"If the displacement was instead a constant quantity, where s(t) = 3, what is the particle's velocity",
				"If the displacement is s(t) = (3a+1)t - (10a) for a constant a, what is the velocity if the particle reaches its starting point at t = 3 seconds?"
			},
			{
				"If f(x) is a linear function (so f(x) = ax+b for constants a and b), where f(3) = 1 and f(1) = 3, determine the value of f(-13).",
				"The intersection of 2 lines requires us to solve a system of equations. If the functions f(x) = 2x+1 and g(x) = 3x-2 describe the lines y = f(x) and y = g(x), determine the y-coordinate of the intersection point.",
				"If the functions f(x) = (3a-2)x + (2b+1) and g(x) = (b+4)x + (3a-6) are the same, determine the value of 6(a+b)."
			},
			{
				"There is a 60% chance that the velocity of a rocket is 8000 m/s and a 40% chance that the velocity is 10000 m/s. What is the expected velocity of the rocket?",
				"The probability that an engine explodes increases by a FACTOR of 10% EACH second it is in motion. If the engine travels at 4 m/s and it is guaranteed to explode upon traveling 20 meters, what is the probability that the engine explodes BEFORE it starts moving (t = 0 seconds)? CONVERT to a percent and round your answer to the nearest whole number!",
				"A car can travel at a certain velocity between 0 mph to 60 mph. If it is 3 times more likely to travel at less than 30 mph than to travel at at least 30 mph, what is the probability that the car covers 90 miles in 3 hours without accelerating?  CONVERT to a percent and submit!"
			},
			{
				"The probability of picking a red orb from a pack of orbs is 2 TIMES the probability of picking a blue orb from the same pack. If P(picking a green orb) = (1/4), what is the probability of picking a blue orb? (Assume only red, blue, and green orbs are in the pack). CONVERT to a percent and submit!",
				"There are 2 times as many red cars as blue cars, and 3 times as many green cars as blue cars. What is the probability of picking a green car if there are 12 cars in total? CONVERT to a percent and submit!",
				"If A and B are independent, disjoint events and P(A and B) = 0.18 and P(A or B) = 0.9, then determine 100*(P(A)-P(B)), assuming P(A) > P(B)."
			},
			{
				"What is the total speed of a car that is moving north at 6 mph and a wind blows north at 8 mph? Ignore friction.",
				"Now instead if the car was stationary and the wind blew leftward at 6 mph, what is the speed of the car? Ignore friction.",
				"A swimmer trying to swim 4 miles north in 2 hours and a tide moves south at the same speed, what is the net speed of the swimmer?"
			},
			{
				"Two lines in the cartesian plane have the same slope. If f(x) and g(x) represent the lines, how many solutions (x,y) are there to y = f(x) and y = g(x) if f(5) = g(5) + 1?",
				"If f(x) and g(x) are 2 lines such that f(2) = g(2) and f(3) = g(3)-1. How many values of k OTHER than k = 2 are there such that f(k) = g(k)?",
				"If y = f(x), y = g(x), and y = h(x) are 3 lines on the cartesian plane, what is the maximum number of ordered pairs (h, k) such that ALL 3 lines intersect at (h, k)?"
			},
			{
				"A boat traveling north at 3 mph is diverted by an eastward wind traveling 4 mph. What is the speed in mph of the boat now?",
				"Now, a westward wind blows 8 mph, in addition to the aforementioned eastward wind. What is the speed in mph of the boat now?",
				"hat speed in km/h does a plane have to travel northward to have a resultant speed of 150 km/h if there is a westward wind blowing at 90 km/h?"
			},
			{
				"For what point P = (x,y) on the line y = 3x in the cartesian plane is the distance sqrt(40) units from the origin? Enter the sum of the coordinates of P such that P is in Quadrant I.",
				"Instead if the line was y = -4x, for what point P is the distance sqrt(68) units from the origin? Enter the sum of the coordinates of P such that P is in Quadrant I.",
				"For a line y = mx+n, a certain point (12,16) on the line is at a distance of (3n+8m) from the origin. Determine the value of (m+n)."
			}
			
	};
	
	private String [] HINTS2 = {
			"NULL",
			"Analyze each part of the question since each part contains valuable information. Also use Newton's 2nd Law, where F = ma where m is mass, a is acceleration, and F is applied force <br> <br> Question 1: Minimum acceleration means minimum force and maximum mass. Determine under which conditions the TOTAL force (F1+F2) is minimized and the mass is maximized! <br> <br> Question 2: If the object is made of 2 pieces of equal mass, then m has to be even! <br> <br> Question 3: If a is the acceleration and f(a) is the force, then Force =  f(a) = 2a! What does this say about the mass?", 
			 "Remember that a prime number has NO factors besides 1, and that for an integer n, we would have to check that EVERY number below (and including) sqrt(n) and ABOVE 1 are NOT factors of n.<br> <br> Question 1: Substitute the lowest prime number, and if the function returns true, keep substituting the subsequent prime! <br> <br> Question 2:  Remember that every integer from 2 to sqrt(n) cannot be factors! This means that the remainder is NOT 0, so n % k is not 0. <br> <br> Question 3: Start with the lowest integer 1 and count your way up, plugging in every number and stop once you reach an output that is prime!", 
			 "Functions require an input and an output. For a function a(t) = 2t, the acceleration at t = 3 seconds is a(3) = 2*3 = 6. Here time t is the input and acceleration a(t) is the output. Thus, force is F(t) = m*a(t)  where m is the mass. Use this to solve the questions!", 
			 "Recall that a prime number CANNOT have any factors other than 1. The first couple prime numbers are 2, 3, 5, 7, 11, etc. <br> <br> The probability of an event occurring is the chance that the event occurs. <br> <br> For example, the probability of picking 1 from the numbers in the set {1, 2, 3} is (1/3). Note that picking 1 and then 2 requires multiplying the probabilities P(picking 1) and P(picking 2 AFTER 1 is picked), so this would be (1/3)*(1/2) since after 1 is picked, there are 2 numbers remaining.", 
			 "The displacement of an object is its distance from the starting position. Thus, if an object moves from position 0 to 3 to 2, the final displacement is (2 - 0) = 2. If the object starts from 1, then goes to 3, then back to 1, the displacement is (1 - 1) = 0. <br> <br> Note that the velocity is the (displacement/time elapsed). So if the displacement is 10 meters in 2 seconds, the velocity is 5 m/s. Thus if a function s(t) = kt gives the displacement, then the velocity is s(t)/t = (kt)/t = k.", 
			 "Remember that in solving systems, we are determining which variables fit 2 scenarios. Substitution can really help in determining what the equations are. <br> <br> Question 1: If f(x) = ax + b, then we are solving the system f(3) = 1 and f(1) = 3, meaning 3a + b = 1 and a + b = 3. Solve for a and b, then determine f(-13) which is -13a+b. <br> <br> Question 2: If y = f(x) and y = g(x), then f(x) = g(x) for some x, soo 2x + 1 = 3x - 2. Solve for x, then solve for the y-coordinate which is g(x) OR f(x) at the determined value of x. <br> <br> Question 3: If f(x) and g(x) are the same, then 3a - 2 = b + 4 and 2b + 1 = 3a - 6. Solve this system and then determine the value of 6(a+b).", 
			 "Recall that velocity is (distance traveled / time elapsed). <br> <br> Question 1: Expected value is like a weighted average, so 0.6(8000)+0.4(10000). <br> <br> Question 2: Read the question carefully! The probability increases by 10 PERCENT each SECOND. So if p is the probability of exploding at t = 0, then P(exploding at t seconds) = p*(1.1)^t. Note that guaranteed to explode at 20 meters means at 20/4 = 5 seconds, P(exploding) is 1. Use this to solve for p. <br> <br> Question 3: Note that 90 miles in 3 hours means 30 mph, since the car is not accelerating. If x is the probability that it travels >= 30 mph, then 3x is the probability of traveling at < 30 mph. These have to add up to 1. Use this to answer the question!", 
			 "Read each question carefully and note down any details the problem gives. Note that P(an event) is the probability that the event happens! <br> <br> Question 1: Use the fact that P(red orb) + P(blue orb) + P(green orb) = 1. <br> <br> Question 2: Note down important details here. Use a variable to represent the # of blue cars, and write the other variables (# of red cars and # of green cars) in terms of this. Note that they sum to 12 and P(green car) = (# of green cars)/(total # of cars). <br> <br> Question 3: Recall that P(A and B) = P(A)*P(B) = 0.18 and P(A or B) = P(A) + P(B) = 0.9. You can solve this system of P(A) and P(B) by substitution, but guessing and checking works better.", 
			 "Vectors are quantities that have a magnitude (length) AND direction. In each case, draw a vector with the specified speed (or calculate speed by doing distance/time). If the vectors are opposite to each other, they cancel out (like in #3). If the object does not move in a certain direction, the speed is 0 in that direction (see #2)! Also, vectors pointing in the same direction add up (see #1).", 
			 "Remember that y = f(x) means a line on the xy-plane (or cartesian plane) if f(x) is linear. For example, if f(x) = 3x + 1, then y = f(x) signifies the line y = 3x+1. <br> <br> Question 1: If f(5) = g(5) + 1 then the lines have a different y-intercept. What does this say about the lines, given the slopes are equal (meaning the lines are parallel)? <br> <br> Question 2: 2 non parallel lines can have only 1 intersection! <br> <br> Question 3: Think about how many points ALL 3 lines can intersect in. Recall that lines are straight; they aren't curves that can bend or have turning points!", 
			 "Vectors  are quantities that have a magnitude (length) AND direction. The problems here require the addition or subtraction of vectors, which utilizes the Pythagorean theorem. The final speed (or resultant speed) is the sum of squares of the 2 perpendicular speeds. <br> <br> For instance, if a car travels north at 24 mph and a westward wind blows at 7 mph, the final (resultant) speed of the car is sqrt(24^2 + 7^2) = 25 mph. Use this technique to solve the questions!", 
			 "Remember that if a certain value is on a line, then it satisfies the equation of the line. In other words, if x = k is on the line y=4x, then (k,4k) is on the line y=4x. Quadrant I means that BOTH x and y coordinates are positive. <br> <br> Question 1: For a value x = a, the point (a,3a) is on the line so (a)^2 + (3a)^2 = sqrt(40)^2 so 10a^2 = 40. <br> <br> Question 2: Here, (a, -4a) is on the line so a^2 + (-4a)^2 = sqrt(68)^2. <br> <br> Question 3: This question requires a system. If (12,16) is on the line, then 12m+n=16. The point (12,16) is 20 units from the origin, so 3n+8m=20. Solve the system and enter the sum (m+n)."
	};
	
	private String [] HINTLINKS2 = {
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
	};
	
	private String [] STYLINGS3 = {
			"linear-gradient(-45deg, #DCDCDC, #D3D3D3, #FFF0F5)",
			"red"
	};
	
		
	private String [] NODES3 = {
			"BEGIN!!", "Work", "Dot-Product", "Inequalities", "Trig", "Quadratics", "Kinematics", "Triangles", "Sequences", "Stoichiometry", "Loops", "1-Node11", "1-Node12", "Click above line to finish!"
		};
		
	private int [][] ANSWERS3 = {
			{0},
			{31,1,4},
			{40,6,1},
			{49,90,180},
			{0,3,3},
			{250,510,30},
			{15,12,110},
			{4,3,217},
			{26,1,3},
			{5,276,60},
			{9,20,60},
			{110,5, 3},
			{10,6,35}
	};
	
	private String [][] QUESTIONS3 = {
			{
				"NULL"
			},
			{
				"Determine the work done by a Force F = <2,3,4> N displacing the particle by <8,1,3> m.",
				"If the work done by the Force F = <6a, 3a+2, 2a-1> displacing the particle by <-2,6,3> is 3a J, determine the value of |a|.",
				"If the force vector is 3 times the displacement vector for a certain force F moving an object, determine the magnitude of the displacement vector if the work is W = 48 J."
			},
			{
				"If the force F exerted by a person can be between 3 N and 10 N inclusive and the displacement parallel to F can be between 2 meters and 4 meters inclusive , what is the maximum possible work done by the person?",
				"How about the minimum possible work done by the same person?",
				"If a force F varies between k N and (3k+2) N, inclusive, for what value of k is the maximum work done to move an object 4 m parallel to the direction of F equal to 20 J?"
			},
			{
				"Determine the angle in DEGREES between the vectors <2,3,6> and <5,1,2>. Round to the nearest whole number!",
				"For what angle in DEGREES between vectors v and w is the dot product of v and w equal to 0?",
				"For vectors v and w, if |v| = 3|w| and the dot product of v and w is 30, determine |w|^2 if the angle between v and w is 60 degrees."
			},
			{
				"If P(x) and Q(x) are quadratic functions (meaning the degree is 2), if P(x) > Q(x) for all values of x, how many intersections do the graphs of P(x) and Q(x) have?",
				"If F(x) = x^2 - 3x + 2, then what is the sum of the minimum AND maximum value of k such that F(k) <= 0?",
				"What is the minimum value of the quadratic function f(a) = a^2 + 2a + 4?"
			},
			{
				"A particle is launched at an angle of 60 degrees at a speed of 50 m/s. How far does the particle travel in 10 seconds?",
				"A particle is launched at an angle of 30 degrees at a speed of 200 m/s. How high is it at t = 10 seconds? Use g = 9.8 m/s^2.",
				"What angle in DEGREES does a particle need to be launched at so that the horizontal velocity component is -sqrt(3) times its vertical velocity component RIGHT before it lands?"
			},
			{
				"In triangle ABC with B = 60 degrees, a line parallel to BC cuts AC and AB at D and E respectively. If |AB| = 5 and |AC| = 7, determine the value of floor(10*|DE|) if 3|AD| = |DC|.",
				"In triangle ABC, if A = 30 degrees, determine the value of floor(|BC|) if the area of the triangle is 50 and |AC| = 10.",
				"In triangle ABC, if BC*sin(a)*cos(a) = AB*sin(b)*cos(b), for a = 15 degrees and b = 20 degrees, determine the largest angle in ABC in DEGREES."
			},
			{
				"How many seconds does it take for a particle launched at 40 m/s at an angle of 30 degrees to reach the ground? Use g = 10 m/s^2.",
				"A ball launched upwards at 30 m/s reaches its highest point at how many seconds after the launch? Use g = 10 m/s^2.",
				"How far (horizontally) does a particle travel if it is launched at a 30 degree angle with speed 50 m/s? Use g = 10 m/s^2. Round to the nearest whole number and submit!"
			},
			{
				"For a parameter k, the sides of a right triangle are (2k+1), (k-3), and the hypotenuse is (3k+4), if K is the sum of all values of k, determine the value of |4k|.",
				"For triangle ABC, if A = 60 degrees, |AB| = 2x, |AC| = x, and |BC| = sqrt(2x+1), determine the value of x if x > 0.",
				"For a triangle ABC, a line DE parallel to BC is drawn, where D is in line segment AB and E is in line segment AC. If |AD| = x+1, |DB| = x-3, |AE| = 4x+3, and |EC| = x-2, determine the value of x if x > 0. Round to the nearest whole number!"
			},
			{
				"A particle travels horizontally at a speed of k m/s. Let S be the sequence of distances covered at n seconds, where S = {10, 15, 20, etc} for n = 1, 2, 3, 4, etc. What is the value of k?",
				"If a car travels at 1 m/s for 0 < t < 1, then 2 m/s for 1 < t < 2, then 3 m/s for 2 < t < 3, etc, then what is the distance covered at 23 seconds (t = 23)?",
				"A particle is launched s m/s at an angle of 30 degrees. If the times t where a particle reaches a vertical height of 0 m, 45 m, and back to 0 m has a common difference of 3 seconds, determine the value of s. Use g = 10 m/s^2."
			},
			{
				"A slab of metal in the shape of an equilateral triangle is made of lead (Molar Mass = 207 g/mol, Density = 11.3 g/cm^3). Determine the number of moles of lead if the slab has a side length of 20 cm and depth of 10 cm. Round to the nearest whole number and submit!",
				"A uniform Titanium sword shaped like an Isosceles triangle  is cut through the altitude which is perpendicular to the base. If the original sword has n moles and each broken half has m moles, determine 10n/m.",
				"Now instead imagine the sword being broken into six pieces along the medians, determine the value of 10n/m."
			},
			{
				"What is the output of the function add() where the body contains this: int a; for(int i = 0; i < array.length; i++) { a+= 2i;} Assume the array's length is 10.",
				"What is the output of the code segment: int a; int count; for (int i = 0; i < 10; i++) { a = i; if (a % 2 == 0) { count++;}.",
				"If a certain sequence is a Geometric Progression such that g5/g3 = 9, determine the value of k so that this code segment generates the sequence: for(let j = 0; j < 20; j *= k) { print(j); }."
			},
			{
				"A slab is split into 10 pieces, each with a different molar mass. The function getMass(k) returns the mass of the slab piece marked as the input k. What is the value of n that would make the code print the masses of all the slabs: for (var i = 0; i < n; i++) { print(getMass(n)); }.",
				"If the smallest possible portion of a certain slab of iron is 2 g, determine how many times the following loop runs: while(w < 2) { w = w/2; }. Assume w = 128 g before this started.",
				"A loop is written to keep track of bonding valence electrons in a Covalent compound (every iteration represents a different bonding electron). If we know a certain compound contains Phosphorus (Molar Mass = 31 g/mol), has a molar mass of 208 g/mol, and the loop iterates 10 times, what is Phosphorus bonded to? Assume all bonds are single bonds. Enter the molar mass of the compound to the nearest WHOLE number."
			}
			
	};
	
	private String [] HINTS3 = {
			"NULL",
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
			 "Draw and analyze the code for each scenario, and remember that a mole is a way to quantify chemicals and compounds. The # of moles in a solid is equal to (mass of solid)/(Molar Mass of the thing the solid is made of). <br> <br> Question 1: How many slabs are there? What is the purpose of n? <br> <br> Question 2: NOTICE the loop termination condition of w < 2, so it terminates when a value of w less than 2 is passed into the loop! <br> <br> Question 3: The loop running 10 times means there are 5 bonds since each bond has 2 electrons and each iteration represents a BONDING valence electron."
	};
	
	private String [] HINTLINKS3 = {
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
			"https://www.tutorialspoint.com/computer_programming/computer_programming_loops.html",
			"https://www.tutorialspoint.com/computer_programming/computer_programming_loops.html"
	};
	
	private String [] STYLINGS4 = {
			"linear-gradient(-45deg, #FF6347, #FFB6C1, #FFA07A)",
			"red"
	};
	
	private String [] NODES4 = {
			"BEGIN!!", "Logarithms", "Populations", "Big-O", "Sinusoids", "Polynomials", "Modulus", "Homeostasis", "Charge", "DNA", "Biotech", "1-Node11", "1-Node12", "Click above line to finish!"
		};
		
	
	
	private String [] HINTS4 = {
			"NULL",
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
			"Taking advantage of the properties of DNA is a major technique in Biotechnology! <br> <br> Question 1: In Gel Electrophoresis, the sample is put on a gel (Agarose for DNA) and an Electric Field is applied, causing theDNA  sample to move towards the side with opposite charge. Since DNA is negatively charged, the sample moves towards the positively charged anode. The more mass the sample has, the less distance it covers. <br> <br> Question 2: Basically how many GTs are there in the sequence? If the enzymes cut at these locations, how many fragments are produced? <br> <br> Question 3: Each cycle of PCR doubles the amount of DNA present. Note that ssDNA means single-stranded DNA. As such, 4*2^n = 30 where ceil(n) is the required number of cycles!"
	};
	
	private String [] HINTLINKS4 = {
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
	};
	
	private int [][] ANSWERS4 = {
			{0},
			{5,20,23},
			{2,129,2},
			{327,50,7},
			{16,216,1},
			{315,9,3},
			{90,3,3},
			{3,6,4},
			{1,2, 32},
			{10,2,6},
			{2,2,58},
			{33,1,133},
			{123,4,3}
	};
	
	private String [][] QUESTIONS4 = {
			{
				"NULL"
			},
			{
				"A population of rabbits starts off at 30 and grows exponentially by 10% each year. How many years does it take for the population to reach 50 rabbits? Round to the nearest whole number and submit!",
				"A population of deer grows exponentially at a% every year. What is the value of a if it takes log(2)/log(1.2) years for the population to double? Round to the nearest whole number and submit!",
				"If the immigration rate and emigration rate are equal for a population of foxes, determine the initial population size if the population grows by 30% each year, and reaches a size of 50 foxes in 3 years. Round to the nearest integer and submit!"
			},
			{
				"For a function f(x), g(x) = O(f(x)) means that g(x) is the simplified expression inside the big-O. For example, if f(x) = 3x^2-2, then g(x) = x^2. The binary search algorithm is used to search for a value in a sorted array. It keeps splitting the array into halves and searching the required half. For example, to search for 7 in {2, 3, 5, 7, 9}, the array being searched is {5, 7, 9}, then {7, 9}, and then {7}. If the big-O is O(f(n)), determine f(513). Round your answer to the nearest integer and submit!",
				"The merge sort algorithm also splits an array into halves, but this time to sort. MergeSort keeps splitting the array into halves until there are just individual indices. Then, each half is merged with another half, where the merge algorithm takes O(n) time.  If the big-O is O(g(n)), determine g(70). Round your answer to the nearest integer and submit!",
				"What is the time complexity of the following code segment: for(int i = 1; i <= 64; i *= 2) { print(i); } . . .  If the big-O is O(h(n)), determine the value of h(120)? Round to the nearest integer and submit!"
			},
			{
				"A population of pigeons grows by P(t) = Asin(Bt)+C for time t in years. Determine the value of B if the period is 1/52. Round to the nearest integer and submit!",
				"Determine the value of A*C if the maximum population is 15 and the minimum population is 5.",
				"If Q(t) is the graph of the predator population such that A, B, and C in Q(t) are the same as the corresponding values in P(t), what would be the maximum value of |P(t)-Q(t)|?"
			},
			{
				"For a function f(x), g(x) = O(f(x)) means that g(x) is the simplified expression inside the big-O. For example, if f(x) = 3x^2-2, then g(x) = x^2. Using this scheme, if f(n) = 3n^4 - 4n^3 + 3n^2, and g(n) = O(f(n)), determine the value of g(2).",
				"If instead f(n) = (n-3)(n+1)(n-4), determine the value of g(6).",
				"If P(n) and Q(n) are functions such that P(n) = O(Q(n)) and Q(n) = O(P(n)), determine the value of P(Q(1))."
			},
			{
				"If |sin(x)| = cos(x), determine the maximum value of x in 0 < x < 360 degrees.",
				"If f(x) = |2sin((1/3)x+1)|, determine the period of f(x). Round to the nearest integer and submit!",
				"If g(x) = 2sin|4x-12|-10, determine the x-coordinate of the axis of symmetry."
			},
			{
				"Recall that [P](t) is the concentration of P at time t. In a certain biochemical model, protein A inhibits protein B, and protein B inhibits protein A (perfect negative feedback). The extent of inhibition is the same for both proteins. If [A](t) = a*cos(t)+c and [B](t) = a*cos(t+k)+c, determine the minimum value of k in DEGREES",
				"If the extent to which protein A functions is FURTHER affected by the concentration of a coactivator protein C where [C](t) = m-kt, determine the value of m if [A](t) = [C](t)*(a*cos(t)+c) and [A](0)= 3(a+c).",
				"The concentration of Carbon Monoxide (CO) is given by f(t) = |4cos(4t)|*e^(-0.05t). What is the concentration of CO at t = 7 seconds? Round to the nearest integer and submit!"
			},
			{
				"If a polynomial P(x) has 3 zeros, how many zeros does H(x) = |P(x)| have?",
				"A polynomial f(x) is defined as f(x) = (x-a)(x-b)(x-c) for 0 < a < b < c. If g(x) = f(|x|), determine the number of zeros for g(x).",
				"If f(x) = |x-3|^2 + 2|x| - 12, determine the sum of roots of f(x). Round to the nearest integer and submit!"
			},
			{
				"The process of Cellular Respiration provides energy for cells to function. The release of energy from Glucose can be approximated by a polynomial P(t) = t^3 - 3t, where P(t) is equal to the TOTAL amount of ATP generated by time t. Feel free to graph P(t) using a calculator. At what time t has Glucose been converted into Fructose-6-Phosphate?",
				"At what time t has Glycolysis finished?",
				"According to the model, what is the total amount of ATP produced if Oxidative Phosphorylation of the Glucose molecule we are tracking ends at t = 3.5? Round to the nearest integer and submit!"
			},
			{
				"Determine the distance traveled by an electric charge q in 5 seconds if the displacement is given by x(t) = 2t-3.",
				"Two particles P1 and P2 with charges q1 and q2 respectively are positioned on a line. If electrons move from P1 to P2 causing the number of electrons on P2 to double, determine the value of |q1/q2| before the transfer occurred.",
				"Determine the magnitude of electric force |F| between two particles with charges q and -3q that are a distance of 4 m from each other. If |F| = Bkq^2 where k is the Coulomb constant, find the value of 32B."
			},
			{
				"Mitosis is a term for Cell Division, where cells divide to form tissues, organs, etc. The process of cell division requires that both daughter cells have enough DNA. If G1=1, S=2, G2=3, and M=4, enter the number corresponding to the cell cycle phase where DNA replication occurs.",
				"If a cell during the G1 phase contains k grams of DNA and in the G2 phase contains m grams of DNA, determine the value of m/k.",
				"The energy to power DNA Replication comes from the Phosphoanhydride linkages which are broken from NTPs before they are incorporated as NMPs in the DNA strand. If each NTP contains the same amount of energy of 1.8*10^-23 kJ, and there are 3.2 billion bases in the human genome, around how much energy (in picojoules) might DNA replication cost? Round to the nearest integer and submit!"
			},
			{
				"A gel electrophoresis is conducted on a DNA sample. Determine the Electric Field strength if 3u/v = 1/11, where u is the Electrophoretic mobility and v is the drift velocity.",
				"What is the net speed of a protein sample if its electrophoretic velocity is 4 m/s towards the anode and its electroosmotic flow is 3 m/s towards the anode?",
				"An Ion-Exchange Chromatography is performed to separate a solution containing amino acids Histidine, Aspartate, Lysine, and Arginine based on charge. If the surface is embedded with immobilized anions, what solute comes out first? Enter the MOLAR MASS of the amino acid."
			},
			{
				"In an electrophoresis experiment, DNA Sample 1 has mass 50 g, DNA Sample 2 has mass 75 g, and DNA Sample 3 has mass 100 g. Rate the distance of the samples from closest to furthest from the anode after the electrophoresis is done (ex: if your answer is Sample 2, then Sample 3, then Sample 1, enter 231).",
				"Restriction Enzymes cut DNA Sequences at specific locations, producing DNA fragments. How many fragments are generated if the strand AATGTGGGTACCCAGTCAA is cut with Restriction enzymes recognizing the sequence GT?",
				"Polymerase-Chain Reaction (PCR) copies a small sample of DNA repeatedly so there is enough of the sample to study. Starting with 4 strands of ssDNA, how many cycles of PCR replication does it take to make at least 30 ssDNA strands?"
			}
			
	};
	
	private String [] STYLINGS5 = {
			"linear-gradient(-45deg, #9370DB, #EE82EE, #DDA0DD)",
			"red"
	};
	
	private String [] NODES5 = {
			"BEGIN!!", "Momentum", "Rotations", "COM", "Derivatives", "Integrals", "Rate Laws", "PV Graph", "Pathways", "Gas Laws", "Pulmonology", "1-Node11", "1-Node12", "Click above line to finish!"
		};
	
	private String [] HINTS5 = {
			"NULL",
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
			"Gas Laws can be useful when analyzing pulmonary physiology. Use the gas law P1*V1 = P2*V2 for question #1! <br> <br> For question #2, the work done by breathing is just (Pressure change)*(Volume change), similar to integrating pressure with respect to volume. <br> <br> For question #3, the minute ventilation is VE = (respiratory rate)*(flow rate)*(inspiratory time)."
	};
	
	private String [] HINTLINKS5 = {
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
	};
	
	private int [][] ANSWERS5 = {
			{0},
			{72,39,3},
			{32,3,58},
			{5,22,4},
			{127,5,190},
			{19,9,2},
			{3,22,20},
			{3,4,3},
			{4382,4382,2},
			{2,36000,60000},
			{1745,1662,2327},
			{62,7,65},
			{125,25,12}
	};
	
	private String [][] QUESTIONS5 = {
			{
				"NULL"
			},
			{
				"A sphere of mass 2 kg is placed on a 3 meter string, and the string is spun around point P at a tangential velocity of 12 m/s. What is the angular momentum of the sphere about P?",
				"A box with linear momentum p = <3,2,5> kg m/s is a distance of r = <8,7,4> m from the origin. What is the MAGNITUDE of angular momentum of the box about the origin? Round to the nearest integer and submit!",
				"An ice skater spins around at 6 rad/s. After stretching her arms to double her moment of inertia, what is the new angular velocity of the skater?"
			},
			{
				"A system of 3 particles with masses 4 kg, 2 kg, and 5 kg travel at horizontal velocities of 3 m/s, 5 m/s and 2 m/s respectively. What is the linear momentum of the center of mass of the system?",
				"What is the velocity of the center of mass? Round to the nearest integer and submit!",
				"If the particles also travel at vertical velocities 4 m/s, 6 m/s, and 4 m/s respectively, what is the magnitude of momentum for the center of mass? Round to the nearest integer and submit!"
			},
			{
				"If the angular velocity w of a ball tied to a string is given by w(t) = 3t - 2sin(t) rad/s, what is the angular acceleration at t = 3 seconds? Round to the nearest integer and submit!",
				"If the angular momentum of a system is given by L(t) = 3t^2 - 2t + 4, what is the applied torque at t = 4 seconds?",
				"If the work done by a torque is given by W(a) = 4a-ln(a) J where a is the angle covered, determine the torque at a = 6 radians. Round to the nearest integer and submit!"
			},
			{
				"Determine the total mass of a rod if the linear mass density is given by d(x) = 3x-sin(x)+4 kg/m and the rod goes from x = 0 to x = 8 m? Round to the nearest integer and submit!",
				"Now, determine the x-position of the COM of the rod. Round to the nearest integer and submit!",
				"If the rod moves horizontally where x(t) = 3ln(t)+4 is the position for the LEFTMOST point on the rod (meaning the point at x = 0), what is the linear momentum of the COM at t = 2? Round to the nearest integer and submit!"
			},
			{
				"There are 2 moles of an ideal gas in a container and the number of moles is kept constant. The pressure in the container is given by P(t) = 3t-4 Pa and the volume of the container is given by V(t) = 12t + 1 L. What is the rate of temperature change at t = 5 seconds? Round to the nearest integer and submit!",
				"In a container where the only changing quantities are the pressure and temperature, and it is given that the final temperature is thrice the initial temperature, what is the rate of change of the final pressure if the initial pressure changes at 3 pascals/s?",
				"In a balloon with a constant 4 moles of ideal Helium gas, where the volume expansion is given by V(t) = 3e^t+7 L and the temperature is given by T(t) = sin(t)+1 K, then determine |dP/dt| at t = 2 seconds. Round to the nearest integer and submit!"
			},
			{
				"hat is the rate of change of the work dW/dt at t = 4 seconds in a thermodynamic process if the pressure is constant at 3 pascals and the volume is given by V(t) = 3sin(t)+4cos(t) L? Round to the nearest integer and submit!",
				"If instead V(t) = 2e^0.5t L, what is dW/dt at t = 4 seconds? Round to the nearest integer and submit!",
				"If the Work W done in a thermodynamic process is given by W(V) = 3V^2 - 4V + 2, determine the pressure P when V = 4 L."
			},
			{
				"Recall that [X](t) means the concentration of X at time t. The rate constant for the first-order decomposition of Cyclobutane (C4H8) is (9.2*10^-3) 1/s. What is the concentration of C4H8 after 20 seconds if the initial concentration of C4H8 is 4 M? Round to the nearest integer and submit!",
				"For a zero-order reaction A --> B + C, with rate constant of 3*10^-4 M/s, how many seconds would it take for [A] to become 0 if the initial [A] is 1.2*10^-3 M?",
				"For the reaction K --> M + N, what is the order of the chemical reaction if 1/([K](t)) = (1/(2[K]^2)) + kt where k is the rate constant and [K] is the initial concentration?"
			},
			{
				"Determine the amount of work done by 4 moles of ideal gas at a constant temperature of 120 K when it expands so that the volume it takes up triples. Round to the nearest integer and submit!",
				"Determine the amount of heat transfer in the same scenario.",
				"If the heat capacity ratio Cp/Cv for an ideal gas is (7/5), determine the final volume of an adiabatic expansion of this gas if the pressure doubles and the initial volume is 3 L. Round to the nearest integer and submit!"
			},
			{
				"A chemical pathway containing 3 steps is used to convert Nitric Oxide (NO) to Nitrogen Gas (N2) and water (H2O). Which step (1, 2, or 3) is the rate determining step of the pathway if step 1 proceeds faster then step 3, which proceeds faster than step 2?",
				"Recall that nM/s denotes nanomolar/second (1 M/s = 10^9 nM/s). In an SN1 organic reaction, C4H9Br is decomposed into C4H9 and the leaving group (Bromide) with rate constant k1, and then C4H9 reacts with Methanol (CH3OH) forming 2 products (rate constant k2). If k1 = 1.2*10^-4 (1/s) and k2 = 3*10^-2 (1/s*M) for a specific temperature, what is the rate of the reaction in nM/s if at time t, [C4H9Br] = 0.3 M and [CH3OH] = 0.2 M?",
				"If at another time, [C4H9Br] = 0.5 M and [CH3OH] = 0.4 M, determine the reaction rate in nM/s."
			},
			{
				"What is the amount of work done by 7 moles of ideal gas at constant pressure if the temperature increases from 20 K to 50 K? Round to the nearest integer and submit!",
				"Determine the amount of heat transferred to 4 g of H2 in a container at constant volume if the temperature increases from 40 K to 80 K. Round to the nearest integer and submit!",
				"ow instead if the container had constant pressure instead of constant volume, determine the amount of heat transfer. Round to the nearest integer and submit!"
			},
			{
				"What is the molar mass of the intermediate compound (product of Step 1, reactant of Step 2) in this reaction: Step 1: CO2 + H2O --> H2CO3, Step 2: H2CO3 → (H+) + (HCO3-)?",
				"Carbonic Anhydrase is the enzyme that accelerates the above reaction. If Carbonic Anhydrase allows the reaction to proceed 10^k times faster, what is k? Feel free to do a Google search!",
				"What metal prosthetic group is used by Carbonic Anhydrase? Enter the MOLAR MASS of this metal."
			},
			{
				"In an expanding lung, if the volume of O2 gas changes by a factor of 0.8, by what factor does the volume taken up by the O2 gas change? Multiply by 100 and submit!",
				"Determine the work done by breathing (WoB) for a certain animal if the change in pressure in its lungs is 50 Pa and the change in volume is 0.5 L?",
				"Determine the value of minute ventilation (VE) in L*breaths/minute  if the respiratory rate is 20 breaths/minute, the flow rate is 0.1 L/s, and the inspiratory time is 6 seconds?"
			}
			
	};
	
	public levelDatabase() {
		
	}
	
	public String [] getStylings(int level) {
		if (level == 1) {
			return STYLINGS1;
		}
		else if (level == 2) {
			return STYLINGS2;
		}
		else if (level == 3) {
			return STYLINGS3;
		}
		else if (level == 4) {
			return STYLINGS4;
		}
		else if (level == 5) {
			return STYLINGS5;
		}
		else {
			return null;
		}
		
	}
	
	public String[] getNodes(int level) {
		if (level == 1) {
			return NODES1;
		}
		else if (level == 2) {
			return NODES2;
		}
		else if (level == 3) {
			return NODES3;
		}
		else if (level == 4) {
			return NODES4;
		}
		else if (level == 5) {
			return NODES5;
		}
		else {
			return null;
		}
		
	}
	
	public int[][] getAnswers(int level) {
		if (level == 1) {
			return ANSWERS1;
		}
		else if (level == 2) {
			return ANSWERS2;
		}
		else if (level == 3) {
			return ANSWERS3;
		}
		else if (level == 4) {
			return ANSWERS4;
		}
		else if (level == 5) {
			return ANSWERS5;
		}
		else {
			return null;
		}
	}
	
	public String[][] getQuestions(int level) {
		if (level == 1) {
			return QUESTIONS1;
		}
		else if (level == 2) {
			return QUESTIONS2;
		}
		else if (level == 3) {
			return QUESTIONS3;
		}
		else if (level == 4) {
			return QUESTIONS4;
		}
		else if (level == 5) {
			return QUESTIONS5;
		}
		else {
			return null;
		}
	}
	
	public String[] getHints(int level) {
		if (level == 1) {
			return HINTS1;
		}
		else if (level == 2) {
			return HINTS2;
		}
		else if (level == 3) {
			return HINTS3;
		}
		else if (level == 4) {
			return HINTS4;
		}
		else if (level == 5) {
			return HINTS5;
		}
		else {
			return null;
		}
	}
	
	public String[] getHintLinks(int level) {
		if (level == 1) {
			return HINTLINKS1;
		}
		else if (level == 2) {
			return HINTLINKS2;
		}
		else if (level == 3) {
			return HINTLINKS3;
		}
		else if (level == 4) {
			return HINTLINKS4;
		}
		else if (level == 5) {
			return HINTLINKS5;
		}
		else {
			return null;
		}
	}
	
}