class Level2 {

  Enemy e; //Enemy can be used as the data type

  //Constructor

  Level2 () {

    e = new Enemy (100, 100, 30);
  }

  void draw () {
    background(255, 255, 25);
    e.draw();
  }
  void update() {
    e.update();
    e.isKilled(p.b);
  }

  Boolean completed () {      //return boolean - True/False
    return e.isAlive ==false;
  }
}
