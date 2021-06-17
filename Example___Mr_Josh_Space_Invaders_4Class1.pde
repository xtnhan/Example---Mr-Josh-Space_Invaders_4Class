Player p; 
Enemy e;
Level lv1;
Level2 lv2;
int currentlevel = 1;


//Bullet globalbullet = new Bullet (700, 550, 20);
Bullet redBullet = new Bullet(500, 450, 20, 235, 64, 52);
Bullet greenBullet = new Bullet (500, 550, 20, 110, 207, 0);

boolean run = true; 

void setup() { 
  size(800, 600);
  p = new Player(); //Must be in void setup because Class Player is using global variables: Width and height - from command size(800,600). Nếu không để trong void setup thì sẽ không có được dữ liệu này!
  e = new Enemy(100, 100, 30); //Có thể khai báo ở phần đầu cũng được - Vd: "Enemy e = new Enemy(100, 100, 30);"
  lv1 = new Level ();//Có thể khai báo ở phần đầu cũng được - Vd: "Enemy e = new Enemy(100, 100, 30);"
  lv2 = new Level2 ();//Có thể khai báo ở phần đầu cũng được - Vd: "Enemy e = new Enemy(100, 100, 30);"

  ellipseMode(RADIUS);
}

void draw() {


  if (currentlevel == 1) { 
    lv1.draw();
    lv1.update();

    if (lv1.completed()) {

      //println(lv1.completed());
      currentlevel = currentlevel + 1;
    }
  }

  if (currentlevel == 2) {
    lv2.draw();
    lv2.update();
    //println(lv2.completed());
  }

  p.update();
  p.draw();
  //globalbullet.draw();
}

void keyPressed() { 
  if ( key == 'a') { 
    p.moveLeft();
  }
  if ( key == 'd') { 
    p.moveRight();
  }
  if ( key == ' ') { 
    p.shoot();
  }
  if ( key == 'q') { 
    run = !run;
  }

  if (key == '1') {
    p.assignBullet(redBullet);
  }
  if (key == '2') {
    p.assignBullet(greenBullet);
  }
}
