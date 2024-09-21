# **Processing** -- ***Di Silvestro***

codice sorgente : file .pde

Una cartella per file --> per PROGETTI

1 progetto = 1 sketch

fa in automatico una cartella --> 1 file pde per gli esercizi (si possono fare altri file con le tabs)

Importante avere una cartella per progetto : più avanti servono sottocartelle

*** 

Ridimensionale canva: 

```processing
    size(lenght, height); 
```

PRIMA in orizzontale, poi in verticale

Punto di origine: alto a sinistra

prima orizzontale poi verticale (x, y)

```processing
    size(500, height); 
```

```processing
    circle(x0, y0, diameter); 
    circle(250, 250, 500)
```


```processing
    ellipse(x0, y0, diameterHorizontal, diameterVertical); 
    ellipse(250, 250, 500, 300)
```

```processing
println(COSTANTE);
```

https://processing.org/reference/ellipseMode_.html

costanti:
    RADIUS
    CENTER --> disegno parte dal centro
    CORNER -->parto dall'origine
    CORNERS --> per fare "come paint"

Definiscono come interpretare x0 e y0, "da dove parto"

***

## SFONDO

```processing
background(r, g, b); 
```


utilizzo il modello RGB -- [0-255] per ogni valore (255<sup>3</sup>)
quarto parametro: ALPHA --> TRASPARENZA (tranne per il background)

Processing PER ADESSO non considera quello che costruiamo come oggetti ma come "pixel", dopo aver elaborato i calcoli

//riempie tutte le figure da quando lo scrivo in poi
```processing
fill(r, g, b, 0); 
```

//leva il riempimento, fa in modo che siano vuote
```processing
noFill(); 
```

//influenza le linee (fin quando non diciamo altrimenti)
```processing
stroke(0, 255, 0); 
```

//per far sì che non ci siano le linee
```processing
noStroke(); 
```

//"pressione" e "spessore" del tratto
```processing
strokeWeight(10); 
```

deriva da JAVA: fortemente tipizzato a differenza di python
dobbiamo dichiarare il tipo ogni volta

tipi di processing
    int
    float
    double
    char
    String <-- è un oggetto, non un tipo primitivo


//punto
```processing
point(x0, y0); 
```

//rect
```processing
rect(0, height/2, width, height/2); 
```

//rectMode
```processing
rectMode(CORNER); //default
rectMode(CENTER); //BOH
rectMode(CORNERS); //inserisco il punto in alto a sx e in basso a dx 
```

//quad
```processing
quad(x1, y1, x2, y2, x3, y3, x4, y4); 
```

//triangle
```processing
triangle(x1, y1, x2, y2, x3, y3); 
```

//colore
```processing
colorMode(RGB, numeroCheIndicaRangeDiParametriTipo255,); 
```

for(inizializzazione; condizione di permanenza; aggiornamento)

```processing
//ciclo for

//for(Inizializzazione; Condizione di permanenza; Aggiormento){}
int q = width; 
size(1000, 1000); 
int s = width/q; 
int d=width/q; 

colorMode(RGB, width); 
background(0);
/*for(int x=10; x<=width; x+=s){
  line(x,0,x,height); 
  point(x,0);
}
*/
noStroke(); 
colorMode(RGB, width); 
for(int y = d/2; y <=height; y+=d){
   
  for(int x=d/2; x<=width; x+=d){
    fill(x, y, width);
    rect(x, y, d, d); 
  }
}
```


***
//la chiama appena premiamo play
```processing
void setup(){

}
```


//ciclo infinito che termina quando chiudiamo la finestra: viene richiamato 60 volte al secondo
//FRAMERATE = 60 fotogrammi al secondo
//possiamo cambiare framerate (una sola volta e all'inizio)
```processing
void draw(){

}
```

//framecount

//millis(); <-- millisecondi passati
    -> se facciamo millis()/int fa il casting e diventa int 
    -> se fosse millis();/float  ---> FLOAT

