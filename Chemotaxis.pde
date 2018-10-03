boolean randomwalk = false;
Bacteria [] one;  
 void setup()   
 {     
 	size (500,500) ; 
 	one = new Bacteria[100];
 	for (int i = 0; i < one.length; i++)
 	{
 		one[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	//background(250);
 	for (int i = 0; i < one.length; i++)
 	{
 		one[i].show();
 		one[i].move();		
 	}
 	
 } 

 void mousepressed()
 {
 	randomwalk = false;
 	redraw();
 } 
 class Bacteria    
 {  
  	int myX,myY; 
  	int myColor;   
 	Bacteria() 
 	{
 		myColor = color((int)(Math.random()*256));
 		myX = myY = 250;
 		
 	}
 	void move() 
 	{

 		if (randomwalk == true)
 		{
 			myX = myX + (int)((Math.random()*10)-5)	;
 			myY = myY + (int)((Math.random()*10)-5)	;
 		}
 		
 		else
 		{
 		int direction = (int)(Math.random()*4);
 		if (direction == 0)	
 			myX = myX + 10;
 		if (direction ==1)
 			myX = myX -10;
 		if(direction == 2)
 			myY = myY+10;
 		if (direction ==3)
 			myY = myY -10;
 		}
 	}

 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX,myY,10,10);

 	} 
 }    