Die bob;
void setup()
  {
    size(300, 300);
    noLoop();
  }
void draw()
  {
    background(255, 204, 0);
    fill(0);
    textSize(26);
    text("Dice Mania!", 70, 30);
    for (int y = 50; y <= 205; y+=65) {
      for (int x = 60; x <= 205; x+=60) {
        bob = new Die(x, y + 2);
        fill(0);
        textSize(12);
        text("Roll: " + bob.face, x + 7, y);
        bob.show();
      }
      
    }
    
  }
void mousePressed()
  {
    bob.roll();
    redraw();
  }
class Die
  {
      int myX;
      int myY;
      int face;
      Die(int x_, int y_)
      {
          myX = x_;
          myY = y_;
          face = (int)(Math.random() * 6) + 1;
      }
      void roll()
      {
          face = (int)(Math.random() * 6) + 1;
      }
      void show()
          
      {   
          fill(255);
          rect(myX, myY, 50, 50, 20);
          fill(0);
          if (face == 1) {
            circle(myX + 25, myY + 25, 10);
          } else if(face == 2 || face == 3 || face == 4 || face == 5 || face == 6) {
            circle(myX + 12, myY + 38, 10);
            circle(myX + 38, myY + 12, 10);
            if (face == 3 || face == 5) {
              circle(myX + 25, myY + 25, 10);
            }
            if (face == 4 || face == 5 || face == 6) {
              circle(myX + 12, myY + 12, 10);
              circle(myX + 38, myY + 38, 10);
            }
            if (face == 6) {
              circle(myX + 38, myY + 25, 10);
              circle(myX + 12, myY + 25, 10);
            }
          }
      }
  }
