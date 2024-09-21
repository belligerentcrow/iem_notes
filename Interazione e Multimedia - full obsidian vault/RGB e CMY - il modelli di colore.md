2024-08-31 19:07

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Colours]], [[Interazione e Multimedia]]

## RGB e CMY - il modelli di colore

In questo modello, ciascun colore è ottenuto mischiando i tre colori fondamentali della sintesi additiva, ovvero RGB. 

Vengono utilizzati valori da 0 a 255; valori maggiori rappresentano maggiore presenza del colore in questione.

Se ogni coordinata (di RGB, che va da 0 a 255) di colore è intesa come una coordinata cartesiana, questo modello è definibile come un cubo.

Ogni punto nella diagonale che va dal punto $(0,0,0)$ al punto $(255,255,255)$ è una scala di grigio.

![[modello RGB.png||200]]

E' molto facile così da implementare in software, segue la teoria della sintesi additiva, ed è uno standard. 

>[!tip] Colori sicuri per il web
> I colori "Web-Safe" sono un **sottoinsieme dei colori usati tipicamente per il web**, uno standard utilizzato quando si vuole che i colori vengano visti dalla maggior  parte delle persone nello stesso modo. 
> 
> Questo accade perché 40 delle 256 componenti di ogni parte della tripletta **vengono processate in maniera diversa** da diversi sistemi operativi. 
> 
> Sono **216 colori** che, nel loro codice esadecimale, appaiono scritti nella loro terna esclusivamente con i numeri `00, 33, 66, 99, CC, FF`. 

Il cubo RGB e la piramide HSV si trasformano l'un l'altra tramite semplici algoritmi (non lineari). 

Il modello complementare dell'RGB, è il cubo CMY, dove sostanzialmente il cubo sarebbe capovolto, le tre assi calcolano invece *magenta, ciano, e giallo*, e l'asse z tra bianco e nero è capovolto. 

### References

Powerpoint 08 - I Colori 

[[Formule del Tristimolo e Diagramma CIE 1931]]

[[Problemi del sistema CIE-CIE XYZ e spazi di colore alternativi]]

[[Sintesi Sottrattiva e Sintesi Additiva del colore]]

[[Introduzione al colore in ambito digitale]]

[[Spazi di colore YUV, YCbCr]]. 

[[Memorizzazione digitale dei colori e scorciatoie]]