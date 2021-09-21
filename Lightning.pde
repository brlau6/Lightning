int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup(){
  size(400,400);
  background(0);
}

void draw(){
  fill(0,0,0,5);
  rect(0,0,400,400);
  
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256),50);
  
  while(endX < 400){    
    strokeWeight(5);
    stroke(0,0,255,150);
    line(startX, startY, endX, endY);
    
    strokeWeight(2);
    stroke(255,255,255);
    line(startX, startY, endX, endY);//thin line
           
    startX = endX;
    startY = endY;
    
    endX = startX + ((int)(Math.random()*15));
    endY = startY + ((int)((Math.random())*18)-9);
  }
}

void mousePressed(){
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
