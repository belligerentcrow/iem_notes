2024-08-31 13:25

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Quantizzazione uniforme e non-uniforme in ambito di rappresentazione immagini

Di solito la quantizzazione degli scanner e delle fotocamere è non-uniforme e logaritmica. Ovvero da' *"più peso"* a certi livelli rispetto ad altri, in maniera tale che sia più probabile che certi valori cadano in un determinato livello mentre riduce la probabilità di altri.

Questo permette di assegnare più livelli nell'area dei toni scuri, e meno livelli meno alle aree chiare.

La funzione di correzione della quantizzazione logaritmica viene a volte chiamata "Gamma correction". Il valore gamma standard è $\gamma = 2.2$. Questo valore è usato generalmente per quantificare il contrasto in apparecchiature televisive o fotografia o display.  

>[!tip] Formula della quantizzazione uniforme
> * Con range in ingresso $[0... N-1]$
> * E range in uscita $[0...K-1]$, essendo $K \leq N$
> * Se $L$ è il livello di ingresso (un intero), il livello $L'$ dopo la quantizzazione sarà 
> $$ L' = \frac{(L \cdot K)}{N} $$

Per esempio, se dovessimo restringere il range da 0 a 255 in 8 livelli da 0 a 7; 

* Il livello 10 diventa $\frac{(10 \cdot 8)}{256} = 0$
* Il livello 39 diventa $\frac{(39 \cdot 8)}{256} = 1$
* Il livello 150 diventa $\frac{(150 \cdot 8)}{256} = 5$
* Il livello 230 diventa $\frac{(230 \cdot 8)}{256} = 7$

>[!check] Formula della quantizzazione non-uniforme
>* Con range in ingresso $[0... N-1]$
>* Con range in uscita $[0... K-1], essendo $K \leq N$
>* Con $L$ livello di ingresso precedente (intero), allora il livello $L'$ dopo la quantizzazione sarà
>$$L' = f(L,N,K)$$
>
>Dove $f$ è la funzione che definisce lo schema di riquantizzazione. 
>
>La più comune è la quantizzazione logaritmica, dove:
>$$f(L,N,K) = \frac{log_2 L \cdot K}{log_2 N} $$
>

* Nel caso più comune, N = 256, $log_2 N = 8$, e $K = 8$, e quindi in generale $log_2 N = K$; quindi: $$f(L, N, K) = log_2 L$$
### References

[[Teoria del campionamento e della quantizzazione]]

[[Quantizzazione di un segnale continuo]]

[Pagina Wiki della correzione Gamma](https://it.wikipedia.org/wiki/Correzione_di_gamma)
