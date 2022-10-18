size(1000, 1000); 
background(100, 235, 220); 

noStroke(); 
fill(30, 150, 140); 
rectMode(CORNERS); 

//ombra
rect((width/2)-200, height-815, (width/2)+400, height-700); 
triangle((width/2)-200, height-(height-200), (width/2)+400, height-(height-200), (width/2)+100, height-200);
//rifinitura bordo ombra
fill(100, 235, 220); 
rect(((width/2)+400)-80, (height-780)-35, (width/2)+400, height-780);

//pasta pizza
fill(200, 200, 100); 
triangle((width/2)-300, height-(height-100), (width/2)+300, height-(height-100), (width/2), height-300);
//bordo pizza
fill(180, 150, 50); 
rect((width/2)-300, height-915, (width/2)+300, height-800); 
//rifiniture bordo interne
fill(200, 200, 100); 
rect((width/2)-180, height-840, (width/2)+180, height-800); 
rect((width/2)-150, height-860, (width/2)+150, height-800);

//rifiniture bordo esterne
fill(100, 235, 220); 
rect((width/2)-300, height-915, ((width/2)-300)+80, (height-915)+35); 
rect(((width/2)+300)-80, (height-915)+35, (width/2)+300, height-915); 

//pomodoro
fill(255, 20, 20); 
triangle((width/2)-200, height-(height-250), (width/2)+200, height-(height-250), (width/2), height-340); 
rectMode(CENTER); 
rect(width/2, (height/2)-250, 300, 150);  
rect(width/2, (height/2)-250, 360, 80); 

//mozzarella
fill(230, 220, 210); 
rectMode(CORNERS); 
rect((width/2)-130, height-(height-250), (width/2), height-(height-200)); 
int x1 = (width/2)-130; 
int y1 = height-(height-250); 
int x2 = width/2; 
int y2 = height-(height-200); 
rect(x1-30, y1+90, x2+50, y2+50); 
fill(230, 220, 210); 
rect(x2, y1-20, x2+150, y2+140); 
rect(x2-50, y1+110, x2-50+110, y1+200+80); 
rect(x2-100, y2+160, x2-60+30, y2+160+70);  
rect(x2, y2+140+70, x2+150-40, y2+140); 
rect(((width/2)-20), height-380, x2+20, height-500); 
//rifiniture pomodoro
fill(255, 20, 20); 
rect(x2+20, y2+40, x2+90, y2+10);

//basilico
strokeWeight(2); 
stroke(0, 150, 0); 
fill(0, 200, 0); 
triangle(width/2-50, height/2-130, width/2, height/2-70, width/2-35, height/2-30);  
triangle(width/2-30, height/2-70, width/2+20, height/2-120, width/2+50, height/2-10);
//ellipse(); 
//line
//line
