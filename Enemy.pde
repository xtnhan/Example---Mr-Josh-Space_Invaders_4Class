class Enemy { 
  float x; 
  float y; 
  float offX; 
  float distX; 
  float dx; 
  float s; 
  boolean isAlive;
  int life;

  Enemy( float xx, float yy, float ss) { 
    x = xx; 
    y = yy; 
    offX = 0; 
    distX = 40;
    dx = 1; 
    s = ss;
    isAlive = true;
    life = 3;
  }

  void draw() { 
    if (isAlive) {
      circle(x + offX, y, s); //If enemy is alive, draw a circle
    }
  }

  void update() { 
    if (isAlive) {    
      offX += dx;
      if ( offX > distX || offX < 0) { 
        dx = -dx;
      }
    }
  }


  boolean isKilled(Bullet b) { //Return True - if the enemy is killed by the bullet & Return False - if not - //This function will always return isAlive == false



    if ( dist( b.x, b.y, x+offX, y) <= b.s + s) {//Collision detection
      life = life - 1; //Damage when hit

      s -= 10;       
      b.reset();
    }

    if (life <= 0) { //Change the enemy state
      isAlive = false;
      println("killed");
    }
    
    return isAlive == false;
  }
}
