public class DrawRoads{
 //road variables

  int a=-70;
  int b=-70;


  
// Draw the roads and the sidewalk
void draw(){
  
  //Draw the green areas 

  stroke(0, 75, 200);
  strokeWeight(1);
  fill(0, 150, 0);
  rect(0, 0, 800, 800);
  
  stroke(150);
  strokeWeight(0);
  fill(150);
  rect(0, 250, 800, 300);

  stroke(150);
  strokeWeight(0);
  fill(150);
  rect(250, 0, 300, 800);


  stroke(100);
  strokeWeight(0);
  fill(100);
  rect(0, 300, 800, 200);
  rect(300, 0, 200, 800);

  //draw the roadlines 

  stroke(255);
  strokeWeight(0);
  fill(255);
  for (int i=0; i<12; i++) {

    a=a+70;

    rect(a, 395, 40, 10);
  }


  stroke(255);
  strokeWeight(0);
  fill(255);

  for (int i=0; i<12; i++) {

    b=b+70;

    rect(395, b, 10, 40);
  }

  // Cleaning the center of the road crossing

  stroke(100);
  strokeWeight(0);
  fill(100);
  rect(300, 300, 200, 200);



  //drawing the lines of the center of the crossing road
  stroke(255);
  strokeWeight(0);
  fill(255);
  rect(290, 300, 10, 100);
  stroke(255);
  strokeWeight(0);
  fill(255);
  rect(400, 290, 100, 10);
  stroke(255);
  strokeWeight(0);
  fill(255);
  rect(500, 400, 10, 100);
  stroke(255);
  strokeWeight(0);
  fill(255);
  rect(300, 500, 100, 10);




}


}
