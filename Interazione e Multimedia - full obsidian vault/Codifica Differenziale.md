2024-09-05 17:31

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Computer Science]], [[Interazione e Multimedia]], [[Algorithms]]

## Codifica Differenziale

E' un algoritmo di compressione, di tipo lossless.

L'idea è che, se la sequenza dei valori varia lentamente, invece di registrare i valori, registriamo quello iniziali, e le successive variazioni di esso nella sequenza.

Esempio: in una sequenza del tipo:
$$10, 15, 20, 10, 50$$
Invece di annotare i numeri annoteremo:
$$10, +5, +5, -10,+40$$
Si può dimostrare che per le immagini, la sequenza delle differenze ha meno entropia dei valori originali (concetto di *coerenza interna*).
### References

[[Memorizzazione digitale dei colori e scorciatoie]]

[[Compressione Lossless]]