class square {
  float ax, ay, l, s;
  float by=ay+s/2;

  square(float ax_, float ay_, float l_, float s_) {
    ax=ax_;
    ay=ay_;
    l=l_;
    s=s_;
  }

  void display() {
    noStroke();
    //stroke(100);
    //if ( ax+l/2<400) {
    //  fill(50);
    //}
    //if ( ax+l/2>400) {
    //  fill(250);
    //}
    if (300 <=ax+(l/2) && ax+(l/2)<= 500 && 300<=ay+(s/2) &&ay+(s/2)<=500) {
      if (random(1)<0.5) {
        fill(random(0, 32));
      } else {
        fill(random(223, 255));
      }
    }
    if (((200<=ax+(l/2)&& ax+(l/2)<300)||(500<ax+(l/2)&& ax+(l/2)<=600))&&((200<=ay+(s/2) &&ay+(s/2)<300)||(500<=ay+(s/2) &&ay+(s/2)<=600))) {
       if (random(1)<0.5) {
        fill(random(32, 64));
      } else {
        fill(random(181, 223));
      }
    }
    if (((100<=ax+(l/2)&& ax+(l/2)<200)||(600<ax+(l/2)&& ax+(l/2)<=700))&&((100<=ay+(s/2) &&ay+(s/2)<200)||(600<=ay+(s/2) &&ay+(s/2)<=700))) {
      if (random(1)<0.5) {
        fill(random(64, 96));
      } else {
        fill(random(149, 181));
      }
    }
    if (((0<=ax+(l/2)&& ax+(l/2)<100)||(700<ax+(l/2)&& ax+(l/2)<=800))&&((0<=ay+(s/2) &&ay+(s/2)<100)||(700<=ay+(s/2) &&ay+(s/2)<=800))) {      
        fill(random(96, 149));     
    }
    rect(ax, ay, l, s);
  }
}
