class Bullet {
  float x; 
  float y; 
  float s; //size
  boolean isFired;
  boolean isHeld;

  int r;
  int g;
  int b;

  Bullet(float xx, float yy, float ss, int rr, int gg, int bb) { 
    x = xx;
    y = yy;
    s = ss;

    r = rr;
    g = gg;
    b = bb;

    isFired = false;
    isHeld = false;
  }

  void draw() {
    fill(r, g, b); 
    circle(x, y, s);
  }

  void fire(float xx, float yy) { 
    isFired = true;
    isHeld = false;
    x = xx; 
    y = yy; 
    //x = 140; 
    // y = 100;
  }

  void update() { 

    if (isFired) {
      y -= 5; //Shoootttt
    }
  }

  void reset() { 
    x = -150; 
    y = -100;
  }
}
