2024-09-03 09:24

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Filtri di Convoluzione - Estrazione dei contorni di una immagine

Sono filtri che aiutano ad estrarre i contorni di una immagine, che risaltano come discontinuità locali della luminanza. 

Otteniamo in output immagini in cui sono **preservate le variazioni di luminanza** brusche, ed eliminate tutte le altre informazioni. Quindi più una immagine è "omogenea", meno vedremo applicando questo filtro. 

Considerando dei lati in 1D come *Ramp edge, Step edge, Line edge, Roof edge*; calcolando la loro derivata prima scopriamo che i lati sono in corrispondenza dei massimi. Quindi con un filtro calcolante la derivata prima posso identificare i lati quando li incontro.   

$$Sobel_x =\begin{bmatrix}-1 & -2 & -1 \\ 0&0&0 \\ 1 & 2 & 1\end{bmatrix} \hspace{1.5cm} Prewitt_x=\begin{bmatrix}-1 & -1 & -1 \\ 0&0&0 \\ 1 & 1 & 1\end{bmatrix}$$

L'effetto ottenuto è una detection of borders; perché l'unico caso in cui al centro si possa trovare un valore positivo è se una regione è molto chiara e una molto scura. *Nota: i valori in questo caso potrebbero essere negativi; potrebbe risolversi prendendo il valore assoluto.*

Si ottengono risultati migliori con algoritmi non lineari più sofisticati per il calcolo della grandezza del gradiente (assomiglia al magnitudo di cui sotto); e si ottengono con strategie più "intelligenti": *Fuzzy*, Algoritmo di Canny, tecniche di Back-tracking, etc.

>[!tip] Verticali
>Possiamo ottenere i filtri di identificazione bordi **in verticale** semplicemente **ruotando i due filtri sopra di 90° antiorari**. 
>
>In questo caso li chiamiamo $Sobel_y$ e $Prewitt_y$ (perché in questo caso sono paralleli all'asse $y$.)

#### Magnitudo

I due kernel di identificazione bordi, che offrono i valori dei lati orizzontali e verticali, possono essere combinati mediante la seguente formula:
$$magnitudo = \sqrt{sobel_x^2+sobel^2_y}$$ 
(O Prewitt, è identico) 
La matrice ottenuta segna i valori non nulli per i pixel *"di lato"*. Se si fissa una soglia adeguata,  si può ottenere una matrice binaria che identifica i confini. 

#### Laplaciano 

Derivata seconda: se ho un segnale monodimensionale e calcolo la derivata seconda, scopriamo che in corrispondenza del lato essa passa per lo zero. 

Quindi esiste un filtro per calcolare la derivata seconda; è detto Laplaciano. E' Energy-Preserving.
$$Laplaciano = \begin{bmatrix}-1 & 0 & -1 \\ 0&4&0 \\ -1 & 0 & -1\end{bmatrix}$$
**Zero-crossing**: è il punto dove il segno di una funzione matematica cambia (ad esempio passa da negativo a positivo); graficamente, è dove il suo grafico intercetta l'asse delle ascisse. 
In questo caso, si arriva allo Zero-crossing quando accade che rispetto al punto in questione (al centro) ci sia nel suo intorno un valore positivo e un valore negativo. 

### References

[[Filtri di convoluzione]]

[[Convoluzione e filtri convolutivi in ambito di image processing]]

[[Convoluzioni - definizione e formule generiche]]

Powerpoint 10 - Convoluzioni