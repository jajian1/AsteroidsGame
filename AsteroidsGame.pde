Spaceship bob;
Star[] lol;
ArrayList <Asteroid> tee;
boolean wPress, aPress, dPress, sPress;
ArrayList <Bullet> hee;

//your variable declarations here
public void setup() 
{
  wPress=false;
  sPress=false;
  dPress=false;
  aPress=false;
  background(0);
  size(500,500);
  hee = new ArrayList <Bullet>();
  tee = new ArrayList <Asteroid>();
  for(int i =0; i<10; i++)
  {
  	tee.add(new Asteroid());
  }
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
  if(wPress)
  {
  	bob.accelerate(.10);
  }
  if(sPress)
  {
  	bob.accelerate(-.10);
  }
  if(dPress)
  {
  	bob.turn(5);
  }
  if(aPress)
  {
  	bob.turn(-5);
  }
  background(0);
  bob.show();
  bob.move();
  for(int i =0; i<tee.size(); i++)
  {
  	tee.get(i).show();
  	tee.get(i).move();
  }
  for(int i =0; i<lol.length; i++)
  {
  	lol[i].show();
  }
  for(int i=0; i<tee.size();i++)
  {
  	if((dist((float)tee.get(i).getCenterX(),(float)tee.get(i).getCenterY(),(float)bob.getCenterX(),(float)bob.getCenterY()))<25)
  	{
  		tee.remove(i);
  	}
  	if(tee.size()<7)
  	{
  		tee.add(new Asteroid());
  	}
  }
  for(int i=0; i<hee.size(); i++)
  {
  	hee.get(i).show();
  	hee.get(i).move();
  	hee.get(i).accelerate(2);
  }
  for(int i = 0; i<tee.size(); i++)
  {
  	for(int j = 0; j<hee.size(); j++)
  	{
  		if(dist((float)(hee.get(j).getCenterX()),(float)(hee.get(j).getCenterY()),(float)(tee.get(i).getCenterX()),(float)(tee.get(i).getCenterY()))<25)
  		{
  			hee.remove(j);
  			tee.remove(i);
  			break;
  		}
  	}
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
		wPress=true;	
	}
	if(key == 's')
	{
		sPress=true;
	}
	if(key == 'a')
	{
		aPress=true;
	}
	if(key == 'd')
	{
		dPress=true;
	}
}
public void keyReleased()
{
	if(key == 'w')
	{
		wPress=false;	
	}
	if(key == 's')
	{
		sPress=false;
	}
	if(key == 'a')
	{
		aPress=false;
	}
	if(key == 'd')
	{
		dPress=false;
	}
}
public void mousePressed()
{
	hee.add(new Bullet(bob));
}


