2024-09-01 10:09

<b>Status</b>: #LaTex #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Mathematics]]

## Equalizzazione di una immagine tramite istogramma - algoritmo ed esempio

Si parla di equalizzazione o immagine equalizzata quando i valori sono più o meno uniformi all'interno dell'istogramma, e il contributo di ogni tonalità di grigio è quasi uguale. *Nota: non è detto che l'equalizzazione migliori la qualità di una immagine.*

Consideriamo: 
* Una immagine $I [M, N]$ 
* $r_k$ un livello di grigio
* $n_k$ come il numero di pixel di quel livello in $I$;
* $L$ come il numero dei livelli (credo?)

Allora possiamo definire $$p_r(r_k) = \frac{n_k}{M \cdot N} \hspace{0.75cm} \longrightarrow \hspace{0.75cm} k = 0,1,2, ..., L-1$$
Se facciamo il plot di $r_k$ versus $p_r(r_k)$, quello che si ottiene è l'istogramma dell'immagine.

#### Algoritmo di Equalizzazione

I nuovi valori di grigio nell'istogramma vengono così definiti: 

$$s_k = T(r_k) = (L - 1) \sum_{j=0}^{k} p_r(r_j)$$
$$= \frac{(L-1)}{M \cdot N} \sum_{j=0}^{k}n_j \hspace{0.75cm} \longrightarrow \hspace{0.75cm} k = 0,1,2, ..., L-1$$
#### Esempio

Consideriamo una immagine a 3-bit (8 Livelli di grigio), 64x64 pixels. (Quindi $M \cdot N = 4096$), con la seguente distribuzione di intensità di grigi

| $r_k$     | $n_k$  | $p_r(r_k) = \frac{n_k}{M \cdot N}$ |
| --------- | ------ | ---------------------------------- |
| $r_0 = 0$ | $790$  | $0.19$                             |
| $r_1 = 1$ | $1023$ | $0.25$                             |
| $r_2 = 2$ | $850$  | $0.21$                             |
| $r_3 = 3$ | $656$  | $0.16$                             |
| $r_4 = 4$ | $329$  | $0.08$                             |
| $r_5 = 5$ | $245$  | $0.06$                             |
| $r_6 = 6$ | $122$  | $0.03$                             |
| $r_7 = 7$ | $81$   | $0.02$                             |
Applicando l'algoritmo si ha quindi:

$$s_0 = T(r_0) =\hspace{0.5cm} 7 \cdot \sum_{j=0}^0 p_r(r_j) =\hspace{0.5cm} 7 \cdot p_r(r_0) =\hspace{0.5cm} 1.33$$
$$s_1 = T(r_1) =\hspace{0.5cm}  7 \sum_{j=0}^{1}p_r(r_j) = \hspace{0.5cm} 7 \cdot p_r(r_0) + 7 \cdot p_r(r_1) = \hspace{0.5cm} 3.08$$
$$s_2 = 4.55 \hspace{0.5cm} //\hspace{0.5cm} s3 = 5.67 \hspace{0.5cm}  // \hspace{0.5cm} s_4 = 6.23 \hspace{0.5cm} // \hspace{0.5cm} s_5 =6.65 \hspace{0.5cm} // \hspace{0.5cm} s_6 = 6.86 \hspace{0.5cm} // \hspace{0.5cm} s_7 = 7.00$$

Arrotondando:
$$s_0 = 1 \hspace{0.2cm} //\hspace{0.2cm} s_1 = 3 \hspace{0.2cm} //\hspace{0.2cm}  s_2 = 5 \hspace{0.2cm} //\hspace{0.2cm} s3 = 6 \hspace{0.2cm} //\hspace{0.2cm} s_4 = 6 \hspace{0.2cm} //\hspace{0.2cm}  s_5 =7 \hspace{0.2cm} //\hspace{0.2cm} s_6 = 7 \hspace{0.2cm} //\hspace{0.2cm}  s_7 = 7$$

*Nota: ora ci sono solo 5 livelli distinti. Questo potrebbe aiutare per la compressione?*

### References

[[Istogramma delle immagini - contrast stretching e normalizzazione]]

Powerpoint 09 - Operazioni puntuali