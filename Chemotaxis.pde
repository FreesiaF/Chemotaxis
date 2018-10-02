Bacteria [] one;  
 void setup()   
 {     
 	size (500,500) ; 
 	one = new Bacteria[500];
 	for (int i = 0; i < one.length; i++)
 	{
 		one[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	for (int i = 0; i < one.length; i++)
 	{
 		one[i].show();
 		one[i].move();		
 	}
 	
 }  
 class Bacteria    
 {  
  	int myX,myY; 
  	int myColor;   
 	Bacteria() 
 	{
 		myColor = color((int)(Math.random()*256),10,(int)(Math.random()*10)+240);
 		myX = myY = 250;
 		
 	}
 	void move() 
 	{
 		myX = myX + (int)((Math.random()*10)-5)	;
 		myY = myY + (int)((Math.random()*10)-5)	;
 	}

 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX,myY,10,10);

 	} 
 }    