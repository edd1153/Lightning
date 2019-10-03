int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(500,500);
  background(70);
  strokeWeight(10);
}
void draw()
{
	//Thunder Cloud
	fill(255);
  rect(250, 100, 50, 50);
  arc(250, 100, 25, 25, 0, PI);
  arc(275, 100, 25, 25, 0, PI);
  fill(0);
	//Lightning
  int boltValue = (int)(Math.random() * 255);
  int randIntOne = (int)(Math.random() * 9);
  int randIntTwo = (int)(Math.random() * 9) - 9;
  stroke(boltValue,255, 0);
  while(endX < 500){
  	endX = startX + randIntOne;
  	endY = startY + randIntTwo;
  	line(startX, startY, endX, endY);
  	startX = endX;
  	startY = endY;
  }
}
void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}
