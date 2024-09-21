2024-09-01 12:32

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Mathematics]]

## Introduzione agli operatori puntuali di manipolazione di immagini, e curva di lookup

Si chiamano operatori puntuali quelle operazioni che trasformano un pixel in entrata in un pixel in uscita, basandosi solamente sul valore del pixel in questione per effettuare la trasformazione. Il valore del pixel in uscita quindi dipende esclusivamente dal valore del pixel in ingresso. Si tratta di operatori *invarianti per traslazione*, al contrario di alcuni operatori lineari. 

Esempi di operazioni puntuali:
* Aggiunta o sottrazione di una costante a tutti i pixel
* Inversione della scala di grigi (negativo di una immagine)\
* espansione del contrasto
* Modifica (equalizzazione o specifica) dell'istogramma
* Presentazione in "falsi colori"

Un operatore puntuale può essere rappresentato da una funzione che preso in input un valore $f(x,y)$ lo modifica in un valore $g(x,y) = T(f(x,y))$ *(attuando su di esso una modifica)* con $f(x,y)$ e $g(x,y)$ appartenenti allo stesso campo di definizione/range (es: entrambi da 0 a 255). 

Dipendendo unicamente dal valore del pixel in entrata, gli outputs dell'operatore puntuale quindi possono essere integralmente descritti da una tabella del genere:

| IN      | $0$    | $1$    | $2$    | $3$    | $4$    | ... |
| ------- | ------ | ------ | ------ | ------ | ------ | --- |
| **OUT** | $T(0)$ | $T(1)$ | $T(2)$ | $T(3)$ | $T(4)$ |     |
Quindi è possibile assegnare valori su una tabella le cui assi siano *Input* e *Output* *(o $x$ ed $f(x)$)* come se fossero su un piano cartesiano. 

Ponendo tali dati su un grafico si ottiene qualcosa di simile a questo: viene chiamato **Look-up Table**. Questo strumento, su alcuni programmi di grafica, permette di "aggiustare" o modificare la curva (quindi la funzione che ha effetto sull'istogramma) per ottenere un certo effetto.

![[LUT.png||150]]

*Nota: se tutti i valori sono posti sulla diagonale del quadrante, allora si ottiene in output una identità: dell'immagine non cambia niente perché i valori dei pixel saranno assegnati a loro stessi.*

[[Principali operatori puntuali]]

### References

[[Istogramma delle immagini - contrast stretching e normalizzazione]]

[[Trasformazioni logaritmiche e di potenza di una immagine]]

Powerpoint 09 - Operazioni puntuali