class Bullet extends Floater
{
	double dRadians;
	
	public Bullet(Spaceship bob)
	{
		myCenterX= bob.getCenterX();
		myCenterY= bob.getCenterY();
		myPointDirection= bob.getPointDirection();
		dRadians=myPointDirection*(Math.PI/180);
		myDirectionX=  5*Math.cos(dRadians) + bob.getDirectionX();
		myDirectionY=  5*Math.sin(dRadians) + bob.getDirectionY();
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
	public void show()
	{
		fill(255);
		ellipse((int)myCenterX, (int)myCenterY, 5, 5);
	}
	public void move()
	{
		myCenterX+= myDirectionX;
		myCenterY+= myDirectionY;
	}



















}