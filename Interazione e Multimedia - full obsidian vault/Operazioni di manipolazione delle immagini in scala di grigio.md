2024-09-01 10:42

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Operazioni di manipolazione delle immagini in scala di grigio

*Nota: nonostante qui si parli **solo di immagini in scala di grigio**, le operazioni si estendono anche alle immagini in RGB, operando separatamente ai tre canali R G B, trattando ogni piano come immagine a scala di grigi. Soluzione non sempre apprezzata in ambito della ricerca (sic)*

Queste operazioni alternano i valori dei pixel; l'immagine finale apparirà differente da quella iniziale. 

Consideriamo:
* $f$ come immagine in ingresso alla elaborazione, 
* $g$ come immagine in uscita,
* $T$ l'operatore su $f$ definito in un intorno $(x, y)$
Allora le elaborazioni nel dominio spaziale possono essere espresse come:
$$g(x,y) \hspace{0.2cm}=\hspace{0.2cm} T[f(x,y)]$$

La dimensione dell'intorno di $(x,y)$ definisce lo *scope* e il *carattere* dell'operazione da attuare sull'immagine; ovvero, $(x,y)$ può poter definire zone diverse di pixel.
L'intervallo $(x,y)$ può essere:

* **Puntuale**: l'intorno coincide con il pixel
* **Locale**: una piccola regione quadrata incentrata sul pixel
* **Globale**: l'intorno coincide con l'intera immagine in input $f$. 

[[Principali operatori puntuali]]

### References

[[Istogramma delle immagini - contrast stretching e normalizzazione]]

[[Equalizzazione di una immagine tramite istogramma]]

Powerpoint 09 - Operazioni puntuali