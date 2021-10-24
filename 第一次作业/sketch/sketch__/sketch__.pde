void setup() {
  size(1100, 900);
  background(#89C1AA);
}
void draw() {
  strokeWeight(20);
  fill(#F7B9B9);
  ellipse(mouseX, mouseY, 800, 600);
  ellipse(mouseX, mouseY+100, 360, 240);
  fill(0);
  ellipse(mouseX-150, mouseY-100, 50, 100);
  ellipse(mouseX+150, mouseY-100, 50, 100);
  ellipse(mouseX-60, mouseY+100, 60, 60);
  ellipse(mouseX+60, mouseY+100, 60, 60);
  fill(#F7B9B9);
  beginShape(TRIANGLES);
  vertex(mouseX-310,mouseY-160);
  vertex(mouseX-310,mouseY-360);
  vertex(mouseX-150, mouseY-290);
  vertex(mouseX+310,mouseY-160);
  vertex(mouseX+310,mouseY-360);
  vertex(mouseX+150, mouseY-290);
  endShape();
}
