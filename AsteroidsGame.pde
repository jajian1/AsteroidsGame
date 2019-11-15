Spaceship bob;
Star[] lol;
//your variable declarations here
public void setup() 
{
  background(0);
  size(500,500);
  bob = new Spaceship();
  lol = new Star[200];
  for(int i=0; i<lol.length; i++)
  {
  	lol[i]= new Star();
  }
  //your code here
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i =0; i<lol.length; i++)
  {
  	lol[i].show();
  }

  //your code here
}
public void keyPressed()
{
	if(key == 'h')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setCenterX((int)(Math.random()*500));
		bob.setCenterY((int)(Math.random()*500));


	}
	if(key == 'w')
	{
		bob.accelerate(.25);	
	}
	if(key == 's')
	{
		bob.accelerate(-.25);
	}
	if(key == 'a')
	{
		bob.turn(-5);
	}
	if(key == 'd')
	{
		bob.turn(5);
	}
}

