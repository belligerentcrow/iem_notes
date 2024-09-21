2024-09-02 11:47

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Filtri di convoluzione in ambito di image processing - minimo e massimo, mediano, di media, gaussiano, outlier, olimpico

#### Filtro Minimo e Massimo

Considerato nella categoria di *order statistics*. 
Il **filtro di minimo** sostituisce il valore del pixel in output con il valore minimo di tutti i pixel nell'intorno definito dal kernel. Solitamente si ottiene così un incupimento dell'immagine.
Il **filtro di massimo** sostituisce il valore dei pixel in output con il valore massimo di tutti i pixel nell'intorno definito dal kernel. Solitamente si ottiene così uno schiarimento dell'immagine. 

---
#### Filtro Mediano 

Al centro sarà resistuito il valore mediano dell'intorno del pixel di grandezza equivalente alla grandezza del filtro; il valore che sta "in mezzo" ai valori di cui lo sto calcolando. 

Ottimo per rimuovere il "Rumore Sale-pepe", (dovuto spesso a errori di trasmissione dati)

$$\begin{bmatrix} 7 & 10 & 12 \\ 6 & 38 & 11 \\ 9 & 11 & 6\end{bmatrix} \longrightarrow 10$$

---
#### Filtro N-box, o Filtro di Media

Sono dei kernel $N \cdot N$, con $N$ dispari (in maniera tale da avere un centro unico del kernel), dove ogni elemento del kernel è pari a $\frac{1}{N^2}$, ovvero 1/numero di celle del kernel.

Ha l'effetto di sfocare le immagini. Più il kernel è grande, più saranno sfocate. 

$$3Box =\begin{bmatrix}\frac{1}{9} & \frac{1}{9} & \frac{1}{9} \\ \frac{1}{9}&\frac{1}{9}&\frac{1}{9} \\ \frac{1}{9} & \frac{1}{9} & \frac{1}{9}\end{bmatrix}$$

---

>[!tip] Differenze tra Filtro Mediano e Filtro di Media
>Inanzitutto, sono due cose diverse. In uno si prende la **mediana** *(il "valore di mezzo", NON la media)* dei pixel presenti, nell'altro si applica sostanzialmente una **media** dei risultati dentro l'intervallo del Kernel. 
>
>Poi, di solito i **filtri mediani danno risultati migliori rispetto ai filtri di media**, perché il filtro media tende a creare livelli di grigio che non erano presenti dentro l'immagine, mentre il filtro mediano lavora unicamente con valori "nativi", scegliendone uno.
>
>Il **filtro di media attenua tutte le frequenze spaziali indistintamente**, sfocando le immagini. 
>
>Il filtro mediano non deteriora i lati, ma elimina i picchi con base piccola rispetto al kernel. *(sic)*

---
#### Filtro N-binomiale o Filtro Gaussiano

Sono anch'essi filtri di blur/smussamento, e sono derivati dalla distribuzione binomiale; come approssimazione discreta della distribuzione gaussiana. 

Smussano meno aggressivamente del filtro di media, e hanno il pregio di smussare egualmente in tutte le direzioni, in maniera che il pixel al centro abbia "più peso/decisione" sul valore in output, e mano mano il peso diminuisca verso il bordo del kernel.

$$3Binomiale = \frac{1}{16} \cdot \begin{bmatrix} 1 & 2 & 1 \\ 2 & 4 & 2 \\ 1 & 2 & 1\end{bmatrix} \longrightarrow \begin{bmatrix} \frac{1}{16} & \frac{1}{8} & \frac{1}{16} \\ \frac{1}{8} & \frac{1}{4} & \frac{1}{8} \\ \frac{1}{16} & \frac{1}{8} & \frac{1}{16}\end{bmatrix}$$

---

#### Filtro Outlier
Il valore del pixel centrale viene confrontato con il valore della media dei suoi 8 vicini. 
Se il valore assoluto della differenza è maggiore di una certa soglia, allora viene sostituito dal valore medio, altrimenti non viene modificato. 
Non-lineare.

---
#### Filtro Olimpico
Da un dato intorno si scartano i valori massimo e minimo, e si fa la media del resto. Non-lineare

---

#### Filtri di Convoluzione di Sharpening

Servono ad incrementare la nitidezza di una immagine; aumentano il contrasto locale. E' sostanzialmente l'opposto del blur/sfocamento. 

La maschera funziona in modo da "rinforzare" i lati presenti nell'immagine. (Purtroppo, rinforza anche il rumore.)

Non è Energy-Preserving. 

$$\begin{bmatrix} -1 & 0 & -1 \\ 0 & 5 &0 \\ -1 & 0 & -1 \end{bmatrix}$$

### References

[[Introduzione agli operatori locali di manipolazione immagini]]

[[Maschere e operatori - Shift-Invarianti e Lineari - Kernel]]

[[Convoluzione e filtri convolutivi in ambito di image processing]]


[Pagina wiki del valore mediano](https://it.wikipedia.org/wiki/Mediana_(statistica))