//Dice project redone 
//By Elias Finamore-Velasco

Die d1;
void setup()
{
  frameRate(0.3);
  textSize(32);
  size(300, 300);
}
void draw()
{
  background(random(0), random(255), random(255));
  d1 = new Die();
  d1.roll();
  int s = second();
  System.out.print(s);
  //your code here
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int numRoll, numDie, numDots, dotWidth, dieCount;


  Die() //constructor
  {
    numDie = (int)(Math.random()*91)+11;
    dotWidth = numDie/5;
    numRoll = 1;
    dieCount = 0;
    //variable initializations here
  }
  void roll()
  {
    numRoll = (int)(Math.random()*6+1);
    show();
    //your code here
  }
  void show()
  {
    for (int y = 50; y <=height - (numDie + numDie/4); y+=numDie +(numDie/4)) {
      for (int x = numDie/5; x<= width - (numDie + numDie/4); x+=numDie+(numDie/4)) {
        stroke(0);
        fill(255);
        rect(x, y, numDie, numDie);
        numRoll = (int)(Math.random()*6)+1;
        dieCount += numRoll;
        fill(0);
        if (numRoll == 1) {
          ellipse(x + numDie/2, y + numDie/2, dotWidth, dotWidth);
        }
        if (numRoll == 2) {
          ellipse(x + numDie/5, y + numDie/5, dotWidth, dotWidth);
          ellipse(x + numDie - (numDie/5), y + numDie - (numDie/5), dotWidth, dotWidth);
        } 
        if (numRoll==3) {
          ellipse(x + numDie/5, y + numDie/5, dotWidth, dotWidth);
          ellipse(x + numDie - (numDie/5), y + numDie - (numDie/5), dotWidth, dotWidth);
        } 
        if (numRoll==4) {
          ellipse(x + numDie/5, y + numDie/5, dotWidth, dotWidth);
          ellipse(x + numDie - (numDie/5), y + numDie - (numDie/5), dotWidth, dotWidth);
          ellipse(x + numDie/5, y + numDie - (numDie/5), dotWidth, dotWidth);
          ellipse(x + numDie - (numDie/5), y + numDie/5, dotWidth, dotWidth);
        } 
        if (numRoll == 5) {
          ellipse(x + numDie/5, y + numDie/5, dotWidth, dotWidth);
          ellipse(x + numDie - (numDie/5), y+numDie-(numDie/5), dotWidth, dotWidth);
          ellipse(x + numDie/5, y + numDie - (numDie/5), dotWidth, dotWidth);
          ellipse(x + numDie - (numDie/5), y + numDie/5, dotWidth, dotWidth);
        } 
        if (numRoll == 6) {
          ellipse(x + numDie/5, y + numDie/5, dotWidth, dotWidth);
          ellipse(x + numDie - (numDie/5), y + numDie-(numDie/5), dotWidth, dotWidth);
          ellipse(x + numDie/5, y + numDie - (numDie/5), dotWidth, dotWidth);
          ellipse(x + numDie - (numDie/5), y + numDie/5, dotWidth, dotWidth);
          ellipse(x + numDie/5, y + numDie/2, dotWidth, dotWidth);
          ellipse(x + numDie - (numDie/5), y + numDie/2, dotWidth, dotWidth);
        }
      }
    }
    head(width/4 + 10, 40);
  }
  void head(int x, int y) {
    fill(255, 0, 0);
    PFont font;
    font = createFont("Zapfino", 20);
    textFont(font);
    text(("Total " + dieCount), x, y);
  }
}
