2024-07-19 17:49

<b>Status</b>: #LaTex #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Computer Science]], [[Algorithms]]

## Algoritmi di stima della qualità delle immagini

#### Mean Square Error
Calcola il valore di errore quadratico di una immagine. 

Più è alto, più, date due immagini, una è diversa dall'altra. D'altro canto, più è basso, minore è la differenza. 

E' necessario avere entrambe le immagini. Date le due immagini, $I (M \cdot N)$ e $I'(M \cdot N)$...

$MSE = \frac{1}{M \cdot N} \cdot  \sum_{x=1}^{M} \cdot \sum_{y=1}^{N} [I'(x,y)-I(x,y)]^2$

#### Peak Signal to Noise Ratio
Calcola la qualità di una immagine compressa rispetto all'originale; dipende dalla differenza tra essa e l'originale. Più è alto, maggiore è la qualità e la somiglianza tra le due immagini date. 

Non è il migliore algoritmo di testing, ma data la facilità di calcolo, è il più ampiamente utilizzato. 

Date le due immagini, $I (M, N)$ e $I'(M,N)$, dato S il valore massimo di un pixel, e il MSE delle due immagini, ci sono tre modi di calcolare il PSNR, equivalenti fra loro.

1) $-10\log_{10}{\frac{MSE}{S^2}}$

2) $20\log_{10}{\frac{S}{\sqrt{MSE}}}$ 

3) $10\log_{10}{\frac{S^2}{MSE}}$ 

Questi riferimenti no danno un risultato fedele alla percezione umana. Sarebbe necessario differenziare in base al contesto; tra l'altro, diversi errori più o meno "gravi" potrebbero avere lo stesso indice MSE, ed entrambe le metriche potrebbero essere influenzate da cambiamenti per noi impercettibili o 'non importanti'. 

### References

Powerpoint 03 - Operazioni su Immagini e su Matrici