size(1200,500);
strokeWeight(2);

background(240,240,240);

int j =1;

for(int i =20; i < 800; i +=20){
  if(j==1){
    stroke(200, 21,21);
  }else{
    stroke(21,21,200);
  }
  line(i,0, i+i/12, height/2);
  line(i, height, i+i/12, height/2);
  if(j==1){
    j=0;
  }else{
    j=1;
  }
}
stroke(30,150,30);
for(int i =800; i >=0; i-=20){
  line(i,0, i-i/12, height/2);
  line(i, height, i-i/12, height/2);
}
