2024-09-05 22:35

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

<- Prev: [[Tre fasi del Pre-processing JPEG]] - Prima parte

Next->:[[Codifica finale JPEG]] - Terza parte

Tags: [[Interazione e Multimedia]]

## Trasformata del Coseno e Quantizzazione JPEG

[[Compressione JPEG]] - Parte 2

---

### 0.5 - Shift dei livelli di grigio

Prima di applicare la DCT ai miniquadretti ottenuti dalla suddivisione dell'immagine, ai 64 pixel di ciascun blocco viene sottratto un numero.

Questo numero equivale a $2^{n-1}$, dove $2^n$ equivale al numero massimo di livelli di grigio della immagine.

Ad esempio, se avevamo $256 = 2^8$ livelli, a ciascun pixel viene sottratto $128 = 2^7$. 

Sostanzialmente si attua uno **Shift dei livelli di grigio dell'immagine**, dove il valore medio diventa 0. 

---

### 1 - Trasformazione Discreta del Coseno

Il passo successivo è attuare una DCT (Trasformazione discreta del coseno) ai blocchi 8x8: è un algoritmo della famiglia delle trasformate di Fourier.
* Tale trasformazione "decorrela" al massimo i dati, offrendo il migliore risultato al momento della codifica. 
* Una immagine di 8x8 pixel può essere pensata come un vettore nello spazio a 64 dimensioni. 
* Quindi ogni immagine è la somma pesata di 64 immagini, nere con un solo valore in 1, dove i pesi rappresentano l'effetivo livello di luminosità dei pixels. 

Formula della Discrete Cosine Transform per un blocco di dimensioni $N \cdot N$; $N = 8$ nel JPEG.
$$F(u,v) = \frac{2}{N} \left[ \sum_{x=0}^{N-1} \sum_{y=0}^{N-1}C(u) \cdot C(v) \cdot f(x,y) \cdot \cos \frac{(2x+1)u \pi}{2 \cdot N} \cdot \cos \frac{(2y + 1) v \pi}{2 \cdot N}  \right]$$
**Inversa**:
$$f(x,y) = \frac{2}{N} \left[ \sum_{x=0}^{N-1} \sum_{y=0}^{N-1} C(u) C(v) F(u,v) \cos \frac{(2x+1)u \pi}{2 \cdot N}  \cos \frac{(2y +1)v \pi}{2 \cdot N} \right]$$
**Dove**:
$$C(u) = \begin{cases} \frac{1}{\sqrt{2}} \hspace{1cm} \text{for } u = 0 \\  \\1 \hspace{1cm}\text{otherwise} \end{cases} \hspace{2cm}C(v) = \begin{cases} \frac{1}{\sqrt{2}} \hspace{1cm} \text{for } v = 0 \\  \\1 \hspace{1cm}\text{otherwise} \end{cases} $$
Una diretta implementazione avrebbe una compelssità di $O(n^2)$, ma con la [[Fast Fourier Transform - FFT]] riusciamo ad avere una complessità di $O(n \log n)$. 

**Coefficienti**: saranno moltiplicati per le basi della **DCT** per ottenere il blocco precedente.
![[DCT.png||300]]

Nel risultato della DCT, il **coefficiente** **DC** sarà solo il primo in alto a sinistra, ed è un valore proporzionale alla luminanza dell'immagine. 

Gli altri 63 sono detti **coefficienti** **AC**.

---
### 2 - Quantizzazione

Riducendo il numero di livelli su cui operano i coefficienti della DCT ottengo un vantaggio al momento della codifica Huffman. 

Quindi si attua una quantizzazione in modo da aumentare il fattore di compressione, riducendo il numero di bit necessari per memorizzare un valore intero, perché ne riduciamo la precisione. 

Per la quantizzazione utilizziamo questa "formula", con: 
* $Q$: fattore di quantizzazione
* $F$: Un... numero?
* $F_{quantizzato}$: Valore ottenuto
$$F_{quantizzato} = \lfloor \frac{F}{Q} \rfloor$$
La quantizzazione **è un processo irreversibile**. 

Si è scoperto essere sconveniente utilizzare un solo fattore di quantizzazione per tutti e 64 le frequenze-coefficienti della DCT della luminanza, o per quantizzare i valori provenienti dalla DCT delle crominanze. 

Si adotta quindi per $F(i,j)$ un fattore di quantizzazione $Q(i,j)$ -> i fattori $Q(i,j)$ costituiscono la cosiddetta "tabella di quantizzazione". 

Un fattore di compressione maggiore comporta una maggire perdita di informazione. 

Si porteranno a zero diversi quadretti della DCT (quelli in alto a destra nel cubetto dei coefficienti) per poter favorire la codifica. 
![[quantizzazioneJpeg.png||300]]


### References

[[Fourier - Serie, Trasformata, applicazione]]

[[Discrete Fourier Transform]]


[Sito web sulla Trasformazione Discreta del Coseno in ambito di compressione JPEG](https://weitz.de/dct/)
[Video sulla DCT di Computerphile, professor Mike Pound](https://www.youtube.com/watch?v=Q2aEzeMDHMA)