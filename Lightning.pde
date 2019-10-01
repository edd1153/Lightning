int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(500,500);
  background(50);
  strokeWeight(10);
}
void draw()
{
  int boltValue = (int)(Math.random() * 255);
  int randIntOne = (int)(Math.random() * 9);
  int randIntTwo = (int)(Math.random() * 9) - 9;
  stroke(boltValue);
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
