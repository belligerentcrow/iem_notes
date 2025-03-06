size(480, 480);

colorMode(RGB, 100); 
/*
The colorMode function defines the RANGE. 
Maximum value possible is 255.
1st value: which colourspace to use
2nd : upper extreme of the color interval. 
      The lower extreme will be zero by default.
This can map the colour space in, for example, 
0 to 100, or 0.0 to 1.0 too. 
*/
 //Thus, these are %ges of r,g,b.

strokeWeight(50);
stroke(100,100,100);
line(width/2, height/2, width/2, 100);
stroke(30,50,10);
line(50,50,430,430);
stroke(100,0,0);
line(50,height-50,430,50);
stroke(0,0,0);
line(50, height/2, 430, height/2);
stroke(100,100,100);
ellipse(width/2, 100, 60,60);

//note. looks like a strike-through italian?