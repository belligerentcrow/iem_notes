2024-08-31 20:03

<b>Status</b>: #UniCT 

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Computer Science]], [[Colours]]

## Compressione JPEG

Uno dei motivi per cui funziona così bene è perché è un tipo di compressione *"Lossy"*: ovvero l'algoritmo accetta di perdere delle informazioni dell'immagine per poter usare meno memoria per conservarla. 

La conseguenza di questo è che in una compressione Lossy l'immagine iniziale e quella ottenuta in seguito alla compressione **non** sono uguali, ed è un processo generalmente irreversibile. 

Lo standard Jpeg è stato creato per la compressione delle immagini. E' stato inizialmente basato sulla **DCT - Discrete Cosine Transform**.

### Passi fondamentali della codifica JPEG
**[[Tre fasi del Pre-processing JPEG]]**
1. Color transform, da RGB a YCbCr - [[Spazi di colore YUV, YCbCr]] - 
2. Sottocampionamento della crominanza - 1 ogni 4
3. Suddivisione della immagine in quadretti

*Shift dei livelli di grigio dell'immagine*

**[[Trasformata del Coseno e Quantizzazione JPEG]]**
1. Discrete Cosine Transform
2. Quantizzazione - [[Teoria del campionamento e della quantizzazione]]
**[[Codifica finale JPEG]]**
1. DC Coefficient Encoding
2. Zig-zag ordering of AC Coefficients
3. Entropy Coding - [[Codifica di Huffman]]


### References

[[Memorizzazione digitale dei colori e scorciatoie]]

[[Spazi di colore YUV, YCbCr]]


[Video riguardo sulla compressione JPEG di Reducible](https://www.youtube.com/watch?v=0me3guauqOU)

[Video sui file JPEG, computerphile, pt. 1](https://www.youtube.com/watch?v=n_uNPbdenRs)

[Video sulla DCT di Computerphile, professor Mike Pound, pt 2](https://www.youtube.com/watch?v=Q2aEzeMDHMA)

Powerpoint 13 - Compressione