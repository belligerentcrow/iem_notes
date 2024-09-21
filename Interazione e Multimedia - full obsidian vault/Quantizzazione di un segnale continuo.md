2024-08-31 12:58

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Quantizzazione di un segnale continuo in ambito di immagini e suoni

L'arrotondamento di un segnale continuo in specifici range si chiama quantizzazione. 

Dobbiamo scegliere come dividere dei range, e appiattiamo quelli di quella fascia ad uno stesso quanto/elemento: se ci sono decimali si attua un arrotondamento. 

Inoltre le misure sono sempre soggette a errori come difetti nel sensore o altro tipo di perturbazione ("rumore"). 

Consideriamo un intervallo $[a, b]$ contenente numeri reali, e immaginiamo di voler quantizzare su $n$ livelli. Si fissano $n+1$ numeri $t_0$, $t_1$ ... $t_n$ tali che $t_0 = a < t_1 < ... < t_n = b$

Il numero $x$ da quantizzare verrà assegnato ad uno dei livelli, ad esempio $k$, se $$ t_k \leq x < t_{k+1}$$
E a ciascun livello viene assegnato un valore rappresentativo $Q_i$ Tutti i valori che "cadono" in quest'intervallo rappresenteranno questo valore. 

Una volta che fissiamo la quantità di livelli dobbiamo porci il problema di rappresentarli in memoria. Utilizzeremo ovviamente dei numeri. 

Quanti bit sono necessari per memorizzare il livello di intensità luminosa in un punto? Per 4 livelli ne bastano 2. $2 = log 4$ . 
In generale se ci sono $N$ livelli occorre rappresentare $N$ numeri, quindi di bit ne bastano $$B = log N$$

![[Esempio di differenziazione in base ai bit.png|400x300]]

### References

[[Quantizzazione uniforme e non-uniforme logaritmica]]

[Video riguardo il colore e Image Processing di Juxtopposed](https://youtu.be/srRI7yMjGz0?t=593)