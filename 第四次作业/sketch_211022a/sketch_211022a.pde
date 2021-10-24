int rectX, rectY;      // Position of square button
int circleX, circleY;  // Position of circle button
int rectSize = 90;     // Diameter of rect
int circleSize = 93;   // Diameter of circle
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;

void setup() {
  size(600, 600);
  rectColor = color(#4AE1E5);
  rectHighlight = color(#55ECF0);
  circleColor = color(#D83B3B);
  circleHighlight = color(#E54A4A);
  baseColor = color(102);
  currentColor = baseColor;
  circleX = width/2+circleSize/2+10;
  circleY = height/2;
  rectX = width/2-rectSize-10;
  rectY = height/2-rectSize/2;
  ellipseMode(CENTER);
}


void draw() {
  ////画线条
  //if (mousePressed) {
  //  variableEllipse(mouseX, mouseY, pmouseX, pmouseX);
  //}
      //背景
  update(mouseX, mouseY);
   if (mousePressed) {
  fill(currentColor);
  variableEllipse(mouseX, mouseY, pmouseX, pmouseX);

   }
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);

  if (circleOver) {
    fill(circleHighlight);
  } else {
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX, circleY, circleSize, circleSize);

}

void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

void mousePressed() {
  if (circleOver) {
    currentColor = circleColor;
  }
  if (rectOver) {
    currentColor = rectColor;
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

void variableEllipse(int x, int y, int px, int py) {
  float speed = abs(x-px) + abs(y-py);
  //fill(150, map(mouseY, 0, width, 0, 255), map(mouseX, 0, width, 0, 255));
  noStroke();
  ellipse(x, y, speed/8, speed/8);
}
