2024-09-02 09:49

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Mathematics]], [[Interazione e Multimedia]]

## Convoluzioni - definizione e formule generiche di generazione kernel

Per indicare l'operazione di convoluzione, si usa la notazione
$$g = f \otimes h$$
* E' commutativa: $f \otimes h = h \otimes f$
* E' associativa: $(f \otimes h) \otimes h_1 = f \otimes (h \otimes h_1)$

Formula "generale" di una convoluzione matematica (in ambito di funzioni):
$$(f\otimes g)(t) := \int_{-\infty}^{\infty}f(x) \cdot g(t-x) \cdot dx$$

>[!info] Definizione della Convoluzione - Wikipedia
>La convoluzione è un'operazione tra due funzioni di una variabile che consiste nell'integrare il prodotto tra la prima, e la seconda traslata di un certo valore. 

* **Caso 1: Origine al centro**
Kernel $h$ con dimensioni $s \cdot t$ ha questa formula, se gli indici del kernel sono disposti in maniera da avere il punto di coordinate $(0,0)$ nella posizione centrale.
 
$$g_{m,n} = \sum_{i=-\lfloor \frac{s}{2}\rfloor}^{\lceil \frac{s}{2}\rceil - 1}\sum_{j=-\lfloor \frac{t}{2}\rfloor}^{\lceil \frac{t}{2}\rceil - 1} (h_{i,j} \otimes f_{m+i, n+j}) $$
* **Caso 2: Origine in alto a sinistra**
Kernel $h$ con dimensioni $s \cdot t$ ha questa formula, se il primo punto in alto a sinistra ha coordinate $(1,1)$.
$$g_{m,n} = \sum_{i=1,j=1}^{s,t} h_{i,j} \otimes f_{m+(i-s+\lfloor\frac{s}{2}\rfloor), \hspace{0.20cm}n+(j-t+\lfloor\frac{t}{2}\rfloor)}$$


### References

[[Maschere e operatori - Shift-Invarianti e Lineari - Kernel]]

[[Introduzione agli operatori locali di manipolazione immagini]]

[[Operatori Invarianti o Non-invarianti per Traslazione]]

[[Operatori lineari in ambito matematico]]

Powerpoint 10 - Convoluzioni


[[Fourier - Serie, Trasformata, applicazione]] -> [This theorem](https://it.wikipedia.org/wiki/Teorema_di_convoluzione) 


[Video di 3Blue1Brown sulla Convoluzione (alhamdulillah)](https://www.youtube.com/watch?v=KuXjwB4LzSA)

[Lecture di 3Blue1Brown specifico sulla convoluzione in ambito di image processing (subhanallah)](https://www.youtube.com/watch?v=8rrHTtUzyZA)