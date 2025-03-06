size(480,240);
background(250, 200,30); //yellow bg

for(int i =0; i<200; i+=5){
  line(30,i,80,i);
}

strokeWeight(8);
fill(50);
for(int i =20; i <420; i+=30){
  stroke(150,150,255); //light blue 
  ellipse(i,30,3,3);  // circles
  stroke(190,100,30); // dark orange
  line(i, 40, i+60, 80); //thick line

  stroke(150,150,255);
  ellipse(i+60,90,3,3);
  stroke(190,100,30);
  line(i, 50+90, i+60, 100);

  stroke(150,150,255);
  ellipse(i, 150,3,3);
  stroke(190,100,30);
  line(i, 160,i+60, 140+60);

  stroke(150,150,255);
  ellipse(i+60,140+70,3,3);
}
