2024-09-03 19:52

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Mathematics]], [[Interazione e Multimedia]]

## Fast Fourier Transform - FFT

Un algoritmo che permette di applicare una versione della Discrete Fourier Transform con una complessità di $O(n\log n)$. Nella sua forma originale invece avrebbe una più alta complessità di $O(n^2)$ *(N moltiplicazioni complesse e N-1 addizioni per ciascuno degli N valori di u)*.

James Cooley e John Tykey sono responsabili di questa specifica versione della Trasformata Veloce, nel 1965. 

$$F(u) = \frac{1}{N} \sum_{x=0}^{N-1}\text{e}^{[-i2\pi \frac{ux}{N}]}$$

### References

[[Fourier - Serie, Trasformata, applicazione]]

[[Discrete Fourier Transform]]
