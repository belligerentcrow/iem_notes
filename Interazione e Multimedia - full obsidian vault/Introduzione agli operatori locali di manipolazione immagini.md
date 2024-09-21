2024-09-01 17:03

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Introduzione agli operatori locali di manipolazione immagini

A differenza degli operatori puntuali, qui il valore di uscita di ogni pixel non dipende solo dal pixel corrispondente in entrata, ma da un (limitato) intorno del pixel in questione.

Questi operatori sono usati per migliorare la qualità delle immagini o per estrarre informazioni da esse; attuano una sorta di "filtraggio" sull'immagine stessa. 

E' chiave il concetto di **convoluzione**. 

* [[Operatori lineari in ambito matematico]]

Questo ed altri esempi hanno un comportamento che non è lo stesso su tutti gli elementi della base canonica di $\mathbb{R}^2$.  

I loro comportamenti **variano da elemento a elemento a seconda della posizione all'interno dell'immagine**. 

* [[Operatori Invarianti o Non-invarianti per Traslazione]]

---

**Invarianti per traslazione, sunto:**
$F$ è *shift invariant* se si comporta allo stesso modo su tutti gli impulsi, indipendentemente dalla loro posizione. 
Tutti gli operatori puntuali sono invarianti per traslazione. 

**Lineare, sunto**:
$F$ è lineare se per descriverlo basta conoscere il comportamento su tutte le immagini impulsive. 

---

***Invariante per Traslazione E Lineare, sunto*:**
$F$ è sia lineare che *shift invariant* se per descriverlo basta conoscere come si comporta su **un solo** impulso. 
La ***risposta all'impulso*** (o ***point spread function***) in questo caso è la carta di identità di tale operatore. 

> [!note]
> Vedi [[La formazione dell'immagine nell'occhio]] per definizione di *Point Spread Function* e *Impulso*. 
### References

[[Introduzione agli operatori puntuali, e curva di lookup]]

[[Base canonica nell'ambito delle immagini]]

[[Maschere e operatori - Shift-Invarianti e Lineari - Kernel]]\

Powerpoint 10 - Convoluzioni