class Ball{
  
  float posX, posY, size; 
  float sx, sy; 
  
  Ball(float x, float y, float s, float sx, float sy){
    posX = x; 
    posY = y; 
    size = s; 
    this.sx=sx; //per i casi di omonimia usare this
    this.sy=sy;
  }; 
  Ball(float x, float y, float s){
    posX = x; 
    posY = y; 
    size = s; 
    this.sx=0; 
    this.sy=0;
    
    //OPPURE: this(x, y, s, 0, 0); per richiamare il costruttore precedente
  }
  
  void display(){
    fill(random(0, 255),random(0, 255),random(0, 255)); 
    noStroke(); 
    ellipse(this.posX, this.posY, this.size, this.size); 
  };
  
  void move(){
    this.posX+=this.sx; 
    this.posY+=this.sy; 
  };
  
  void bounce(){
    if(posY<size/2||posY>height-size/2){ //aggiungo il raggio
      this.sy = -this.sy; 
    }
    if(posX<size/2||posX>width-size/2){ //aggiungo il raggio
      this.sx = -this.sx; 
    }
  };
  
  void gravity(){
    sy +=0.2; 
  };
  
  void run(){
    gravity(); 
    bounce(); 
    move(); 
    display(); 
  };
  
};
