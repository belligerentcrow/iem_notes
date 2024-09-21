2024-08-29 16:38

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Colours]]

## Digitalizzazione immagini - Fotocamere digitali, CCD - Charged Coupled Device, CFA - Color Filter Array

I dispositivi di digitalizzazone a **Charged Coupled Device** sono i più diffusi in ambito delle macchine fotografiche digitali, nelle quali essi sono disposti in una matrice: sono dei dispositivi elettronici che tramite dei sensori che catturano la luce, assumendo una carica positiva. 

Nota: un CCD può contenere lo stesso numero di recettori che contiene la fovea in 1,5x1,5mm$^2$ solo utilizzando 5x5mm$^2$! *(Al tempo della scrittura, circa 2022?)*

Il numero di celle per area di esposizione è un parametro di qualità della macchina fotografica e si misura in **MEGAPIXEL** -> controllare slide sulla risoluzione. 

Dopo aver acquisito le cariche, i dati sono trasferiti nella memoria, attraverso tante fasi quante sono le colonne della matrice; infatti vengono trasferite verticalmente memorizzando una colonna alla volta. 

Il primo prototipo di macchina fotografica digitale fu creato dalla Kodak nel 1975; pesava 4 kg, aveva una risoluzione di 0,01 Megapixel, scattava immagini di 100x100 pixel, e aveva un tempo di memorizzazione di 23 secondi. 

### Color Filter Array e Bayer Pattern

Ogni cella memorizza solo un colore per volta; è necessario un sistema per ordinare le celle in un determinato pattern in maniera tale da ottenere una alta qualità di una immagine. Gli altri due colori, non memorizzati in quella specifica cella, sono stimati grazie alla [[Interpolazione di immagini digitali]].

Il migliore pattern di Color Filter Array è considerato il **Bayer Pattern.** Fu proposto nel 1976, ed utilizzato ampiamente dal 1980. 

Ha un rapporto 1:2:1 tra R:G:B; i pixel verdi sono disposti sulle diagonali. **Privilegia il verde** poiché è il recettore più importante e esteso per la visione umana. Una immagine in Bayer Pattern è conservata nel formato .raw. 

Questo pattern viene sovrapposto al fotodiodo del sensore, il quale memorizzerà il valore del colore del quale ha il filtro. Come detto prima, **gli altri due colori saranno interpolati dai valori vicini**, tramite interpolazione; **Nearest Neighbour/Replicazione**, **Bilineare**, **Bicubica**, o d'altro tipo. 

Importante: le "maschere" **non sono effettivamente colorate**: i fotodiodi catturano un valore che sarà identificato su scala di grigio; conserva solo uno dei tre elementi della terna. 

Per ottenere la immagine a colori, bisogna applicare un algoritmo che fornirà per ogni elemento dell'immagine la terna di colori. Questo processo si chiama **demosaicking**. 
### References

Powepoint 04 - Acquisizione delle immagini digitali

[[Risoluzione in ambito di immagini digitali]]