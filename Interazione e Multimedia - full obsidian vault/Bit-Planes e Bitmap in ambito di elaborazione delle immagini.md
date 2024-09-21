2024-09-03 10:31

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Computer Science]]

## Bit-Planes in ambito di elaborazione delle immagini

Una immagine con una profondità di colore di $N$ bit, può essere vista da $N$ piani di bit, ovvero bit-planes, in cui ciascuno di essi sia una immagine/livello costituito unicamente da 0 e 1. 

In particolare, essi si possono ordinare in maniera tale da ottenere dei piani che vadano dal **Most Significant Bit (MSB)** al **Least Significant Bit (LSB)**. 

>[!info] Definizione di bit-plane
>Il bit-plane di una immagine digitale a $N$ bit, è un insieme di $N$ piani / immagini binarie in cui l'immagine $i$-esima contiene $i$ valori dell'$i$-esimo bit della codifica scelta.

![[bitplanes di lena.png||250]]

Nota: questa immagine sottostante va dal Least Significant Bit ($2^0$, sembra binary gibberish) a Most Significant Bit ($2^7$, sembra già quasi l'immagine finale)

**Binario puro:** i piani di bit più significativi offrono informazioni sulla struttura dell'immagine, mentre quelli meno significativi offrono via via meno dettagli e informazioni. 

Il rumore delle immagini e gli errori di acquisizione sono più evidenti nei piani di bit meno significativi. 

Questa scomposizione è utile se vogliamo eliminare tutti i valori compresi in un certo range. Se ad esempio volessimo eliminare tutti i grigi compresi tra 32 e 63, basta porre a 0 il quinto bit, quindi tutto il piano 5. Questa osservazione (e le precedenti) sono valide se stiamo parlando di numeri binari puri. 

>[!warning] Problema
>Se usiamo la codifica binaria, un errore o una piccola variazione si può ripercuotere su tutti i piani. Es: se un pixel ha intensità 127 e quello dopo 128, allora la transizione da 0 e 1 si ripercuote su tutti i piani. 
>
>**Serve un codice in cui valori molto vicini abbiano codifiche binarie simili!**

>[!check] Soluzione: [[Codice Gray - bitplanes]]

### References

Powerpoint 11 - Bitplanes