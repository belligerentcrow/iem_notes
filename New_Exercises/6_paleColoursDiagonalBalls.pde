size(800,240);
background(255);

//diagonal lines
//line(0,0,width,height); 
//line(width, 0,0,height);

ellipse(width/2, height/2, 20,20); //center ball

float ratio = (800/240)+0.3; //makes the balls follow the line
//note: it is juuuuust slightly off.
fill(200,240,240); 

noStroke();
for(int i =0; i<=800; i+=10){
  fill(240,240,200);
  ellipse(i*ratio, i, 20,20); //yellow balls - top left to bottom right
  fill(240,200,240);
  ellipse(i*ratio, height-i, 20,20); // pink balls - bottom left to top right
}
//pale green triangles - top and bottom
fill(210,245,210);
triangle(150,20, width/2, height/2-20, width-150, 20); //top
triangle(150,height-20, width/2, height/2+20, width-150, height-20); //bottom

//pale blue triangles - left and right
fill(200,240,240);
triangle(20,30, 20, height-30, width/2-50, height/2); //left
triangle(width-20, 30, width-20, height-30, width/2+50, height/2); //right