size(250, 340);
background(0);
noStroke();

fill(0,0,255);
rect(25,25,200,290);

/*
//step-by-step

fill(255,0,0,255);
rect(100,0,50,40);

fill(255, 0, 0, 191);
rect(75,50,100,40);

fill(255,0,0,127);
rect(50,100,150,40);

fill(255,0,0,63);
rect(25,150,200,40);

fill(255, 0, 0, 30);
rect(0,200,250,40);
*/
int redStep = 255;
int rectWidth = 0; 

for(int i = 100; i >0; i-=20){
 fill(255, 0, 0, redStep);
 rect(i,rectWidth, rectWidth+50,40 );
 redStep -= 35;
 rectWidth += 50;
}