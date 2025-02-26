size(1200,1000);

int re =150;
int gr = 255;
int bl = 255;

int a=10;
int b=20;
for(int i = 0; i <100;i+=2){
  fill(re,gr,bl);
  rect(width/2-a, b,b,i); 
  a+=10;
  b+=20;
  
  re-=3;
  gr-=3;
  bl-=3;
}
