
//Points Counter Variables
int points = 0;


//Paddle and Ping Pong Ball Variables
float x,y,speedX,speedY;
float diam = 15;
float rectSize = 10;

//Reset Function
void reset(){
  x = width/2;
  y = height/2;
  speedX= random(3,5);
  speedY =random(3,5);
  points = 0;
 background(50);
}



void setup() {
   size(700, 400);
    reset();
}
    

//Loop
void draw() {
 // background(50);
  
 if(mousePressed==false){
 background(0);
  } 
 print(mousePressed==true);
  
 //Ball hits the paddle, points increase, bounce back, speed increase 
 frameRate(30);
  if (  x > mouseX-rectSize/2 && x < mouseX+rectSize && y > height-20 && y < height -10 ) {
  speedY = speedY *-1;
  points++;
  speedY++;
  speedX++;
  }
  
 //score board
  text("points earned:"+points,600,20);
 
 //ping pong ball 
 frameRate(30);
   fill((int)random(255), (int)random(255), (int)random(255));
  ellipse(x,y,diam,diam);
  
  
//Paddle  
  frameRate(35);
  rectMode(CENTER);
  fill(255);
  rect( mouseX-rectSize/2,height-20,50, rectSize );

 //Get the ball to move
 frameRate(30);
   x += speedX;
   y += speedY;
   
    
//Make the ball bounce back if it hit left or right  
frameRate(30);
  if(x<0||x>width) {
      speedX *= -1;
     
   }
   
//Make the ball bounce back if it hit top of the window  
  frameRate(30);
   if(y<0){
     speedY *= -1;
   }
  
  
   
  //Game Over/Restart 
 //The ball does not bounce back after it hits the bottom of the window
  frameRate(30); 
   if(y>height) {
     fill(255);
     stroke(153);
     textSize(20);
     textAlign(CENTER);
     text("GAME OVER, Press any key to start over",320,180);
   }
  //Press any key to restart the game
   
   if(keyPressed){
       reset();
     }
          
}


     

     
   
   
