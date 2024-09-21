2024-08-27 19:33

<b>Status</b>: #LaTex #UniCT 

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Formule per valutare qualità di un algoritmo di manipolazione immagini

* **Mean Square Error** - è usato per valutare l'errore quadratico medio tra due immagini. Minore è il valore stimato, minore è la differenza tra di esse. 

$$MSE = \frac{1}{MN}\sum_{x=1}^M \sum_{y=1}^N [I'(x,y)-I(x,y)]^2$$
* **Peak Signal to Noise Ratio** - è usato per misurare la qualità di un algoritmo di compressione di una immagine, la qualità di una immagine rispetto all'originale. Maggiore è questo valore, maggiore sarà la somiglianza con l'originale. Dipende dall'MSE. Non è il migliore algoritmo per questo, ma è il più utilizzato, anche a causa della facilità di calcolo. 
  S eqivale al max pixel value delle immagini in questione.

$$PSNR = -10log_{10} \frac{MSE}{S^2}$$ $$PNSR=20log_{10}(\frac{S}{\sqrt{MSE}})$$$$PSNR =10log_{10}(\frac{S^2}{MSE})$$

### References