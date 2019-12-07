class Player {
  int cx;
  int cy = MARGIN;
  int xpos; 
  int ypos;
  int compCount = 0;
  int userCount = 0;
  boolean gameIsFinished = false;
  boolean gameOver;
  color paddlecolor =color(0,0,255);
  
  Player(int screen_y)
  {
    xpos = SCREENX/2;
    ypos = screen_y;
    cx = SCREENX/2;
  }
  void reset(Ball tp)
  {
   if(tp.y <= -1 && gameIsFinished == false)
   {
     
     userCount++;
     gameIsFinished = true;
     
   }
   if(tp.y >= SCREENY && gameIsFinished == false)
   {
     compCount++;
     gameIsFinished = true;
   } 
   if(gameIsFinished == true && mousePressed)
   {
     
     tp.x = random(SCREEN/4 , SCREEN/2);
     tp.y = random(SCREEN/4,  SCREEN/2);
     tp.dx = random(3,6); tp.dy = random(3,6);
     tp.radius = 20;
     gameIsFinished = false;
     
   }
   
   }
   void gameOver(Ball tp)
   {
  
    if(userCount >= 3 )
    {
      
      gameOver = true;
      println("You Win");
      userCount = 0;
      compCount = 0;
    }
    if(compCount >= 3)
    {
      gameOver = true;
      println("Game Over");
      userCount = 0;
      compCount = 0;
    }
   }
    
     
     
     
     
     
     
     
   
  void move(int x)
  {
    if(x>SCREENX-PADDLEWIDTH)
    {
      xpos = SCREENX-PADDLEWIDTH;
    }
    else
    {
      xpos = x;
    }
  }
  void moveComp(Ball tp)
  {
    
   if(cx <= tp.x - (PADDLEWIDTH/2))
   {
     cx+= 3;
   }
   else 
   {
     cx-= 3;
   }
    
    
    
    fill(paddlecolor);
    rect(cx,cy,PADDLEWIDTH,PADDLEHEIGHT);
  }
  void draw()
  {
    fill(paddlecolor);
    rect(xpos,ypos,PADDLEWIDTH,PADDLEHEIGHT);
  }
}
