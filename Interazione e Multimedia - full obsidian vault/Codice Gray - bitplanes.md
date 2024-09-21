2024-09-03 10:49

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Computer Science]]

## Codice Gray - bitplanes

Il codice Gray è usato per ovviare a un problema delle bit-map: ovvero che cambiando il valore di un pixel di poco, si potrebbero stravolgere tutti i piani connessi ad esso. 

Ad un numero "$a_{m-1} ... a_1 a_0$" a $m$ bit si assegna un numero di codice gray "$g_{m-1} ... g_1 g_0$". 

Questa assegnazione viene calcolata in questa maniera ($\oplus$ sta per l'operatore XOR):

$$g_i = a_i \oplus a_{i+1} \longrightarrow 0 \leq i \leq m-2$$
$$g_{m-1} = a_{m-1}$$
Il codice Gray gode della proprietà per cui ogni codeword differisce dalla precedente per un solo bit (Ha una distanza di Hamming uguale a 1). 

IN REALTA' la slide contiene un errore, non è un XOR tra $a_i$ e il suo successivo, ma uno XOR tra $a_i$ e $a_i$ shiftato di una posizione verso destra; mentre il primo bit (MSB) in codifica binaria rimane uguale.

*Esempio*:
	100101
	  100101
	Gray = 
	110111

>[!example]- Gray Code da 0 a 7 bit:
>
>| Decimale | Binario | Gray code |
| -------- | ------- | --------- |
| 0        | 000     | 000       |
| 1        | 001     | 001       |
| 2        | 010     | 011       |
| 3        | 011     | 010       |
| 4        | 100     | 110       |
| 5        | 101     | 111       |
| 6        | 110     | 101       |
| 7        | 111     | 100       |

#### Bitmaps vs Code Gray

I bitplanes delle immagini in code Gray risultano tra loro più "coerenti" se confrontati con i rispettivi in codice binario puro. Infatti aumentando l'intensità di 1, varierà un singolo bit (1 solo piano). 

Le transizioni bianco-nero nel singolo piano sono minori se si usa il codice gray. 

Tutto ciò porta ad una minore entropia, quindi ad una maggiore ridondanza, il che torna utile al moment della compressione, permette di usare meno memoria per memorizzare una immagine.

>[!warning] Attenzione:
>Dato che nelle due codifiche il significato assegnato ai bit è differente, alcune proprietà di una versione non valgono per l'altra. 
>
>Ad esempio: **se si azzerano dei bit in Gray code, si eliminano valori diversi** (e meno significativi) rispetto a quelli del binario puro, non funziona alla stessa maniera. 
>
>Nonostante i dettagli e il rumore tenderanno a concentrarsi nei piani più bassi, con il codice Gray **eliminare tali piani potrebbe portare ad aliasing** o artefatti indesiderati. 

### References

Powerpoint 11 - Bitplanes

[[Bit-Planes e Bitmap in ambito di elaborazione delle immagini]]

[[XOR - Operatori e Porte logiche]]