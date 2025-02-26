size(1200,1000);

int re =15;
int gr = 70;
int bl = 70;

int a=10;
int b=5;
int c=20;
for(int i = 0; i <8;i++){
  fill(re,gr,bl);
  rect(width/2-a, b,c,b); 
  a*=2;
  c*=2;
  b*=2;
  re+=15;
  gr+=30;
  bl+=30;
}
