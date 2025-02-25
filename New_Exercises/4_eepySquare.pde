size(510,510);
background(0);
fill(255);
textSize(32);
textAlign(CENTER);

int j = 510;
for(int i = 0; i <=500;i+=50){
  fill(255,255,255,i);
  text("zzz", i, i);
  fill(255,255,255,j);
  text("zzz", i, j);
  j-=50;
  for(int k = 0; k <=500; k+=30){
    text("zzz", i,k);
  }
}
textSize(60);
textAlign(CENTER);
fill(255);
text("EEPY", width/2, height/2);