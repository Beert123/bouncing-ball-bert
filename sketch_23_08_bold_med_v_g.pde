float speedX = 2,speedY=2;
float x;
float y;
float ballX = 500; 
float ballY = 500;
void setup(){
  
size (1000,1000);  

}

void draw() {
  frameRate(20);
  clear();
  stroke(125);
  noFill();
  rectMode(CENTER);
  x = x + 1;
  y = y + 1;
  rect(500,500,500-x,500-y);

  ballX = ballX + speedX;
  ballY = ballY + speedY;
  circle(ballX,ballY,50);
  
  println(ballX + " " + (750 - x) + " " + speedX);
  
  if(ballX>  (750-x)){
    speedX *= -1;
    ballX =(750-x);
    println("Collision right!");
    
  }
  if(ballY>  750-y){
    speedY *= -1;
    ballY =(750-y);
  }
 
 
 
  if(ballX<  (250+x)){
    speedX *= -1;
    ballX =(250+x);
    println("Collision right!");
    
  }
  if(ballY<  250+y){
    speedY *= -1;
    ballY =(250+y);
  }
  
}
