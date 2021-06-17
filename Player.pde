class Player { 
  float x; 
  float y;
  float s; 
  Bullet b; 

  Player() {
    x = width/2; 
    s = 50; //size
    y = height - s - 5;

    b = null; //null == nothing == void - Start the player with no bullet
  }

  void draw() { 


    circle(x, y, s);
    if (b != null) {
      b.draw();
    }
  }

  void update () {

    if (b != null) {
      if (b.isHeld) {
        b.x =x;
        b.y = y;
      }      

      if ( run ) {
        b.update();
      }
    }

    //if (!globalbullet.isFired || !globalbullet.isHeld) { //! == not
    //  pickupbullet(globalbullet);
    //}
  }  

  void moveLeft() { 
    x = x - 10;
  }

  void moveRight() { 
    x = x + 10;
  }

  void shoot() { 
    if (b != null) {
      b.fire(x, y);
    }
  }

  //void pickupbullet (Bullet bb) {

  //  if (dist (x, y, bb.x, bb.y) <= (bb.s + s)) {//If collided => b == bb => Player hold bullet when picking up
  //    b = bb;
  //    b.isHeld = true;
  //    b.x = x;
  //    b.y = y;
  //  }
  //}

  void assignBullet(Bullet bb) {
    b = bb ;
    b.isHeld = true;
    b.x = x;
    b.y = y;
  }
}
