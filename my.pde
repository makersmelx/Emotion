/* @pjs preload="pg0.png,pg1.png,pg2.png,pg3.png,pg4.png"; */

PImage[] img= new PImage[5];
int time;

void setup(){
  time = millis();
  size(1080,657);
  frameRate(2);
  img[0]=loadImage("pg0.png");
   img[1]=loadImage("pg1.png");
    img[2]=loadImage("pg2.png");
     img[3]=loadImage("pg3.png");
      img[4]=loadImage("pg4.png");
  
}

int integer;
int store =-1;


void draw(){
  if(millis() - time >2000){


  float r = random(6);
  r=r-1;
  integer = int(r);
  
  while (integer == store){
      r = random(6);
      r=r-1;
      integer = int(r);
  }
  

   
   
   
image(img[integer], 0, 0);

store=integer;
  }
}

