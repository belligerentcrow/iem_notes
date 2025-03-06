size(480,500);

background(248,243,217);
stroke(80,75,56);

//linee orizzontali sinistra
for(int i=0; i<500; i+=5){
  line(30, i+5,80,i+5);
}

//linee diagonali
line(30,10, 100,100);
line(100,100,15,220);
line(15,220,100,340);
line(100,340, 15,460);
line(15,460, 450,460);

//squiggles alla fine della linea
int x = 458;
for(int i=0; i<50; i+=2){
  line(400+i,x, 450-i,x);
  x-=2;
}

//testo
fill(80,75,56);
textSize(36);
text("caffé grosmi", 125,105);


//chicchi
ellipseMode(CORNERS);
ellipse(150,350, 170,380);
stroke(230,230,100);
line(150,350, 170, 380); 

ellipse(150+100,350-200, 170+100,380-200);
stroke(230,230,100);
line(150+100,350-200, 170+100, 380-200); 
ellipse(150+50,350-150, 170+50,380-150);
line(150+50,350-150, 170+50, 380-150);
