void setup()
{
  noLoop();
  size(300, 300);
}
void draw()
{
  background(0);
  Die bob = new Die(30, 30);
  bob.show();

  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int x, y, numDots;

  Die(int x, int y) //constructor
  {
    x = 0;
    y = 0;
    numDots = (int)(Math.random()*6+1);
    //variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    rectMode(CENTER);
    rect(150, 150, 100, 100);

    if (numDots == 1) {
      fill(0);
      ellipse(150, 150, 25, 25);
    }

    if (numDots == 2) {
      fill(0);
      ellipse(150+30, 150+30, 25, 25); 
      ellipse(150-30, 150-30, 25, 25);
    }

    if (numDots == 3) {
      fill(0);
      ellipse(150, 150, 25, 25);
      ellipse(150-30, 150-30, 25, 25); 
      ellipse(150+30, 150+30, 25, 25);
    }

    if (numDots == 4) {
      fill(0);
      ellipse(150-30, 150-30, 25, 25);
      ellipse(150+30, 150+30, 25, 25);
      ellipse(150-30, 150+30, 25, 25);
      ellipse(150+30, 150-30, 25, 25);
    }

    if (numDots == 5) {
      fill(0);
      ellipse(150-30, 150-30, 25, 25);
      ellipse(150+30, 150+30, 25, 25);
      ellipse(150-30, 150+30, 25, 25);
      ellipse(150+30, 150-30, 25, 25);
      ellipse(150, 150, 25, 25);
    }

    if (numDots == 6) {
      fill(0);
      ellipse(150-30, 150-30, 25, 25);
      ellipse(150+30, 150+30, 25, 25);
      ellipse(150-30, 150+30, 25, 25);
      ellipse(150+30, 150-30, 25, 25);
      ellipse(150-30, 150, 25, 25);
      ellipse(150+30, 150, 25, 25);
    }

    //your code here
  }
}
