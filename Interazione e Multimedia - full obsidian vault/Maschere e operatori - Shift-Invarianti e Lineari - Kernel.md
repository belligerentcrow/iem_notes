2024-09-02 09:25

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Mathematics]]

## Maschere e operatori - Shift-Invarianti e Lineari - Kernel

Ad un operatore lineare e shift-invariante corrisponde una maschera. 
$$\iff$$
Vale anche il viceversa; ad una maschera corrisponde un operatore.

*Nota: gli operatori lineari+shift invarianti si distinguono e possono essere identificati tramite la loro point spread function, ovvero la propria risposta all'impulso. Vedi introduzione agli operatori locali*

>[!example] Esempio di Maschera dell'Operatore / Maschera di Convoluzione / Kernel
>L'operazione che preso un impulso $A$ lo trasforma nell'impulso $B$
>
> $$A =\begin{bmatrix} 0 & 0 & 0 \\ 0 & 1 & 0 \\ 0 & 0 & 0\end{bmatrix} \longrightarrow B = \begin{bmatrix} 0 & 0 & 0 \\ 0.5 & 0 & 0.5 \\ 0 & 0 & 0\end{bmatrix} $$
> Tale ***Point Spread Function*** (o *'risposta all'impulso'*) definisce completamente un operatore lineare e invariante per traslazioni $F$. 

Spesso un operatore su una immagine prende il nome di ***Filtro***. 

La matrice che descrive la risposta all'impulso si chiama ***Kernel*** o ***Maschera dell'Operatore***; è anche detta ***Maschera di Convoluzione di F*** per *Ragioni (?)*

* La **grandezza del Kernel varia**, fino a poter diventare infinita
* Tuttavia, per ragioni pratiche, di solito si usano solo **kernel con dimensioni finite** 
* **Più un Kernel è grande, maggiore è la complessità di filtraggio**; ciò dipende anche dalle dimensioni dell'immagine filtrata

### References

[[Introduzione agli operatori locali di manipolazione immagini]]

[[Operatori lineari in ambito matematico]]

[[Operatori Invarianti o Non-invarianti per Traslazione]]

Powerpoint 10 - Convoluzioni