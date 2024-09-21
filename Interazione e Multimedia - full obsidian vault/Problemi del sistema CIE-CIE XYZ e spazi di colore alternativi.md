2024-08-31 17:45

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Colours]]

## Problemi del sistema CIE-CIE XYZ e spazi di colore alternativi - LAB, Luv, LCh, HSV

Non inclusi in questa nota: [[RGB e CMY - il modelli di colore]], [[Spazi di colore YUV, YCbCr]]. 

Il grande problema del diagramma CIE-CIE XYZ è che esso **non è dotato di uniformità percettiva.**

Sostanzialmente, considerando due colori, $C_1$ e $C_2$, e considerando la loro distanza $\Delta C$, vorremmo che avendo altri due colori $C_3$ e $C_4$ che tra di loro siano distanti $\Delta C$ la differenza di percezione tra di essi sia uguale a quella tra i primi due colori, ma non è così.  

Nel 1976 sono stati standardizzati altri due spazi di colori che colmano questa mancanza, ovvero `CIE L*u*v*` e `CIE L*a*b*`. 

*Nota: L'osservatore analitico in genere è CIE 1931, mentre per oggetti grandi o architettonici, è CIE 64. L'illuminante classico per tutti gli usi rimane CIE D65.*

I modelli del colore più utilizzati in Image Processing sono specificati in diversa maniera a seconda dell'utilizzo:

* Hardware di acquisizione - RGB
* Hardware di restituzione - RGB, CMY
* Immagini stesse e la loro trasmissione - YUV, YIQ
* Compressione - YCbCr
* Elaborazione o analisi mediante trattamento del colore - RGB, HSI, HSV, LUV, ...) 

### - CIE LAB - 1976

Percettivamente uniforme. I tre parametri sono le trasformazioni dei tre valori del tristimolo. Le differenze di colore sono definite come distanza tra due punti dello spazio L* a* b*. Funziona come una sfera; in ogni sezione, la luminanza è uniforme. Uguali differenze *corrispondono* a uguali differenze di percezione.

$L =$ Luminanza.
$A =$ Crominanza - Asse Verde-Rosso
$B =$ Crominanza - Asse Blu-Giallo

![[Lab color space.png||250]]
Attraverso le seguenti formule, si può passare dallo spazio CIE XYZ allo spazio CIE LAB:
$$L^* = 116(\frac{Y}{Y_n})^{\frac{1}{3}}-16$$
$$a^* = 500 \cdot [(\frac{X}{X_n})^{\frac{1}{3}} - (\frac{Y}{Y_n})^{\frac{1}{3}} ]$$
$$b^* = 200 \cdot [(\frac{Y}{Y_n})^{\frac{1}{3}} - (\frac{Z}{Z_n})^{\frac{1}{3}} ]$$
* Dove $\frac{X}{X_n}$, $\frac{Y}{Y_n}$ e $\frac{Z}{Z_n}$ sono maggiori di $0.01$ e $X_n$ , $Y_n$ , e $Z_n$ sono le coordinate del punto bianco. 

La metrica CIELAB si ottiene dalla seguente formula:

$$\Delta E_{ab}^* = \sqrt{(\Delta L^*)^2 + (\Delta a^*)^2 + (\Delta b^*)^2}$$
--- 
### - CIE L* u* v* - 1976

$L =$ Lightness
$U =$ Asse Verde-Rosso
$V =$ Asse Blu-Giallo

---
### - L* C* h* 

![[LCh color space.png||250]]
Creato per facilitare la notazione del colore. 

$L =$ **Lightness** *(altezza della sezione corrispondente rispetto alla sfera totale) (scrivibile in percentuale)*
$C =$ **Chromaticity**/Crominanza (Saturazione) *(profondità dal centro di ogni sezione)(scrivibile in percentuale)*
$h =$ **Hue**/Rotazione di colore in base allo spettro. *(angolo di ogni sezione/cerchio)(scrivibile in gradi)*

$$Chroma^* = \sqrt{(a^*)^2 + (b^*)^2} \hspace{1cm} hue = tan^{-1}(\frac{b^*}{a^*})$$

---
### - HSV / HSI - modello del pittore

Consideriamo lo spettro sulla scala di 'contributi di energia' riflessa per ciascuna lunghezza d'onda. 
* La lunghezza d'onda per la quale si ha il picco è responsabile del "colore percepito" o **Hue**. Descrive che colore è presente, è correlato alla lunghezza d'onda dominante della sorgente di luce. 
* Il rapporto $\frac{e_{picco}-e_{media}}{e_{picco}+e_{media}}$ è la **Saturazione**. Esprime quanto è vivo il colore (molto forte, pastello, vicino al bianco) e può essere correlato alla 'purezza' o alla distribuzione dello spettro della sorgente.
* $e_{media}$ è proporzionale al contenuto dello spettro della radiazione: può essere considerata una misura della *luminosità*, detto anche **Valore**. (*da' un contributo "bianco" al colore percepito*). Valuta la sensazione luminosa che arriva all'occhio, legata all'intensità della luce, è correlata alla luminosità della sorgente. 

![[spazio di colore HSV.png||250]]

Per ogni Hue è come se il triangolo ruotasse sull'asse dei grigi. 

---
### - Atlante Munsell e Solido dei Colori

![[Munsell color system.png||250]]

Si basa sul modello del pittore. E' un sistema basato su 
* **Tinta / Hue**: Rosso, blu giallo... cambia ruotando l'angolo
* **Luminosità**: colori chiari e colori scuri; cambia verticalmente
* **Saturazione**: colori brillanti e colori opachi. cambia a partire dal centro verso l'esterno. 

### References

[Questo scritto, "Color Spaces for Human Beings"](https://www.boronine.com/2012/03/26/Color-Spaces-for-Human-Beings/)

[Il video sui colori di Juxtopposed](https://www.youtube.com/watch?v=srRI7yMjGz0)

Powerpoint 08 - I Colori
