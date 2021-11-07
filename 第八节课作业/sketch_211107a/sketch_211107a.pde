//自相似

void setup(){
 size(1400,1400);
 background(255);
//frameRate(2);
 
}

void draw(){
  background(255);
  drawCircle(mouseX,mouseY,500);
}

void drawCircle(float x,float y,float rr){
  float a=map(mouseX,0,width,0,255);
  float b=map(mouseY,0,width,0,255);
  stroke(b,a,150);
  fill(a,b,150);
  ellipse(x,y,rr,rr);
  if(rr>30){
   drawCircle(x,y+rr,rr/2);
   drawCircle(x,y-rr,rr/2);
   drawCircle(x-rr,y,rr/2);
   drawCircle(x+rr,y,rr/2);
  }
}
