size(500,500); 

background(0, 0, 0);

noStroke();

fill(255,0,0, 160); 
ellipse(150, 150, 200, 200);
ellipse(width-150,150, 200, 200);
beginShape();
vertex(50, 170);
vertex(width/2, height/2+150);
vertex(width-50, 170);
endShape();