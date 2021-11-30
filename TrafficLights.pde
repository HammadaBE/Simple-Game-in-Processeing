public class TrafficLights{


void draw(){


// Draw traffic lights
  //draw the frames of the traffic lights
  stroke(0);
  strokeWeight(0);
  fill(0);
  rect(225, 500, 75, 150);
  stroke(0);
  strokeWeight(0);
  fill(0);
  rect(150, 225, 150, 75);
  stroke(0);
  strokeWeight(0);
  fill(0);
  rect(500, 150, 75, 150);
  stroke(0);
  strokeWeight(0);
  fill(0);
  rect(500, 500, 150, 75);




  //TL 1
  stroke(0);
  fill(50, 0, 0);
  ellipse(262, 525, 40, 40);

  stroke(0);
  fill(50, 50, 0);
  ellipse(262, 570, 40, 40);

  stroke(0, 50, 0);
  fill(0, 50, 0);
  ellipse(262, 615, 40, 40);

  //TL 2 
  stroke(0);
  fill(50, 0, 0);
  ellipse(538, 262, 40, 40);

  stroke(0);
  fill(50, 50, 0);
  ellipse(538, 217, 40, 40);

  stroke(0);
  fill(0, 50, 0);
  ellipse(538, 172, 40, 40);


  //TL 3
  stroke(0);
  fill(0, 50, 0);
  ellipse(172, 262, 40, 40);

  stroke(0);
  fill(50, 50, 0);
  ellipse(217, 262, 40, 40);

  stroke(0, 50, 0);
  fill(50, 0, 0);
  ellipse(262, 262, 40, 40);

  //TL 4

  stroke(0, 50, 0);
  fill(0, 50, 0);
  ellipse(628, 538, 40, 40);

  stroke(50, 50, 0);
  fill(50, 50, 0);
  ellipse(583, 538, 40, 40);


  stroke(50, 0, 0);
  fill(50, 0, 0);
  ellipse(538, 538, 40, 40);
  
}

}
