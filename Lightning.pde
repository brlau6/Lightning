int startX = 140;
int startY = 100;
int endX = 140;
int endY = 100;
int newX = 190;
int newY = 250;
int branchStart = ((int)(Math.random())*100+100);

PImage img;

void setup(){
  size(400,400);
  background(0);
  img = loadImage("palpatine.png");
}

void draw(){
  fill(0,0,0,20);
  image(img,100,0, width/2.25, height/3);
  rect(0,0,400,400);
  
  
  //stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  
  while(endY < 400){    
    strokeWeight(5);
    stroke(0,0,255);//blue
    line(startX+2, startY+2, endX, endY);// +2 offsets blue to not clip with white
    
    strokeWeight(2);
    stroke(255,255,255);
    line(startX, startY, endX, endY);//thin line
    
    //branch
    if(startY>180){
      //newY = startY; //don't cause line to jerk upward
      //newX = startX;
      while(newY < 400){
        strokeWeight(5);
        stroke(0,0,255,150);
        line(startX+2, startY+2, newX, newY);
        
        strokeWeight(2);
        stroke(255,255,255);
        line(startX, startY, newX, newY);
        
        startX = newX;
        startY = newY;
        
        newX = startX + ((int)((Math.random())*18)-9);
        newY = startY + ((int)(Math.random()*15));
      }
    }
    
    startX = endX;
    startY = endY;
    
    endX = startX + ((int)((Math.random())*18)-9);
    endY = startY + ((int)(Math.random()*15));
  }
  
}

void mousePressed(){
  startX = 140;
  startY = 100;
  endX = 140;
  endY = 100;
  newX = 190;
  newY = 250;
}
