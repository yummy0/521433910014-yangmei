 square[]tinysquares;
int numOfSquare=100;

void setup() {
  size(800, 800);
  background(125);
  frameRate(5);
  initiateData();  
}

void initiateData() {
  tinysquares = new square[numOfSquare];
  for (int i=0; i< tinysquares.length; i++) {
    float aX=random(0,height);
    float aY=random(0,height);
    float ll=random(50,100);
    float ss=random(50,100);
    tinysquares[i]= new square(aX,aY,ll,ss);
  }
}

void draw(){
  background(125);
  for (int i=0; i< tinysquares.length; i++) {
    tinysquares[i].display();
  }
}

void keyPressed() {
  if ( key =='q') {
    initiateData();
  }
}
