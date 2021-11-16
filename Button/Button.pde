
String Exit="Exit";
float BX, BY, BW, BH;
color un=#FF00FF, on=#00FF00, CLR;

void setup() {
  fullScreen();
  BX = displayWidth*1/4;
  BY = displayHeight*1/3;
  BW = displayWidth*2/4;
  BH = displayHeight*1/3;
}//End setup

void draw() {
  background(#FFFFFF);
  if (mouseX>=BX && mouseY>=BY && mouseX<=BX+BW && mouseY<=BY+BH) {
    CLR = on;
  } else {
    CLR = un;
  };
  fill(CLR);
  stroke(#000000);
  strokeWeight(5);
  rect(BX, BY, BW, BH);
  fill(#000000);
  textSize(300);
  text(Exit,BX*1.1,BY*1.9);
}//End draw
void mousePressed() {
  if(mouseX>=BX && mouseY>=BY && mouseX<=BX+BW && mouseY<=BY+BH)exit();
}//End mousePressed

void keyPressed() {
}//End keyPressed
