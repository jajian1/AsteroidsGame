class Spaceship extends Floater  
{     
    public Spaceship()
    {
      corners=3;
      xCorners=new int[]{-8,16,-8};
      yCorners=new int[]{-8,0,8};
      myColor= 255;
      myCenterX=myCenterY=250;
      myDirectionX=myDirectionY=0;
      myPointDirection=0; 
    }
    public void setDirectionX(double x)
    {
    	myDirectionX=x;
    }
    public void setDirectionY(double y)
    {
    	myDirectionY=y;
    }
    public void setCenterX(double x1)
    {
    	myCenterX=x1;
    }
    public void setCenterY(double y1)
    {
    	myCenterY=y1;
    }
    

    //your code here
}