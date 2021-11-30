public class Score {
  
  private float posXC1;
  private int posXC2, posYC3, posYC4;
  private int x=620;
  private int y=30;
  private int w=170;
  private int h=150;
  private int score;
  private String result;

  public Score(int score ,float posXC1,int posXC2,int posYC3,int posYC4 ) {
    
    this.score=score;
    
    this.posXC1=posXC1;
    this.posXC2=posXC2;
    this.posYC3=posYC3;
    this.posYC4=posYC4;
  }

//Score area
public void display() {

  fill(0);
  stroke(0);
  rect(x-5, y-5, w+10, h+10);
  fill(0, 70, 0);
  stroke(0, 70, 0);
  rect(x, y, w, h);

  textFont(f, 20);                  
  fill(255); 
  text("Your score is\n\n       "+ score +"/4 !", 630, 70);

     if (score==4) {
    result="win";
    text("Your score is\n\n       "+ score +"/4 !\n\n   You "+result, 630, 70);
  }
  else if (posXC1>800 || posXC2<0-hsize || posYC3>800 || posYC4<0-hsize) {
    
    result="lose";
    text("Your score is\n\n       "+ score +"/4 !\n\n   You "+result, 630, 70);
    
 } 
   
}

}
