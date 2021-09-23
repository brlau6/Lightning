int startX = -10;
int startY = 150;
int endX = -10;
int endY = 200;
int newX = 220;
int newY = 150;
int branchStart = ((int)(Math.random())*100+100);

void setup(){
  size(400,400);
  background(0);
}

void draw(){
  fill(0,0,0,25);
  rect(0,0,400,400);
  
  //stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  
  /*
  while(startX < 500){
    stroke(0,0,255);
    strokeWeight(4);
    beginShape();
    curveVertex(startX,startY);
    
    strokeWeight(2);
    stroke(255,255,255);
    beginShape();
    curveVertex(startX,startY);
    
    startX = startX + ((int)(Math.random()*15));
    startY = startY + ((int)((Math.random())*18)-9);
  }
  endShape();
  */
  
  /*
  beginShape();
  while(startX < 500){    
    strokeWeight(3);
    //curveVertex(startX, startY);

    startX = startX + ((int)(Math.random()*15));
    startY = startY + ((int)((Math.random())*18)-9);
  }
  endShape();
  */
  
  while(endX < 400){    
    strokeWeight(5);
    stroke(0,0,255,150);
    line(startX, startY, endX, endY);
    
    strokeWeight(2);
    stroke(255,255,255);
    line(startX, startY, endX, endY);//thin line
    
    //branch
    if(startX>branchStart){
      newY = startY; //don't cause line to jerk upward
      newX = startX;
      while(newX < 400){
        strokeWeight(5);
        stroke(0,0,255,150);
        line(startX, startY, newX, newY);
        
        strokeWeight(2);
        stroke(255,255,255);
        line(startX, startY, newX, newY);
        
        startX = newX;
        startY = newY;
        
        newX = startX + ((int)(Math.random()*15));
        newY = startY + ((int)((Math.random())*18)-9);
      }
    }
    startX = endX;
    startY = endY;
    
    endX = startX + ((int)(Math.random()*15));
    endY = startY + ((int)((Math.random())*18)-9);
  }
  
}

void mousePressed(){
  startX = -10;
  startY = 150;
  endX = -10;
  endY = 200;
  newX = 220;
  newY = 150;
}
