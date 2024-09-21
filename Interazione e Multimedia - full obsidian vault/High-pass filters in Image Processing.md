2024-09-04 10:45

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## High-pass filters in Image Processing - Ideale, Butterworth, Gaussiano

[[Low-pass Filter in image processing - Ideale, Butterworth, Gaussiano]] - Sostanzialmente l'opposto

Permette solo il passaggio di segnali **sopra una certa frequenza**, bloccando quelle sotto in base a una certa funzione. 

$D_0$: frequenza di taglio.

---

#### Filtro High-pass Ideale
 $$H (u,v) \begin{cases} 0 \hspace{1cm} \text{if} D(u,v) \leq D_0 \\ 1 \hspace{1cm} \text{if} D(u,v) > D_0 \end{cases}$$
---
#### Filtro di Butterworth

$$H(u,v) = \frac{1}{1 + [\frac{D_0}{D(u,v)}]^{2n}}$$

---
#### Filtro Gaussiano

$$H(u,v) = 1-e^{-D^{2}\frac{(u,v)}{2D_0^{2}}}$$


### References

[[Discrete Fourier Transform]]

[[Range dinamico e spettro di una trasformata di Fourier]]

[[Da maschera spaziale a filtro convoluzionale nel dominio Fourier]]