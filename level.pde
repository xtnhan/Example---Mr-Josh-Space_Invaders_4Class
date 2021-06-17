class Level {

  Enemy e; //Enemy can be used as the data type

  //Constructor

  Level () {

    e = new Enemy (100, 100, 30);
  }

  void draw () {
    background(255, 255, 255);
    e.draw();

  }
  void update() {
    println(e.isAlive);
    println(e.life);

    e.update();
    
    if(p.b !=null) {
    e.isKilled(p.b);
    }
    println(e.isAlive);
    println(e.life);
  }

  Boolean completed () {      //return boolean - True/False

    return e.isAlive ==false;
  }
}
