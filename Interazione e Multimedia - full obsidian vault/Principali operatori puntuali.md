2024-09-01 11:41

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>:  

Tags: [[Interazione e Multimedia]], [[Mathematics]]

## Principali operatori puntuali in ambito di manipolazione delle immagini - negativo, binarizzazione, schiarimento-incupimento, variazione di contrasto, solarizzazione

[[Introduzione agli operatori puntuali, e curva di lookup]]

---
#### Negativo

E' l'operazione puntuale più semplice. 

E' una operazione invariante per traslazione, il cui comportamento è sempre lo stesso per tutti i medesimi livelli, indipendentemente dalla posizioone che occupano nell'immagine. 

Per una immagine con max valore $255$;

**Ad ogni** $f(x,y)$ **assegno il valore** $255 - f(x,y)$; prendo il valore di grigio nel punto $(x,y)$ e lo sottraggo a $255$.

La curva dell'istogramma sarà capovolta orizzontalmente.

---
#### Binarizzazione

Produce una immagine con soli due livelli: nero e bianco.
A partire da una soglia $T$, tutti i valori sopra questa soglia vengono portati a bianco, tutti i valori sotto questa soglia vengono portati a nero. 

La curva diventa sostanzialmente spezzata, dove tutte le frequenze di valori sono a $0$ fino a $T$, dopo il quale continuano tutti a $255$ 

---
#### Incupimento / Schiarimento dell'immagine

La diagonale identità diventa una curva concava, ponendo "la gobba" verso il basso, e la concavità verso l'alto. I valori dell'istogramma saranno mossi verso sinistra/toni più scuri. 

Al contrario, per ottenere uno schiarimento dell'immagine, la curva sarà mossa verso l'alto, con la "gobba" verso l'alto, e la concavità verso il basso. I valori dell'istogramma si sposteranno verso destra, schiarendo l'immagine. 

---
#### Variazioni di contrasto in una immagine

**Aumentando il contrasto** si rendono più evidenti le differenze di colore. Si cambia quindi il valore di un pixel con un altro che sia più scuro o più chiaro.

La curva viene modificata in modo che prima abbia concavità verso l'alto e gobba verso il basso, e dalla metà della curva in poi abbia invece concavità verso il basso e gobba verso l'alto. 

I valori nell'istogramma vengono "stretched" verso le due estremità dell'istogramma; effetto "a pettine". 

**Diminuendo il contrasto** si rendono meno evidenti le differenze di colore. *(Si ha un effetto più... "grigio")*.

La curva viene modificata al contrario: prima ha la gobba verso l'alto e la concavità verso il basso, poi nella seconda metà del grafico ha la gobba verso il basso e la concavità verso l'alto. 

I valori vengono "compressi"/spostati verso il centro dell'istogramma. 

---
#### Solarizzazione

Un esempio di effetto con variazione alla curva in maniera tale che essa non sia monotona. 

I colori vengono cambiati di molto; anche se l'immagine è in scala di grigio si nota l'effetto. 

La curva prima ha un picco verso l'alto, poi si inverte a metà grafico e ha un picco verso il basso, per poi tornare giù. 

### References

[[Trasformazioni logaritmiche e di potenza di una immagine]]

[[Istogramma delle immagini - contrast stretching e normalizzazione]]

Powerpoint 09 - Operazioni puntuali
