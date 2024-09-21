2024-09-05 18:00

<b>Status</b>: #UniCT 

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Colours]], [[Algorithms]]

## Algoritmo di riquantizzazione

Si tratta di un algoritmo abbastanza semplice per attuare una forma di compressione lossy: si tratta di ridurre il numero di livelli della quantizzazione, in maniera da poter risparmiare bit per pixels.

Sostanzialmente si "dimenticano" $n$ bit significativi per ogni canale. Esempio:
* **Rosso**: Da $8$ bit ne conserviamo $4$
* **Verde**: Da $8$ bit ne conserviamo $6$ *(ne conserviamo di più in verde perché l'occhio è molto sensibile al verde, che copre una porzione estesa dello spettro visibile grazie ai coni nella fovea)*
* **Blu**: Da $8$ bit ne conserviamo $2$. 

Rimuoviamo così il 50% dei bit. E dato che stiamo riducendo l'entropia, la compressione di Huffman sarà più efficiente.

Tuttavia, si perde molto di "qualità", intesa come minor differenza possibile tra originale e compressa; le differenze qui sono piuttosto visibili.

### References

[[Compressione Lossy]]

[[Quantizzazione di un segnale continuo]]

[[Nyquist-Shannon Rate -- Teorema del campionamento e quantizzazione]]

[[Quantizzazione uniforme e non-uniforme logaritmica]]

[[Teoria del campionamento e della quantizzazione]]
