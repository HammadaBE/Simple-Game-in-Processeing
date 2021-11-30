// Import java sound library
import processing.sound.*;


//Car possition and size variables

float posXC1;
int posYC1;
int posXC2;
int posYC2;
int posXC3;
int posYC3;
int posXC4;
int posYC4;

int wsize=30;
int hsize=60;


PImage carH;
PImage carH1;
PImage carV;
PImage carV1;

//crash variables
boolean d1, d2, d3, d4;

//Godzilla variables
PImage godzilla;
int  xGod, yGod, speed;   


//score variables
int score;


//Time variables
int time=millis();
int time1=millis();
int timech=millis();
int timecv=millis();

//text font
PFont f;
//button variables for moussePressed method
boolean light;
int x1=20, y1=30, x2=20, y2=560, w=170, h=150;


//Button class declaration
Button button1, button2;
//DrawRoad class declaration
DrawRoads drawRoads1;
//TrafficLights class declaration
TrafficLights trafficLights1;
//Score declaration
Score score1;
// Sound declaration
SoundFile sound;
SoundFile crash;


void setup() {



  size(800, 800);
  carH =loadImage("carH.jpg");
  carH1=loadImage("carH1.jpg");
  carV=loadImage("carV.jpg");
  carV1=loadImage("carV1.jpg");

  godzilla =loadImage("godzilla.jpeg");

  f= loadFont("Algerian-48.vlw");

  sound = new SoundFile(this, "background.mp3");
  sound.play();
  sound.loop();
  sound.amp(0.2);



  reset();
} 

void reset() {
  //Cars initial position
  posXC1=0;
  posYC1=330;
  posXC2=800;
  posYC2=430;
  posXC3=450;
  posYC3=0;
  posXC4=350;
  posYC4=800;

  //Godzilla initial position
  xGod=width/2;
  yGod=height/2;
  speed=5;

  //crash intial position
  d1=false;
  d2=false;
  d3=false;
  d4=false;
  //score intial value
  score=0;
  //Time variables
  time=millis();
  time1=millis();
  timech=millis();
  timecv=millis();

  light=true;
}

//Godzilla movement

public void keyPressed() {


  if (key == CODED) {

    if (keyCode==LEFT) {


      xGod-=speed;
    }

    if (keyCode==RIGHT) {

      xGod+=speed;
    }
    if (keyCode==DOWN) {
      yGod+=speed;
    }  
    if (keyCode==UP) {
      yGod-=speed;
    }
  }
  // limit the movement
  if (xGod<=0) {
    xGod=0;
  } else if (xGod>=width-50) {
    xGod=width-50;
  }
  if (yGod<=0) {
    yGod=0;
  } else if (yGod>=height-50) {
    yGod=height-50;
  }
}

