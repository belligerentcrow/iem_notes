2024-08-30 14:36

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Computer Science]]

## Teoria del campionamento e della quantizzazione

Per digitalizzare un segnale, occorre traslarlo da uan rappresentazione reale a un numero discreto. Quindi scegliere dei campioni di rappresentazione, e scegliere *come sceglierli*.  

Dobbiamo scegliere come dividere dei range, e appiattiamo quelli di quella fascia ad uno stesso quanto/elemento: se ci sono decimali si attua un arrotondamento. 

Per ogni range, dove passa il segnale, segno lì il valore del segnale, in modo da quantizzarlo. Con che criterio scelgo la frequenza di campionamento, o la grandezza dei range?


>[!warning] Errori nel campionamento
>* Un campionamento **troppo basso** farebbe perdere dettagli e informazioni $\longrightarrow$ ma bisogna anche trovare una via di mezzo per non avere un database pesantissimo
>* Un campionamento **troppo alto** crea degli artifici non presenti nell'immagine originale, anche detto fenomeno di *aliasing*
>

[[Nyquist-Shannon Rate -- Teorema del campionamento e quantizzazione]]

> [!tldr] Definizione del Nyquist Rate
> Si definisce Nyquist rate il doppio della più alta frequenza di un segnale continuo e limitato. 

Per attuare un campionamento che funzioni (una ricostruzione fedele) mi serve sapere quanti *campioni* mi servono. Tale numero sarà strettamente più grande della frequenza di Nyquist/Nyquist Rate. 

Quindi per fare un buon campionamento occorre un numero maggiore del Nyquist Rate, che è a sua volta il doppio della frequenza massima. 

```
NumeroCampioni > NyquistRate = 2 * FrequenzaMassima
```

Considerare il fatto che spesso non partiamo da segnali continui ma da altre immagini di tipo digitale.

Se per esempio abbiamo un disegno 720x720, esso presenta tratti fini (es: 4px) e tratti grossi (es: 6px). Se preserviamo i tratti fini automaticamente preserveremo anche i tratti grossi; ovvero così ci basiamo sulla frequenza più alta. 

Da una immagine 720x720px con dettaglio più piccolo 4px, dividiamo l'intervallo in $\frac{720}{4} = 180$ tratti, la nostra frequenza più alta. 

Il doppio di questa frequenza sarà il Nyquist Rate: quindi $360$. 
Prenderemo quindi solo 360 campioni (avremo in uscita una immagine 360x360px) e saranno sufficienti per ricostruire l'immagine originale fedelmente. 

Nota: i due tipi di tratto corrispondono alle onde della trasformata di Fourier.
### References

[[Aliasing nella digitalizzazione delle immagini]]

[[Fourier - Serie, Trasformata, applicazione]]

[[Quantizzazione di un segnale continuo]]
