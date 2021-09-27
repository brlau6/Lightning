int startX = 140;
int startY = 100;
int endX = 140;
int endY = 100;
int newX = 190;
int newY = 250;
boolean loop = false;

PImage img;

void setup(){
  size(400,400);
  background(0);
  img = loadImage("palpatine.png");
  frameRate(10);//increase for more power
}

void draw(){
  fill(0,0,0,200); //full opacity = 255
  rect(0,0,400,400);
  image(img,100,0, width/2.25, height/3); //draws palpatine
  fill(255);
  text("Click to force block the", 255,30);
  text("UNLIMITED POWER!", 255,50);
     //note for web version; don't need to reload on Processing
  text("Reload to",20,30);
  text("restart power",20,50);
  
  lightning(130,120,130,120,0,220,160);//left
  lightning(260,130,260,130,0,220,160);//right
}

//[draws lightning with many branches]
//startX and endX should be equal; startY and endY should be equal
//branch specifies at which y-value lightning branches
//newY specifies where the lightning starts bending again from the branch
//set newY to a number greater than branch
//newX only matters if "newX = startX" is commented out, otherwise dw about it
void lightning(int startX, int startY, int endX, int endY, int newX, int newY, int branch){
    while(endY < 425){    
    strokeWeight(5);
    stroke(0,0,255);//blue
    line(startX+2, startY+2, endX, endY);// +2 offsets blue to not clip with white
    
    strokeWeight(2);
    stroke(255,255,255);
    line(startX, startY, endX, endY);//thin line
    
    if(startY>branch){
      // increase 4 to decrease branches, decrease 4 to increase branches
      if(Math.random()*4 < 1){
        newY = startY;
      }
      newX = startX;
      while(newY < 400){
        strokeWeight(5);//blue lightning
        stroke(0,0,255,150);
        line(startX+2, startY+2, newX, newY);
        
        strokeWeight(2);//white lightning
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

// toggle lightning animation on mouseclick
void mousePressed(){
  loop = !loop;
  if(loop == false){
    noLoop();
  } else {
    loop();
  }
}
