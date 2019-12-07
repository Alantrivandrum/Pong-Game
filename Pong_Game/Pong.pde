Player thePlayer;
Player theCPlayer;
Ball theBall;
void settings(){
size(SCREENX, SCREENY);
}

void setup(){
thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
theCPlayer = new Player(MARGIN);
theBall = new Ball();
ellipseMode(RADIUS);
}
void draw() {
  frameRate(100);
background(255,240,0);
thePlayer.move(mouseX);
theCPlayer.moveComp(theBall);
theBall.move();
theBall.collide(thePlayer);
thePlayer.draw();
theBall.collideComp(theCPlayer);
theBall.draw();
thePlayer.reset(theBall);
thePlayer.gameOver(theBall);
}
