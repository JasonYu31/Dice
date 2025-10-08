Die die;
    void setup(){
     size (800,800);
     textAlign(CENTER,CENTER);
    noLoop();
  }
  void draw()
  {
    background(39,213,255);
    int total=0;
    for (int y =100; y<= 700; y+=200) {
      for (int x = 100; x<= 700; x +=200) {
        die = new Die (x,y);
        die. roll();
        total += die.value;
        
        pushMatrix();
        translate(x,y);
        die.show();
        popMatrix();
    //your code here
  }
    }
    fill (0);
    textSize(30);
    text("Total: " +total, 400,400);
  }   
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY, value;
      Die( int x, int y) //constructor
      {
        myX=x;
        myY=y;
         value = 1;

      }
      void roll()
      {
         value = (int)(Math.random()*6)+1;
      }
      void show()
      {
          fill(255);
          stroke(0);
          rect (-50, -50, 100, 100);
          //dots
          if (value ==1) {
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            ellipse(0,0, 25,25);
          }
           if (value ==2) {
             fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            ellipse(-30,-30, 25,25);
            ellipse(30,30,25,25);
          }
           if (value ==3) {
             fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            ellipse(0,0, 25,25);
            ellipse(-20,-20, 25,25);
            ellipse(20,20, 25,25);
          }
           if (value ==4) {
            fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            ellipse(-20,-20, 25,25);
            ellipse(20,-20, 25,25);
            ellipse(20,-20, 25,25);
            ellipse(-20,20, 25,25);
            ellipse(20,20, 25,25);
          }
           if (value ==5) {
             fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            ellipse(-20,-20, 25,25);
            ellipse(20,-20, 25,25);
            ellipse(0,0, 25,25);
            ellipse(-20,20, 25,25);
            ellipse(20,20, 25,25);
          }
           if (value ==6) {
             fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
            ellipse(-30,-30, 25,25);
            ellipse(0,-30, 25,25);
            ellipse(30,-30, 25,25);
            ellipse(-30,30, 25,25);
            ellipse(0,30, 25,25);
            ellipse(30,30, 25,25);
          }
      }
  }
