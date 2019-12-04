class Asteroid extends Floater
{
	private int rot;
	public Asteroid(){
		rot = (int)(Math.random()*9)-4;
	  	corners=5;
      	xCorners=new int[]{-16,0,32,0,-16};
      	yCorners=new int[]{-16,-20,0,10,20,};
      	myColor= 255;
      	myCenterX=(int)(Math.random()*500);
      	myCenterY=(int)(Math.random()*500);
      	myDirectionX=(int)(Math.random()*3)-1;
      	myDirectionY=(int)(Math.random()*3)-1;
      	//chagen to 5 lol
      	myPointDirection=0; 
	}
	 public void setDirectionX(double x)
    {
    	myDirectionX=x;
    }
    public double getDirectionX()
    {
    	return myDirectionX;
    }
    public void setDirectionY(double y)
    {
    	myDirectionY=y;
    }
    public double getDirectionY()
    {
    	return myDirectionY;
    }
    public void setCenterX(double x1)
    {
    	myCenterX=x1;
    }
    public double getCenterX()
    {
    	return myCenterX;
    }
    public void setCenterY(double y1)
    {
    	myCenterY=y1;
    }
    public double getCenterY()
    {
    	return myCenterY;
    }
    public void setPointDirection(double degrees)
    {
    	myPointDirection =  degrees;
    }
    public double getPointDirection()
    {
    	return myPointDirection;
    }
	public void move()
	{
		myPointDirection += rot;
		super.move();
	}

}