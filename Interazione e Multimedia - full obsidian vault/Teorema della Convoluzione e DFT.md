2024-09-03 21:16

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Mathematics]], [[Interazione e Multimedia]]

## Teorema della Convoluzione nell'ambito della Trasformata Discreta di Fourier

Perché si decide di applicare operatori globali nell'ambito del dominio di Fourier?

>[!danger] Teorema della Convoluzione
>La trasformata della convoluzione di due segnali nel dominio spaziale equivale al prodotto delle trasformate dei due segnali.
>
>La convoluzione di due segnali nel dominio spaziale equivale all'antitrasformata del prodotto delle trasformate dei due segnali.

Quindi, prese due funzioni, $f$ e $h$; tale teorema fa corrispondere questa operazione nel dominio spaziale

$$g(x,y) = f(x,y) \otimes h(x,y) = \frac{1}{MN} \sum_{x=0}^{M-1} \sum_{y=0}^{N-1}f(m,n)\cdot h(x-m, y-n)$$
A questa operazione nel dominio delle frequenze:
$$G(u,v) = F(u,v) \cdot H(u,v)$$
E quindi:
$$g(x,y) = F^{-1}\cdot \{ F(u,v) \cdot H(u,v) \}$$

Il fatto è che la complessità per un segnale unidimensionale nel dominio delle frequenze è uguale a $O(n \log n)$, mentre nel dominio spaziale è $O(n^2)$. 

Quindi lavorare nel dominio delle frequenze conviene! Soprattuttto se il filtro assomiglia di grandezza all'immagine. Con maschere piccole diventa più efficiente il calcolo spaziale. 

[[Da maschera spaziale a filtro convoluzionale nel dominio Fourier]]


### References

[[Fourier - Serie, Trasformata, applicazione]]

[[Convoluzione e filtri convolutivi in ambito di image processing]]

[[Filtri di convoluzione]]

[[Convoluzioni - definizione e formule generiche]]