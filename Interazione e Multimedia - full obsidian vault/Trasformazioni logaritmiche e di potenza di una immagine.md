2024-09-01 12:18

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Mathematics]]

## Trasformazioni logaritmiche e di potenza di una immagine

#### Trasformazione logaritmica 

Consente di "comprimere la gamma dinamica", permettendo la memorizzazione o visualizzazione con una scala di grigi "usuale", di immagini caratterizzate da escursioni di intensità molto ampie. *(Amplifica il bianco in una immagine prevalentemente nera e (suppongo) viceversa)*.  

Si espande la dinamica per valori bassi di $f$, si comprime la dinamica per valori alti di $f$. *(sic)*

Con $c$ costante positiva (normalizza il risultato tra $0$ e $255$): 

$$g(x,y) = c \cdot log_2 \hspace{0.1cm}(1+f(x,y))$$

---
#### Trasformazione di potenza

Scegliamo $c$ di volta in volta in modo da *normalizzare* i valori risultanti nell'intervallo $[0,255]$.

Per i valori di $\gamma$ minori di $1$ questa trasformazione ha di fatto effetti analoghi alla trasformazione logaritmica.
Per valori di $\gamma$ maggiori di $1$, la trasformazione ha gli effetti esattamente opposti.

$$g(x,y) = c \cdot (f(x,y))^{\gamma}$$
![[LUT al variare di gamma.png||250]]

In un monitor CRT ($\gamma = 2.5$) si può applicare una correzione pre-processando l'input con la corrispondente funzione inversa: $g(x,y) = f(x,y)^{\frac{1}{2.5}} = f(x,y)^{0.4}$

![[effetti della correzione gamma su CRT.png|150]]


### References

[[Quantizzazione uniforme e non-uniforme logaritmica]]

[[Principali operatori puntuali]]

[[Istogramma delle immagini - contrast stretching e normalizzazione]]

Powerpoint 09 - Operazioni puntuali