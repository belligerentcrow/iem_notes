2024-08-31 17:17

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Colours]]

## Formule del Tristimolo e Diagramma CIE 1931

La sensazione del colore è descritta da tre parametri. Questi valori *tristimolo* di un colore sono la somma dei tre colori primari, in un modello con 3 componenti additive. 

Questo è errato; se questo fosse vero non riusciremmo a vedere alcuni colori che in realtà vediamo. quindi parliamo di intersezione di spettro di assorbimento da aprte dell'occhio e i coni da un lato, e dall'altro dello spettro riflesso dall'oggetto, utilizzando in integrale per calcolare l'intersezione dell'area. 

Considerando $L$ la curva dell'oggetto, lo spazio colorimetrico della CIE del 1931 è distinto da: 

$$X = \int_{380}^{780} L_{e,\lambda} \cdot \bar{x}(\lambda) \cdot d(\lambda) $$
$$Y = \int_{380}^{780} L_{e,\lambda} \cdot \bar{y}(\lambda) \cdot d(\lambda) $$
$$Z = \int_{380}^{780} L_{e,\lambda} \cdot \bar{z}(\lambda) \cdot d(\lambda) $$
Questo sistema è nato dal nostro sistema visivo; da questo possiamo costruire altri spazi di colore. 

Il diagramma cromatico CIE può essere ottenuto in questo modo:
* Avendo $x$ come quantità di rosso, e $y$ come quantità di verde
* $z$ può essere ottenuta come $z = 1 - (x + y)$
La rappresentazione grafica al variare di $x$ e $y$ da' origine al diagramma cromatico CIE. 

![[Pasted image 20240831173003.png||300]]

E' una sezione (dovrebbe essere in 3D); è solo una fetta dei uno spazio più completo, lo spazio dei colori CIE 1931 XYZ. 

Le relazioni per passare alle coordinate tridimensionali XYZ alle coordinate xy sono: 

$$x = \frac{X}{(X+Y+Z)}$$
$$y = \frac{Y}{(X+Y+Z)}$$

Nel bordo ci sono tutti i colori che non contengono tracce di bianco; "colore puro". Il punto di uguale energia ('centro') è il bianco. 

Unendo due colori con una linea, tutti i colori sulla linea sono rappresentabili mischiando i due colori. Unendo tre colori con un triangolo, tutti i colori lungo il bordo e nel triangolo sono quelli ottenibili mischiando quei tre colori.

Unendo il rosso, blu e verde, si ottiene un triangolo che non copre tutta l'area; quindi non tutti i colori si ottengono mischiando RGB. 

### References

[[Introduzione al colore in ambito digitale]]

[[Struttura dell'occhio e recettori visivi]]

Powerpoint 08 - I Colori 