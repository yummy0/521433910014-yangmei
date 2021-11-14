int len=20;
int wid=4;
//Yuan[][] yuans=new Yuan[len][wid];
Ball[] balls=new Ball[1];

void setup() {
  size(800, 800);
  background(255);
  PVector p=new PVector(random(width), random(400, 600));
  //for (int i=0; i<len; i++) {
  //  for (int j=0; j<wid; j++) {
  //    yuans[i][j] = new Yuan(40*i+20, 40*j+20, 40);
  //  }
  //}

  for (int i=0; i<1; i++) {
    balls[i]=new Ball(p, 40);
  }
}

void draw() {
  background(255);
  for (int i=0; i<1; i++) {
    balls[i].showBall();
    balls[i].move1();
    balls[i].edge();
  }
  //for (int i=0; i<len; i++) {
  //  for (int j=0; j<wid; j++) {
  //    //      yuans[i][j].drawYuan();
  //    yuans[i][j].drawRect();
  //  }
  //}
  noStroke();
  fill(#A6E5EA);
  rect(mouseX-45, 700, 90, 30);
}
