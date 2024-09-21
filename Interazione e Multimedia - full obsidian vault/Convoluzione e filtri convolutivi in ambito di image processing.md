2024-09-02 11:28

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Mathematics]]

## Convoluzione e filtri convolutivi in ambito di image processing

[[Convoluzioni - definizione e formule generiche]]

La convoluzione in ambito di elaborazioni di immagini è un processo che **prende in input una immagine e una maschera/kernel, e restituisce una nuova matrice di valori**. Applicare un **filtro lineare e shift-invariante ad una immagine** è equivalente a **calcolare la convoluzione del kernel** del filtro **con l'immagine**.

Questo è perché i filtri lineari e invarianti vengono anche chiamati ***filtri convolutivi***.

Se ingrandiamo il kernel, ogni pixel in output verrà influenzato da più pixel intorno ad esso nella immagine di partenza. 

> [!tip] Energy Preserving
> Quando la somma di tutti i valori all'interno del kernel fa 1, si dice che un filtro convolutivo sia ***Energy Preserving***. 

Una convoluzione con matrice la cui somma è 1 (energy preserving) e i cui valori sono frazioni comprese tra 0 e 1 funziona da "blurrer" perché attua una "media" dei valori (che può essere pesata, ad esempio la media gaussiana, o non pesata, dove ogni cella del kernel è di fatto una frazione di 1/numero di celle del kernel)

Esempio: usare come maschera una matrice 5 x 5 con valori più grandi al centro e più piccoli ai margini, è lo sfocamento/blur *gaussiano*. 

Invece, un kernel per esempio 3x3 che ha valori negativi sui bordi e un valore molto positivo al centro; è Energy-Preserving, e attua un effetto di *sharpening*.

Il kernel "Sobel" ha valori negativi a sinistra e valori positivi a destra, e al centro una colonna di 0. Non è Energy-Preserving e la somma totale dei valori del kernel è uguale a 0. 

L'effetto ottenuto è una detection of borders; perché l'unico caso in cui al centro si possa trovare un valore positivo è se una regione è molto chiara e una molto scura. *Nota: i valori in questo caso potrebbero essere negativi; potrebbe risolversi prendendo il valore assoluto.*

> [!check] Valori del Kernel
> In generale, detto in termini informali, il **valore all'interno delle single celle del Kernel** indica ***di quanto/come contribuisce*** il pixel su cui esso si viene a posare/che esso maschera ***per il valore in output***. 

### References

[[Maschere e operatori - Shift-Invarianti e Lineari - Kernel]]

[[Convoluzioni e risoluzione del problema dei bordi]]

[[Noise-rumore nel contesto di image processing]]\

[[Filtri di convoluzione]]

[[Filtri di Convoluzione - Estrazione dei contorni di una immagine]]




[[Introduzione agli operatori locali di manipolazione immagini]]

[[Operatori Invarianti o Non-invarianti per Traslazione]]

[[Operatori lineari in ambito matematico]]


Powerpoint 10 - Convoluzioni

[Video di 3Blue1Brown sulla Convoluzione (alhamdulillah)](https://www.youtube.com/watch?v=KuXjwB4LzSA)

[Lecture di 3Blue1Brown specifico sulla convoluzione in ambito di image processing (subhanallah)](https://www.youtube.com/watch?v=8rrHTtUzyZA)