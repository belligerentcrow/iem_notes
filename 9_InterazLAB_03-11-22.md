# **IeM -- 9**

-> mapping

map(); // ha 5 parametri

map(cosa[l'input], startInput, EndInput, StartOutput, EndOutput);

es su un dado (random da 0.00 a 1.00)
map(r(1), 0.0, 1.0, 1, 6);

es mouse e colore
map(mouseX, 0, width, 0, 255);  <-- una proporzione


// LERP
* calcolare dei valori intermedi tra i valori dati

//funzione text(); <-- 3 parametri 
text("Stringa da scrivere", posizione1, posizione2);

//esiste anche una versione a 5 parametri che fa scegliere anche il secondo punto per controllare l'area
// utilizza come 0 il punto in basso a sinistra

textSize(); <-- per cambiare la grandezza

textAlign(); <-- allineamento

//http track software

//cambiare font
1. createFont
    * PFont f; all'inizio
    * f = createFont("Calibri", ); 
      * Come primo parametro il nome della famiglia del font 
      *  println(PFont.list()); //per listare quelli disponibili
2. loadFont
   loadFont permette di allegare un file vlw al progetto
   prima fare CreateFont con il tool
   poi ad esempio f=loadFont("CourierNewPS-BoldMT-48.vlw", 54); 
 

----> controllare materiale teams
----> TEXT BASED RPG

## **ROTAZIONE**

```processing
int l =50; 
int a = 0; 

void setup(){
 size(500, 500);  
 rectMode(CENTER); 
 
 noStroke(); 
}

void draw(){
 background(0);
 //fill(0,5); 
 //rect(0, 0, width, height); 
 translate(width/2, height/2); 
 rotate(radians(a)); 
 fill(255); 
 rect(0, 0, l, l); 
 a+=5; 
}
```

```processing
int l = 100; 
int a = 0; 
void setup(){
    size(500, 500); 
    noStroke(); 
    rectMode(CENTER); 
}

void draw(){
    background(0); 
    pushMatrix(); 
    translate(width/2-100, height/2);
    rotate(radians(a)); //posso usare millis()/qualcosa per dare tempo
    fill(255); 
    rect(0, 0, l, l); 
    popMatrix(); 
    pushMatrix(); 
    translate(width/2+100, height/2); 
    rotate(radians(-a));
    rect(0, 0, l, l);
    popMatrix(); 
    a+=5;   

}
```

//scale(); 
//shear(); 
//quad(); <-- shape() ma quadrangolare

* Lo scale è come uno zoom; ingrandisce anche lo stroke
* all'esame NON utilizzare SCALE --> modificare le coordinate

## **OOP**

* un file per ogni classe -> come nome il nome della classe
* struttura dati a metà tra array e lista
* ArrayList (Java)
* ArrayList<Ball>  <--- oggetti appartenenti a questa classe e tutto ciò che eredita
* Impropriamente si può fare ArrayList<Object> perché Object è una superclasse di tutti gli oggetti 
* v4 di processing ignora la denominazione private e rende tutto protected
* super al posto di this per richiamare elementi della superclasse

```processing
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
    fill(255, 255,0); 
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
```

for(Ball b : bs) //per ogni oggetto in bs, specifico ball