2024-08-26 21:06

<b>Status</b>: #UniCT 

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Computer Science]]

## Operazioni con le matrici in ambito di manipolazioni di immagini digitali

#### Forward mapping vs Inverse mapping

* Nel **forward mapping** scorriamo la immagine di input e per ogni pixel viene calcolata quella di output. 
* Per ogni pixel (w,v) di input si ottiene il valore nella posizione (x,y) della nuova immagine. T rappresenta la matrice affine (guarda sotto immagine delle operazioni affini)
* Crea buchi che dovranno essere colmati con [[Interpolazione di immagini digitali]]. 

$$[x,y,1] = [v,w,1]*T$$

* Inversamente, nell'**Inverse Mapping**, partiamo dall'immagine "vuota" di output, e per ogni pixel in output si calcola con le corrispondenti coordinate nell'immagine di input (bisogna sapere la grandezza dell'immagine di output per utilizzare inverse mapping)

$$[v,w,1] = [x,y,1] * inversa(T)$$

#### Operazioni e matrici affini

* Identità
* Scaling
* Rotazione
* Traslazione
* Shear orizzontale e Shear verticale

* Nota: le trasformazioni possono essere combinate moltiplicando tra di loro le matrici affini. GENERALMENTE, come per le matrici, non è una operazione commutativa (mettere prima le operazioni da attuare prima)

![[Operazioni affini matriciali.png]]

### References

Powerpoint 03 - Operazioni su Immagini e su Matrici