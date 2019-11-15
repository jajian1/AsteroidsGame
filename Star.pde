class Star //note that this class does NOT extend Floater
{
  private int lolX, lolY;
  public Star()
  {
  	lolX=(int)(Math.random()*501);
  	lolY=(int)(Math.random()*501);
  }
  public void show()
  {
  	fill(255);
  	ellipse(lolX,lolY, 3, 3);
  }

  //your code here
}
