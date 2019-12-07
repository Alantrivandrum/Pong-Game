class Ball{
float x;
float y;
float dx;
float dy;
int radius;
color ballColor = color(0,255,50);
Ball(){
x = random(SCREEN/4 , SCREEN/2);
y = random(SCREEN/4,  SCREEN/2);
dx = random(2,5); dy = random(2,5);
radius = 20;
}
void move(){
  x = x+dx;
  y = y+dy;
}


void draw(){
fill(ballColor);
ellipse(int(x),int(y), radius, radius);
}

void collide(Player tp){
  if(x-radius<=0)
  {
    dx = -dx;
  }
  else if(x+radius >= SCREENX)
  {
    dx=-dx;
  }
  if(y+radius >= tp.ypos && y-radius<tp.ypos +PADDLEHEIGHT && x >= tp.xpos && x<= tp.xpos + PADDLEWIDTH)
  {
    println("collided;");
    dy = -dy;
  }
}
void collideComp(Player tp)
{
 
  if(y+radius >= tp.cy 
  && y-radius<tp.cy +PADDLEHEIGHT
  && x >= tp.cx 
  && x<= tp.cx + PADDLEWIDTH)
  {
    println("collided;");
    dy = -dy;
  }
  
  
}
}
