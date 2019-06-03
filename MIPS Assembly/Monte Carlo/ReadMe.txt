The code should attain the number of Pi with "Monte Carlo" method which simulates tossing darts to a circle in the square dartboard. 
The sides of the square are 2 feet in length and the radius of the circle is 1 foot.
So the (number of darts in circle)/ (number of total darts)= Pi/4. 
Simply, just convert the below code to assembly code.

//////////////////////////////////
float pi_estimate = 0.0;
int number_in_circle = 0;
for (toss= 0; toss < number_of_tosses; toss++)
{
  x= rand_range(-1, 1);
  y = rand_range(-1,1);
  distance_squared=x*x+y*y;
  if(distance_squared<=1) number_in_circle++;
}
pi_estimate=4*number_in_circle/((float)number_of_tosses);
/////////////////////////////////

Use MARS to run the code, the result should be printed in run I/O.
