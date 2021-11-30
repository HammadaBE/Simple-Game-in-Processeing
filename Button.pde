  
public class Button {
  
  public Button(){
     
  
  }
   //Button draw
   void display(int x,int y,int w,int h){
     
  fill(0);
  stroke(0);
  rect(x-5, y-5, w+10, h+10);
  fill(0, 70, 0);
  stroke(0, 70, 0);
  rect(x, y, w, h);

  textFont(f, 25);                  
  fill(255); 
  text("Click here \nto restart!", 30, 100);
  
  textFont(f, 25);                  
  fill(255); 
  text("Click here \nto exit \nthe game!", 30, 600);
  }
  
}
    