void draw() {



  button1 = new Button();
  button2 = new Button();
  drawRoads1 = new DrawRoads();
  trafficLights1 = new TrafficLights();
  score1 = new Score(score, posXC1, posXC2, posYC3, posYC4);


  // set the time variables

  light=true;

  int lp=millis()-time;
  int lp1=millis()-time1;
  int lpch=millis()-timech;
  int lpcv=millis()-timecv;




  drawRoads1.draw();
  button1.display(20, 30, 170, 150);
  button2.display(20, 560, 170, 150);
  trafficLights1.draw();
  score1.display();


  //Collision conditional statements

  if (xGod+50>=posXC1 && xGod<=posXC1+hsize && yGod+50>=posYC1 && yGod<=posYC1+wsize ) {
    if (d1==false) {
      d1=true;
      ++score;
      crash = new SoundFile(this, "collision.wav");
      crash.play();
    }
  }

  if (xGod+50>=posXC2 && xGod<=posXC2+hsize && yGod+50>=posYC2 && yGod<=posYC2+wsize ) {
    if (d2==false) {
      d2=true;
      score++;
      crash = new SoundFile(this, "collision.wav");
      crash.play();
    }
  }
  if (xGod+50>=posXC3 && xGod<=posXC3+wsize && yGod+50>=posYC3 && yGod<=posYC3+hsize ) {
    if (d3==false) {
      d3=true;
      score++;
      crash = new SoundFile(this, "collision.wav");
      crash.play();
    }
  }
  if (xGod+50>=posXC4 && xGod<=posXC4+wsize && yGod+50>=posYC4 && yGod<=posYC4+hsize ) {
    if (d4==false) {
      d4=true;
      score++;
      crash = new SoundFile(this, "collision.wav");
      crash.play();
    }
  }




  //Set the traficc light changes 

  if (lp>0 && lp<6000) {
    stroke(255, 0, 0);
    fill(255, 0, 0);
    ellipse(262, 525, 40, 40);
  }

  if (lp>6000 && lp<8000) {


    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(262, 570, 40, 40);
  }
  if (lp>8000 && lp<14000) {




    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(262, 615, 40, 40);
  }

  if (lp>14000 && lp<16000) {


    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(262, 570, 40, 40);
  }
  if (lp>16000 && lp<18000) {

    stroke(255, 0, 0);
    fill(255, 0, 0);
    ellipse(262, 525, 40, 40);
  }

  if (lp>0 && lp<6000) {

    stroke(255, 0, 0);
    fill(255, 0, 0);
    ellipse(538, 262, 40, 40);
  }
  if (lp>6000 && lp<8000) {


    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(538, 217, 40, 40);
  }

  if (lp>8000 && lp<14000) {


    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(538, 172, 40, 40);
  }

  if (lp>14000 && lp<16000) {



    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(538, 217, 40, 40);
  }

  if (lp>16000 && lp<18000) {

    stroke(255, 0, 0);
    fill(255, 0, 0);
    ellipse(538, 262, 40, 40);
  }

  if (lp>18000) {
    time=millis();
  }


  if (lp1>0 && lp1<4000) {

    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(172, 262, 40, 40);
  }
  if (lp1>4000 && lp1<6000) {


    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(217, 262, 40, 40);
  }

  if (lp1>6000 && lp1<16000) {


    stroke(255, 0, 0);
    fill(255, 0, 0);
    ellipse(262, 262, 40, 40);
  }

  if (lp1>16000 && lp1<18000) {



    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(217, 262, 40, 40);
  }




  if (lp1>0 && lp1<4000) {

    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(628, 538, 40, 40);
  }

  if (lp1>4000 && lp1<6000) {



    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(583, 538, 40, 40);
  }

  if (lp1>6000 && lp1<16000) {



    stroke(255, 0, 0);
    fill(255, 0, 0);
    ellipse(538, 538, 40, 40);
  }

  if (lp1>16000 && lp1<18000) {


    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(583, 538, 40, 40);
  }

  if (lp1>18000)
  {
    time1=millis();
  }






  //Car Horizontal 
  if (d1==false) {
    if (lpch>0 && lpch<18000) {

      if (posXC1<=220) {
        image(carH, posXC1, posYC1, hsize, wsize);
        posXC1=posXC1+0.75;
      } else {
        image(carH, 220, 330, hsize, wsize);
      }
    } else {

      image(carH, posXC1, posYC1, hsize, wsize);
      posXC1++;
    }
  }


  if (d2==false) {
    if (lpch>0 && lpch<18000) {
      if (posXC2>530) {

        image(carH1, posXC2, posYC2, hsize, wsize);
        posXC2--;
      } else {

        image(carH1, 530, 430, hsize, wsize);
      }
    } else {
      image(carH1, posXC2, posYC2, hsize, wsize);
      posXC2--;
    }
  }


  //Car Vertical  

  if (d3==false) {
    if (lpcv>0 && lpcv<=8000) {

      if (posYC3<=220) { 
        image(carV, posXC3, posYC3, wsize, hsize);
        posYC3++;
      } else {

        image(carV, 450, 220, wsize, hsize);
      }
    } else {
      image(carV, posXC3, posYC3, wsize, hsize);
      posYC3++;
    }
  }



  if (d4==false) {
    if (lpcv>0 && lpcv<=8000) {
      if (posYC4>520) {

        image(carV1, posXC4, posYC4, wsize, hsize);
        posYC4--;
      } else {

        image(carV1, 350, 520, 30, 60);
      }
    } else {
      image(carV1, posXC4, posYC4, wsize, hsize);
      posYC4--;
    }
  }

  //Godzilla image

  if (time>=0) {
    image(godzilla, xGod, yGod, 50, 50);
  }
}

void mousePressed() {
  if ((mouseX>x1)&&(mouseX<x1+w)&&
    (mouseY>y1)&&(mouseY<y1+h)) {

    if (light) {
      reset();
    }
  }
  if ((mouseX>x2)&&(mouseX<x2+w)&&
    (mouseY>y2)&&(mouseY<y2+h)) {

    if (light) {
      System.exit(0);
    }
  }
}  
