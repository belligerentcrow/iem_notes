# **IeM 8 -- Lab**

## **Interazione**  
--> Con mouse e tastiera soprattutto

-->Con mouse 
    * tasto destro sinistro e centrale, la wheel, tasti della tastiera
    * Due modi per il click 
    * --> una all'interno del draw (cose altamente interattive)
      * Tipo prendere cliccare trascinare etc
      * tipo per muovere i pg con WASD
    * Una con eventlisteners

    mousePressed() --> variabile booleana all'interno del draw

    se fermo il draw --> anche se metto loop(); come else, il programma non lo legge perché non richiama draw()  
    risolvo il problema con delle funzioni event listeners  

    con esse posso catturare anche micromovimenti (pressione + rilascio)

```processing
    //quanto varierà il diametro di ogni cerchio rispetto al precedente
    int dd = 30;


    void setup(){
    size(500,500); 
    strokeWeight(5); 
    background(0); 
    }

    void draw(){
    for(int d = width; d >= 50; d-=dd){
        fill(random(255), random(255), random(255)); 
        stroke(random(255), random(255), random(255)); 
        ellipse(width/2, height/2, d, d); 
    }
    }

    void mousePressed(){
    if(mouseButton==LEFT){
            noLoop(); 
        }
    if(mouseButton==RIGHT){
            loop();  
    }
    }
```

mousePressed() + mouseReleased() in veloce sequenza == mouseClicked() --> la "velocità" dipende da OS, architettura, etc

```processing
    //quanto varierà il diametro di ogni cerchio rispetto al precedente
    int dd = 30; 

    void setup(){
    size(500,500); 
    strokeWeight(5); 
    background(0); 
    }

    void draw(){
    for(int d = width; d >= 50; d-=dd){
        fill(random(255), random(255), random(255)); 
        stroke(random(255), random(255), random(255)); 
        ellipse(width/2, height/2, d, d); 
    }
    }

    void mousePressed(){
    if(mouseButton==LEFT){
            noLoop(); 
        }
    }

    void mouseReleased(){
    if(mouseButton==LEFT){
        loop(); 
    }
    }
```


* key riesce a prendere lo spazio
  * (key==' ')
* anche l'invio/enter
  * (key=='\n') OPPURE (key==RETURN)

* Rimane fuori
  * le 4 freccie + ctrl + alt + shift
  * si dicono "tasti codificati" --> controllo che dentro key ci sia CODED, metto un if di keyCode

```processing
    if(keyPressed && key==CODED){
        if(keyCode==LEFT){ //freccia destra

        }
    }
```

### **interpolazione**

* avendo due punti, trovare un terzo che gli sta in mezzo

* bullet time stile matrix --> struttura di legno semicircolare --> buchi a distanza 30cm --> 60 foto contemporaneamente

* ma si vedeva a scatti --> tecnica dell'interpolazione per risolvere (creare dei fotogrammi in mezzo per passare da una immagine all'altra)

* tipo gradiente

* open thunes??? --> studio ghibli, azienda italiana che riesce 


lerp(valore iniziale, valore finale, double compreso tra 0 e 1 di quanto vogliamo spostarci dal primo al secondo)

```processing
int x1 = 50; 
int y1 = 50; 
int x2 = 450;
int y2 = 400; 
int q = 30; 
int col = 0; 
void setup(){
  size(500,500);
    background(0); 
  stroke(255); 
  line(50, 50, 450, 400); 
  stroke(255, 0, 0); 
  strokeWeight(10);  
  fill(255, 0, 0); 
  point(50, 50, 30); 
  point(450, 400, 30); 
  for(int i = 0; i<=q; i++){
    float x= lerp(x1, x2, (float)i/q); 
    float y= lerp(y1, y2, (float)i/q); 
    col += 5; 
    stroke (255, col, col); 
    point(x, y); 
  }
}
```

// es: clicco e metto il primo punto, clicco di nuovo e metto il secondo punto, il programma traccia la linea e ogni volta che clicco col sinistro inserisce un nuovo pallino, ogni volta che clicco col destro leva uno dei pallini

//movimento EASING <----- 
    * L'oggetto rallenta quando si avvicina al punto finale
    * Effetto "achille e la tartaruga" 

* In grafica ci sono sempre accelerazione e decelerazione

* Onion Skin --> fotogrammi precedenti con trasparenza

```processing
float x; 
float y; 

void setup(){
  size(500, 500); 
  noStroke(); 
}

void draw(){
   //background(0); 
   fill(0, 30); 
   rect(0, 0, width, height); 
   x = lerp(x, mouseX, 0.1); 
   y = lerp(y, mouseY, 0.1); 
   fill(255); 
   ellipse(x, y, 50, 50); 
}
```

//es: sfera che rimbalza con scia



```
void setup(){
   size(500, 500); 
   background(255); 
   strokeWeight(5); 
}

void draw(){
   
    line(pmouseX, pmouseY, mouseX, mouseY); 
   
}

void keyPressed(){
  if(key=='r'|| key=='R'){
    stroke(255, 0, 0);
  }
  if(key == 'g' || key=='G'){
    stroke(0, 255, 0);  
  }
  if(key == 'b' || key == 'B'){
    stroke(0, 0, 255);  
  }
  if(key == 'e' || key == 'E'){
    setup(); 
  }
}
```

int d=50; 
void setup(){
  size(500, 500); 
}
void draw(){
  background(255); 
}

map --> al posto di color mode 

    map (cosa, Start_in, End_in, Start_out, End_out)
          d       50      500       0         255

```processing
int d=50; 
void setup(){
  size(500, 500); 
}
void draw(){
 background(map(mouseX, 0, width, 0, 255), map(mouseY, 0, width, 0, 255), 0); 
 fill(map(d,50, width,0,255), 0, 0); 
  ellipse(width/2, height/2, d, d); 
  if(dist(mouseX, mouseY, width/2, height/2) < d/2){
    d+=3; 
  }else if(d > 50){
    d-=30; 
  }
}
```

```processing
void setup(){
  size(500, 500);
  x = width/2-30; 
  y = height/2;
  x2 =width/2+30; 
}
void draw(){
 background(255, 255, 0); 
 fill(255); 
 ellipse(x, y, d, d); 
 ellipse(x2, y, d, d); 
 fill(0);
 float dx=map(mouseX, 0, width, -15, 15); 
 float dy = map(mouseY, 0, height, -15, 15); 
 ellipse(x+dx, y+dy, 5, 5); 
 ellipse(x2+dx, y+dy, 5, 5); 
}
```

***

* Esiste variabile di tipo color --> la inizializziamo attraverso la funzione color()

```
color c = color(r, g, b); 
```

mouse compreso in un rettangolo

x < mouseX < x+w
      AND
y < mouseY < y+h

void mousePressed(){
  if(mouseX > xr && mouseX < xr+w && mouseY > yr && mouseY < yr+h){
    c = color(random(255), random(255), random(255)); 
    xr = (int)

  }
}