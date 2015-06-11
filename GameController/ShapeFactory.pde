class ShapeFactory {
  PShape basicPlayer;
  PShape basicEnemy;
  PShape basicBullet;
  PShape enemyTwo;
  int basicBulletRadius;
  int basicEnemyRadius;
  int basicPlayerRadius;


  ShapeFactory() {
    buildBasicEnemy();
    buildBasicPlayer();
    buildBasicBullet();
  }
  PShape getBasicPlayer() {
    return basicPlayer;
  }

  PShape getBasicPlayer() {
    return basicPlayer;
  }
  PShape getBasicEnemy() {
    return basicEnemy;
  }

  void buildBasicPlayer() {
    basicPlayer = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.vertex(0, -70);
    chassis.vertex(20, -20);
    chassis.vertex(10, -5);
    chassis.vertex(10, 10);
    chassis.vertex(20, 20);
    chassis.vertex(20, 35);
    chassis.vertex(17.5, 35);
    chassis.vertex(17.5, 30);
    chassis.vertex(15, 30);
    chassis.vertex(15, 35);
    chassis.vertex(10, 35);
    chassis.vertex(10, 30);
    chassis.vertex(5, 30);
    chassis.vertex(5, 40);
    chassis.vertex(25, 40);
    chassis.vertex(25, 30);
    chassis.vertex(2, 30);
    chassis.vertex(2, 40);
    chassis.vertex(-2, 40);
    chassis.vertex(-2, 30);
    chassis.vertex(-25, 30);
    chassis.vertex(-25, 40);
    chassis.vertex(-5, 40);
    chassis.vertex(-5, 30);
    chassis.vertex(-10, 30);
    chassis.vertex(-10, 35);
    chassis.vertex(-15, 35);
    chassis.vertex(-15, 30);
    chassis.vertex(-17.5, 30);
    chassis.vertex(-17.5, 35);
    chassis.vertex(-20, 35);
    chassis.vertex(-20, 20);
    chassis.vertex(-10, 10);
    chassis.vertex(-10, -5);
    chassis.vertex(-20, -20);
    chassis.vertex(0, -70);
    chassis.endShape();
    PShape cockpit = createShape(RECT, -5, -7.5, 10, 15);
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(cockpit);
  }

  void draw() {
    shape(player1, mouseX, mouseY);
  }


  void buildBasicEnemy () {
    basicEnemy= createShape(GROUP);
    PShape droid= createShape();
    droid.beginShape();
    droid.fill(100, 35, 100);
    droid.vertex(-25, -25);
    droid.vertex(25, -25);
    droid.vertex(25, 25);
    droid.vertex(-25, 25);
    droid.endShape();
    basicEnemy.addChild(droid);
  }
}

