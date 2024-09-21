2024-08-31 20:07

<b>Status</b>: #UniCT 

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Colours]], [[Computer Science]], [[Mathematics]]

## Memorizzazione digitale dei colori e relative scorciatoie - Palette indicizzate e Look-up Tables

Tecnicamente, utilizzando uno schema ad 8 bit per componente di colore (16 milioni in totale) ci vorrebbero 24 bit per rappresentare ogni singolo pixel. ***Troppo costoso***.

Quindi, per riuscire a ridurre la quantità di memoria utilizzata per memorizzare immagini, si sfruttano alcune proprietà particolari dell'occhio umano e delle immagini stesse.

Per esempio, una cosa importante da ricordare è che i nostri occhi sono molto più sensibili alla luminanza che alla crominanza. 

Altra idea; le immagini "naturali" hanno una proprietà di *coerenza interna*: ovvero in generale è più probabile che accanto a un colore ci sia un colore molto simile ad esso, rispetto ad un cambiamento repentino. 

Quest'ultima idea porta ad uno dei metodi: adottare la modalità a ***Colori Indicizzati / Indexed Color*** o a ***Palette*** o a ***Look-up Tables***. 

### Palette indicizzata

L'idea alla base è che, se una immagine contiene più volte uno stesso colore, allora **evito di salvare quello stesso colore più volte**, sarebbe una ridondanza. 

**Salvo solo una "tavolozza" dei colori presenti nell'immagine**, e per ogni elemento dell'immagine, pongo un indicazione a quale elemento della tavolozza corrisponde; userò meno bit. 

Esempio ridotto: per una immagine 3x3px a 4 colori dove uno si ripete 5 volte e un altro 2, senza indicizzare devo usare 216bit. Indicizzando, ne uso solo 114. 

I software commerciali e alcuni formati di compressione (gif) utilizzano una palette di 256 colori. 

Se usiamo una palette customizzata per l'immagine da comprimere: se sono presenti meno di 256 colori, ci saranno delle ridondanze. 

Altrimenti, se nella immagine originale ci sono più di 256 colori, alcuni di essi verranno "ridotti" scegliendo 256 rappresentanti che garantiscano una buona qualità visiva. (Ne esistono di standard: MAC, WINDOWS, WEB_SAFE, etc)

#### Indicizzazione con la minima entropia - (NP-Hard)

Se ai pixel adiacenti assegno indici numericamente vicini, la differenza tra di essi sarebbe più piccola. Questo diminuirebbe l'entropia numerica dell'immagine, garantendo un migliore rapporto di compressione quando si usano formati con *Codifica Differenziale* (vedi più avanti). 

Purtroppo, trovare l'entropia minima è un problema NP-Hard; per $M$ colori dovrei cercare tra $M!$ possibili ordinamenti. Quindi ci accontentiamo di soluzioni *vicine* all'ottima.

### References

[[Codifica di Huffman]]

[[Digitalizzazione immagini, CCD, CFA]]

[[Spazi di colore YUV, YCbCr]]

[[Introduzione al colore in ambito digitale]]

[[Compressione JPEG]]

[Video riguardo la digitalizzazione delle immagini e sulla compressione di Reducible](https://www.youtube.com/watch?v=0me3guauqOU)



Powerpoint 08 - I Colori 

