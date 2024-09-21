2024-08-31 19:30

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Colours]]

## Spazi di colore YUV, YCbCr

Rappresenta una famiglia di spazi utilizzata spesso in ambito di immagini analogiche che tiene separati i valori di luminanza e di crominanza. 

Permette una larghezza della banda della crominanza ridotta; permette una mascheratura più efficiente di eventuali errori di trasmissione o artefatti di compressione. (sic, wikipedia)

Esempio: spazio $Y C_b C_r$.


>[!info] Luminanza-crominanza e compressione
>Gli spazi colore che rappresentano una componente luminosità e due componenti crominanza, vengono chiamate *"Rappresentazioni Luminanza-Crominanza".* Vedi: spazi YUV.
>La luminanza solamente fornisce una versione a scala di grigi dell'immagine, mentre gli altri valori aggiungono le informazioni cromatiche. 
>Considerando il fatto che **l'occhio è più sensibile alla luminanza** rispetto alla crominanza, è possibile "spendere" molti bit per registrare la luminanza, e risparmiare sulla crominanza. 


YUV con Y (luminanza) fissato a 0.5
![[YUV_UV_plane.png||200]]
![[spaziYUV2.jpg||250x100]]

E' possibile passare dall'ambito RGB a quello YUV mediante formule. 

La **luminanza** $(Y)$ può essere ottenuta in maniera lineare tramite le intensità luminose di RGB: una approssimazione più o meno fedele viene ottenuta tramite la somma pesata:

$$Y = 0.299R + 0.587G + 0.114B$$
I valori di **crominanza** sono definiti come la differenza tra il colore e "un bianco di riferimento della stessa luminanza opportunamente pesato" (sic) (?)

$$U = 0.564(B-Y) \longrightarrow \hspace{0.5cm} U = -0.169R -0.331G + 0.5B$$
$$V = 0.713(R-Y) \longrightarrow \hspace{0.5cm} V = +0.5R -0.419G -0.081B$$
Nel caso in cui RGB siano compresi tra 0 e 1, si otterranno in YUV valori compresi tra 0.5 e -0.5. 

Quando R=G=B,  U e V saranno uguali a 0, e is ottengono solo grigi (no crominanza). 

#### Da YUV a YCbCr

$Y$ rappresenta la **luminanza**; un asse che va da colori molto scuri, a colori molto chiari. 

Mentre $C_b$ e $C_r$ rappresentano la **crominanza** del Giallo-Blu e del Verde-Rosso.

>[!tip] Anticipazione sulla compressione 
>Una idea per utilizzare meno spazio in memoria per memorizzare immagini sarà di **tenere uguale il valore di** **luminanza**, e **quantizzare la crominanza con meno livelli**. 
>
>Due tipi di scelta dei nuovi campioni sono il ***Chroma Downsampling***, dove per ogni elemento da scegliere attuo una media di quelli pre-esistenti, e il ***Chroma Subsampling***, dove scelgo uno degli elementi pre-esistenti. 
>
>Si arriva così a memorizzare *un quarto* delle informazioni iniziali.

Nel caso in cui RGB siano interi compresi tra 0 e 255, si ottengono $C_b$ e $C_r$ attuando uno shift di $U$ e $V$; la $Y$ sarà uguale a $YUV$. In questo modo tutti e tre i canali $Y C_b C_r$ saranno compresi tra 0 e 255. 

$$Y = 0.299R + 0.587G+ 0.114B$$
$$C_b = U + 128$$
$$C_r = V + 128$$

$Y C_b C_r$ è molto utilizzato nella compressione.
### References

Powerpoint 08 - I Colori 

[Pagina wiki del modello YUV](https://it.wikipedia.org/wiki/YUV)

[[Compressione JPEG]]