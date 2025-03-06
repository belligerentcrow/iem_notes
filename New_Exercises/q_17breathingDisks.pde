void setup(){
  size(480,140);
}

int i = 0;
int step = 1;
void draw(){
    background(255);
    //disks
    fill(0);
    ellipseMode(RADIUS);
    //big black disks
        ellipse(430,60,i,i);
        ellipse(50,20,i,i);
        ellipse(200,90,i,i);
    //little black disks
        ellipse(300,20,i-30,i-30);
        ellipse(60,120,i-30,i-30);
        ellipse(340,120,i-30,i-30);

    //circles
    fill(255);
    ellipseMode(CENTER);
    //big white circles
        ellipse(430,60,40,40);
        ellipse(50,20,40,40);
        ellipse(200,90,40,40);
    //little white circles
        ellipse(300,20,20,20);
        ellipse(60,120,20,20);
        ellipse(340,120,20,20);
    i+=step;
    if(i>=80){
        step=-1;
    }
    if(i<=20){
        step=1;
    }
}
