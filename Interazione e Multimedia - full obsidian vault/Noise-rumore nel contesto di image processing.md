2024-09-02 12:19

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Noise-rumore nel contesto di image processing

I filtri convolutivi N-box, gaussiano, e mediano, servono anche per ridurre il rumore di una immagine. 

Nel 3-binomiale, più è grande il kernel, migliore sarà il risultato, anche se si rischia di aumentare la sfocatura/blurring. 

I filtri N-box e gaussiano sono anche usati per sfocare l'immagine (attuare *smoothing*). In questo caso più è grande il Kernel, maggiore è la sfocatura, ma si riduce meglio il rumore.

>[!check] Per rimuovere il rumore, meglio due filtri piccoli o uno grande?
>In entrambi i casi si rimuove il rumore, ma applicando due filtri piccoli si sfoca/blur di meno l'immagine originale. 
>Esempio: Un Filtro Mediano $5 \cdot 5$ vs due Filtri Mediani $3 \cdot 3$. 

#### Rumore Sale-Pepe o degli Impulsi 

Viene caratterizzato dalla frazione dell'immagine impattata/modificata da esso. 

$$percentualeSalePepe(px)  = \begin{cases} P_{bianco} \longrightarrow z=MaxVal \\ P_{nero} \longrightarrow z=MinVal \\ 0 \longrightarrow \text{altrimenti} \end{cases}$$
Considerando a e b il massimo e il minimo valore che può avere un pixel. (esempio: 255 e 0); abbiamo sale e pepe quando i pixel dell'immagine cadono in questi due valori "saturi". 

Per contrastarlo, funziona meglio il filtro di convoluzione mediano. 

#### Rumore gaussiano bianco

Viene caratterizzato dalla media e dalla varianza. 

$$p(z) = \frac{1}{\sqrt{2\pi}\cdot \sigma} \cdot e^{-\frac{(z-\overline{z})^2} {2\sigma^2}}$$
Dove:
* $z$ rappresenta l'intensità
* $\overline{z}$ è il valore medio di $z$
* $\sigma$ è la sua deviazione standard
La deviazione standard al quadrato ($\sigma^2$) è detta *Varianza* di $z$. 
![[Gauss.png||150]]
Quando $z$ viene descritta dalla equazione sopra, circa il $70\%$ dei suoi valori ricade nell'intervallo $[(\overline{z}-\sigma), (\overline{z}+\sigma)]$, e circa il $95\%$ ricade nell'intervallo $[(\overline{z}-2\sigma), (\overline{z}+2\sigma)]$.

Per il rumore gaussiano, funziona meglio il Filtro di Convoluzione di Media. 





### References

[[Filtri di convoluzione]]

[[Convoluzione e filtri convolutivi in ambito di image processing]]

[[Maschere e operatori - Shift-Invarianti e Lineari - Kernel]]