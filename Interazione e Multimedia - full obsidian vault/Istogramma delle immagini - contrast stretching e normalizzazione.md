2024-09-01 09:32

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Istogramma delle immagini - contrast stretching e normalizzazione

Considerando il fatto che i pixel - i valori di una immagine - non siano altro che numeri, si possono mettere in relazione tra di loro in maniera interessante.

Consideriamo i valori di grigio di una immagine: possiamo creare su di essi statistiche e calcoli. Media, mediana, varianza, deviazione standard, quartili, percentili... una delle cose più importanti è la **distribuzione delle frequenze dei toni di grigio**; ovvero, l'istogramma. Per ogni livello di grigio si riporta il numero di pixel all'interno dell'immagine che sono a quel livello di grigi. 

Per una immagine $I[m,n]$, si ha $H(k) =$ numero di pixel di valore $k$. 
La somma di tutti gli $H$ sarà esattamente $m \cdot n$. 

*Nota: immagini visivamente diverse possono avere istogrammi simili. Ad esempio, tagliando a metà una immagine e capovolgendola nella canvas, tecnicamente la quantità di grigi rimane esattamente la stessa, anche se per noi è una immagine completamente diversa.*

Se una immagine ha l'istogramma più denso a destra, sarà più chiara. Al contrario, un istogramma denso a sinistra sarà indice di una immagine più scura. 

![[Istogramma.png||200]]

#### Espansione del Constrasto / Contrast Stetching

Si può applicare in una immagine dove i valori dell'istogramma sono concentrati su un intervallo limitato. Si ottiene spostando i valori di un istogramma verso altri valori non utilizzati. L'istogramma apparirà diverso, ad *effetto pettine:* ciò mette il risalto il fatto che i valori siano stati distribuiti lungo gli altri livelli, cercando di creare una immagine a valori più uniformi. *(aumenterà il contrasto)* 
Questa operazione è utile in campo medico, per identificare eventuali patologie.

>[!warning] Problemi dell'operare aritmeticamente con i pixels
> 1. Potremmo ottenere valori negativi
> 2. Potremmo ottenere valori out of bound dall'altro lato (ovvero maggiori del massimo)
> 3. Potremmo ottenere valori non interi (facilmente risolvibili troncando o approssimando per floor o ceiling)


>[!tip] Normalizzazione - significato e formula
>
>Per risolvere i problemi dell'out-of bounds / problemi di range ci sono diverse soluzioni. Assumendo $255$ come valore massimo di un px, possiamo:
>
> 1. Settare a 0 (nero) i valori troppo bassi e a 255 o al massimo i valori troppo alti
> 2. Ri-**normalizzare** il range, trasformando tutti i valori per farli entrare dentro il range indicato, tramite la seguente equazione: $$v_{nuovo} = 255 \cdot \frac{(v_{vecchio} - min_{osservato})}{(max_{osservato} - min_{osservato})}$$


### References

[[Equalizzazione di una immagine tramite istogramma]]

[[Introduzione agli operatori puntuali, e curva di lookup]]

[[Operazioni di manipolazione delle immagini in scala di grigio]]

[[Principali operatori puntuali]]

[[Trasformazioni logaritmiche e di potenza di una immagine]]

Powerpoint 09 - Operazioni puntuali



[Sito web che permette di generare istogrammi a partire da immagini locali](https://sisik.eu/histo)

[Wiki page della normalizzazione e del contrast stretching](https://en.wikipedia.org/wiki/Normalization_(image_processing)#Contrast_Stretching_for_Image_Enhancement)

[Sito web (del 2003???) con informazioni riguardo il Contrast Stretching](https://homepages.inf.ed.ac.uk/rbf/HIPR2/stretch.htm)


