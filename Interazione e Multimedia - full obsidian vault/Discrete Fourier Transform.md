2024-09-03 15:02

<b>Status</b>: #LaTex  #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Mathematics]], [[Interazione e Multimedia]], [[Waves]]

## Discrete Fourier Transform

La **Trasformata Discreta di Fourier** è una forma campionizzata della Trasformata di Fourier; non continene tutte le frequenze che formano una immagine, ma un sottoinsieme sufficiente a descriverla interamente nel dominio spaziale di essa. 

Converte una collezione finita di campioni equispaziati di una funzione in una **collezione di coefficienti di una combinazione lineare di sinusoidi complesse**, ordinate al crescere della frequenza. Si tratta di un modo per rappresentare una funzione nel dominio delle frequenze. 

Il numero di frequenze corrisponde al numero di pixels nel dominio spaziale dell'immagine: quindi l'immagine nel dominio spaziale e nel dominio di Fourier hanno "la stessa grandezza". 

Nel caso 2D, la coppia trasformata e antitrasformata della sequenza bidimensionale $f(x,y)$ assumono la seguente forma. (Assumere $x,y$ e $u,v$ andanti da $0$ a $M-1$ e $N-1$ rispettivamente)

**DFT** da immagine $f(x,y)$ a dominio di Fourier $F(u,v)$:

$$F(u,v) = \frac{1}{MN} \sum_{x=0}^{M-1} \sum_{y=0}^{N-1} f(x,y) \cdot e^{-i2 \pi (\frac{ux}{M} + \frac{vy}{N})}$$
**Anti-trasformata**, processo inverso che ritrasforma $F(u,v)$ nell'immagine originaria $f(x,y)$
$$f(x,y) = \sum_{u=0}^{M-1}\sum_{v=0}^{N-1} F(u,v)e^{i2\pi(\frac{uv}{M}+\frac{vy}{N}) }$$

Suppongo che le due sommatorie e $\frac{1}{MN}$ descrivano il fatto che si stia scorrendo una immagine: si va da $x=0$ e $y=0$ alle dimensioni effettive delle immagini, $M,N$. 

Il punto è che tutti i valori della funzione contribuiscono alla costruzione di ciascuno dei campioni della trasformata. Analogamente, tutti i campioni della trasformata contribuiscono, facendo l'inverso e l'anti-trasformata, a ciascuno dei valori della $f(x)$. I campioni della trasformata sono in genere complessi, quindi ognuno di essi ha un modulo e una fase.  


### References

[[Fourier - Serie, Trasformata, applicazione]]

[[Formula di Eulero]]


[Wiki page della Trasformata Discreta di Fourier](https://it.wikipedia.org/wiki/Trasformata_discreta_di_Fourier)