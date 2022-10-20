int x;  
int dir = +1; 
int v =10; 
int va =2; 
int dira =1; 
int a = 30; 
void setup(){
  strokeWeight(20); 
  size(500, 500); 
  noStroke(); 
  fill(255, 255, 0); 
  x=51; 
}

void draw(){
  background(0, 0, 0); 
  fill(255, 255, 255); 
  if(dir==1){
    for(int j =0; j<height; j+=50){
      circle(j, width/2, 20); 
    }  
  }else{
    for(int j =height; j>0; j-=50){
      circle(j, width/2, 20); 
    } 
  }
  
  
  if(dir>0){
   
  fill(255, 255, 0);
  arc(x, height/2, 100, 100, radians(a), radians(360-a)); 
  fill(0); 
  circle(x, (height/2)-20, 20);
  }else{
  fill(255, 255, 0);
  arc(x, height/2, 100, 100, radians(180+a), radians(360+180-a)); 
  fill(0); 
  circle(x, (height/2)-20, 20);
  }
  
  if(a>30 || a<=0){
  dira =-dira; 
  }
  
  if(x>=width-50 || x<50){
    dir = -(dir);
  }  
    x+=v*dir;
    a+=va*dira; 
  
}
