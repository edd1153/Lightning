int startX = 25;
int startY = 480;
int endX = 0;
int endY = 100;

void setup()
{
  size(500,500);
  background(0);
  strokeWeight(10);
}
void draw()
{
  //Light Lamp/Projector
  fill(255);
  rotate(PI/4);
  rect(340, 310, 50, 50);
  rotate(-PI/4);
  //MGM Hotel Building
  fill(255,232,23);
  rect(300, 100, 200, 400);
  fill(255,23,31);
  text("MGM", 365, 140);
  textSize(60);
  fill(0);
  rect(325, 150, 50, 50);
  rect(325, 230, 50, 50);
  rect(325, 310, 50, 50);
  rect(415, 150, 50, 50);
  rect(415, 230, 50, 50);
  rect(415, 310, 50, 50);
  fill(255);
  rect(360, 380, 70, 120);
  fill(0, 100, 255);
  ellipse(410, 440, 10, 10);
  //Light Show
  int boltValue = (int)(Math.random() * 255);
  int randIntOne = (int)(Math.random() * 9);
  int randIntTwo = (int)(Math.random() * 9) - 9;
  stroke(boltValue, boltValue + 100, boltValue - 50);
  while(endX < 500){
    endX = startX + randIntOne;
    endY = startY + randIntTwo;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  if (endX > 500){
   endX = 0;
  }
  if (endY > 550){
   endY = 150;
  }
  stroke(0);
}
void mousePressed()
{
  startX = 25;
  startY = 480;
  endX = 0;
  endY = 100;
}
