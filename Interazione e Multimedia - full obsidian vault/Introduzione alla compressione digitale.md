2024-09-04 13:03

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Computer Science]], [[Language]], [[Colours]]

## Introduzione alla compressione digitale

Con il termine "**compressione dati**" si indica la tecnica di elaborazione che, aiutata da opportuni algoritmi, permette l'uso di meno memoria al fine di memorizzare dei dati o di rappresentarli digitalmente. 

La compressione riduce le dimensioni di un file, favorendo la sua memorizzazione in uno spazio ridotto - questo aiuta grandemente anche il trasferimento di informazione via rete. 

Esistono molti modi per rappresentare la stessa informazione: se esiste un metodo che permette di rappresentare la stessa quantità di informazione di un altro, ma ripete informazioni o ne mette più del necessario, queste ultime vengono chiamate "**dati ridondanti**". 

Definiamo **codice** un sistema di simboli utilizzati per rappresentare una certa quantità di informazioni.

Ad ogni pezzo di informazione viene assegnata una sequenza di **simboli codificati**, o **codewords**. 

Il numero di simboli che costituisce ciascun codice viene chiamato la sua **lunghezza**. 

Bisogna anche ricordare che le immagini "naturali" godono della proprietà di **coerenza interna**: ovvero, in generale, è più probabile che l'intorno di un pixel sia costituito da pixel dello stesso colore, rispetto che a pixel drasticamente diversi. **Questo crea ridondanza di informazioni salvate**. *(Questo accade anche temporalmente, per i video)*

Non solo: ma bisogna anche considerare che i **nostri occhi siano più sensibili alla luminanza** rispetto che alla crominanza. Quindi, spesso i dati contengono informazioni ignorate dal sistema sensoriale umano - se mancassero quasi non ce ne accorgeremmo. 

>[!tip] Algoritmo di compressione
>Un **algoritmo di compressione** è una tecnica che elimina la ridondanza di informazione dai dati e consente un risparmio di memoria.
>
>Avviene tramite Encoder e Decoder: avrà a destinazione bisogno di una decompressione. 

---
### Lossless o Lossy

La compressione di dati, a seconda dell'uso e del media sulla quale è applicata, può essere **Lossless** o **Lossy**.

[[Compressione Lossless]]

[[Compressione Lossy]]

### References

[[Memorizzazione digitale dei colori e scorciatoie]]

[[Compressione JPEG]]

[[Algoritmo di riquantizzazione - compressione Lossy]]

Powerpoint 13 - Compressione