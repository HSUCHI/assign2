final int GAME_START = 0;
final int GAME_PLAYING = 1;
final int GAME_WIN = 2;
final int GAME_LOSE = 3;

int gameState ;

float ax;
float ay;
float speed = 5;

boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;


PImage fighterImg;
PImage treasureImg;
PImage hpImg;
PImage bg1Img;
PImage enemyImg;
PImage bg2Img;

PImage end1Img;
PImage end2Img;
PImage start1Img;
PImage start2Img;

int x, y;//treature
int z, a;//hp
int b, c;//enemy
int bg1,bg2;//bg1 2
int speedX,speedY; //fighter
int s1, s2; //start1 2

void mousePressed(){
 image(start1Img, 640,480);
 }


void setup(){
  size(640,480);
 gameState=GAME_START;
 
 
start1Img=loadImage("img/start1.png");
start2Img=loadImage("img/start2.png");  
image(start1Img,640,480);

  
bg1Img=loadImage("img/bg1.png");
bg2Img=loadImage("img/bg2.png");
  x=x-1;
  y=y-1;
  x=floor(random(600));
  y=floor(random(450));
treasureImg=loadImage("img/treasure.png");
  ax = width*5/6;
  ay = height/2;
  speedX = floor(random(3,5));
  speedY = floor(random(3,5));
fighterImg=loadImage("img/fighter1.png");
  
  
  z=floor(random(195));
hpImg=loadImage("img/hp.png");
 
  c=floor(random(400));
enemyImg=loadImage("img/enemy.png");
  
  rect(20,5,z,30);
  bg1=640;
  bg2=0;
  
end1Img=loadImage("img/end1.png");
end2Img=loadImage("img/end2.png");
  
 

  
}
 


 
void draw(){
    image(start1Img, 640,480);

 background(0);
   switch(gameState){
     case GAME_START:
      //mouse
     if(mouseY> 580 && mouseY< 620){
        if(mousePressed){
          //click
          gameState= GAME_PLAYING;
        }else{
          image(start2Img,640 ,480);
       }
     }
   
   }
 
  image(start1Img,640,0);
  image(bg1Img,bg1-640,0);
  image(bg2Img,bg2-640,0);
     bg2=bg2+1;
     bg2%=1280;
     bg1=bg1+1;
     bg1%=1280;
  
   b=b+3;
   b%=640;
  image(enemyImg,b,c);
  
       
     
       if (upPressed) {
        ay -= speed;
      }
      if (downPressed) {
        ay += speed;
      }
      if (leftPressed) {
        ax -= speed;
      }
      if (rightPressed) {
        ax += speed;
      } 
  image(fighterImg,ax,ay);
 
  image(treasureImg,x,y);
  colorMode(RGB);
  fill(255,0,0);
  
  rect(20,5,z,30);
  image(hpImg,10,5);
}  



  


void keyPressed(){
 
  if (key == CODED) { 
    switch (keyCode) {
      case UP:
        upPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    switch (keyCode) {
      case UP:
        upPressed = false;
        break;
      case DOWN:
        downPressed = false;
        break;
      case LEFT:
        leftPressed = false;
        break;
      case RIGHT:
        rightPressed = false;
        break;
    }
  }
}

