2024-09-03 19:20

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Mathematics]], [[Interazione e Multimedia]]

## Tre Proprietà della Trasformata Discreta di Fourier - Separabilita, Traslazione, Valor medio

### Separabilità

La trasformata discreta di Fourier **può essere scritta separatamente**: Il vantaggio di ciò è che la trasformata, $F(u,v)$, può essere ottenuta **applicando in due passi successivi la trasformata 1-D**. 

Quindi:
$$F(u,v) = \frac{1}{M} \sum_{x=0}^{M-1} \hspace{0.2cm}k(x,v)\hspace{0.2cm} e^{\frac{-i2 \pi ux}{M}}$$
Dove $k(x,v)$ è la seconda parte della DFT, ovvero:
$$k(x,v) = \left[ \frac{1}{N} \sum_{y=0}^{N-1}  f(x,y) \hspace{0.2cm}e^{\frac{-i 2 \pi vy}{N}} \right] $$

### Traslazione

Nel caso bidimensionale è utile attuare uno shift sulla trasformata prima di agire su di essa, "shiftandola" sostanzialmente di metà del suo valore massimo, quindi usualmente $128$, in modo che la metà dei valori della funzione corrisponda con lo zero in modo da avere metà valori possibili sopra e metà sotto.

*(Ad esempio, vecchio range: $[0, 255]$, nuovo range $[-128, 128]$.)* 

In questo modo i dati vengono traslati in maniera tale che $F(0,0)$ risulti il centro del rettangolo delle frequenze definito tra $[0, M-1]$ e $[0,N-1]$. 

Questo **non modifica la magnitudo della trasformata**. *(Che dipende dalla frequenza e altezza, quindi?)*

Queste proprietà vengono utilizzate per una migliore visualizzazione dello spettro. 

### Valor Medio

ll valore della trasformata nell'origine, ovvero nel punto $F(u,v) = (0,0)$ è uguale alla media di $f(x,y)$. Il valore della Trasformata $_{(discreta)}$ di Fourier di una immagine $f(x)$ nell'origine è uguale alla media dei valori di grigio contenuti nell'immagine. 

Questo valore prende anche il nome di ***componente continua*** o **DC**. 

Si calcola:
$$F(0,0) = \frac{1}{NxN} \sum_{x=0}^{N-1} \sum_{y=0}^{N-1}$$
e:
$$\overline{f}(x,y) = \frac{1}{NxN} F(0,0)$$
### References

[[Fourier - Serie, Trasformata, applicazione]]

[[Discrete Fourier Transform]]

[[Scomposizione della trasformata di Fourier - Fase e Spettro]]