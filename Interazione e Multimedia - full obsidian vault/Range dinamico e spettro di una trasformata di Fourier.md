2024-09-03 18:51

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Mathematics]], [[Interazione e Multimedia]]

## Range dinamico nel contesto dello spettro di una trasformata di Fourier

Visualizzando lo spettro di Fourier come una immagine di intensità, esso manifesta una dinamica molto più grande di quella riproducibile su un display, in cui solo le parti luminose diventano visibili. 

Per esempio, lo spettro dell'immagine di **Lena** varia da circa $0$ a $6.47\cdot 10^6$.
Effettuando la normalizzazione per visualizzarlo tra 0 e 256, pochissime parti molto luminose sono visibili. 

A ciò si può ovviare mediante una compressione logaritmica, visualizzando, invece dello spettro, una funzione del tipo
$$D(u,v) = c \log_2 (1 + F(u,v))$$
con $c$ costante di scala, che va scelta per far ricadere i valori nel range voluto. La compressione logaritmica avrà tutti i valori dell'intervallo $[0, 255]$, consentendo di visualizzare di più. 

L'ampiezza della visualizzazione dipende dal fatto che una certa struttura periodica è presente nell'immagine. 
### References

[[Scomposizione della trasformata di Fourier - Fase e Spettro]]

[[Discrete Fourier Transform]]

[[Fourier - Serie, Trasformata, applicazione]]