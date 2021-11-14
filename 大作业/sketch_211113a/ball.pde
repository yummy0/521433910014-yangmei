class Ball {
  float rr;
  PVector speed1, speed2;
  PVector p;
  String txt = "fall";

  Ball(PVector position, float RR) {
    p=position;
    rr=RR;
    speed1=new PVector(random(-8, 8), random(5, 8));
  }
  
  void move1() {
    p.add(speed1);
  }

  void showBall() {
    noStroke();
    fill(#B3DEB6);
    ellipse(p.x, p.y, rr, rr);
  }
  
  void  edge() {
    if (p.x>width-rr/2) {
      p.x=width-rr/2;
      speed1.x*=-1;
    }
    if (p.x<rr/2) {
      p.x=rr/2;
      speed1.x*=-1;
    }
    if (p.y>height-rr/2) {
      textSize(200);
      text(txt, 300, 300);
    }
    if (p.y<rr/2) {
      p.y=rr/2;
      speed1.y*=-1;
    }
    if (p.y>700-rr/2&&p.x>mouseX-45&&p.x<mouseX+45) {
      p.y=700-rr/2;
      speed1.y*=-1;
    }
  }
}
