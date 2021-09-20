int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup(){
  size(400,400);
  background(0);
  strokeWeight(2);  
}

void draw(){
  fill(0,0,0,5);
  rect(0,0,400,400);
  
  while(endX < 400){    
    stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    line(startX, startY, endX, endY);
       
    startX = endX;
    startY = endY;
    
    endX = startX + ((int)(Math.random()*9));
    endY = startY + ((int)((Math.random())*18)-9);
  }
}

void mousePressed(){
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
