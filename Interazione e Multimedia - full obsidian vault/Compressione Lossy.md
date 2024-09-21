2024-09-04 15:30

<b>Status</b>: #UniCT 

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Computer Science]], [[Semiotica]], [[Algorithms]]

## Compressione Lossy

Questo tipo di compressione, permette, secondo precisi criteri, la **perdita irreversibile di informazioni**. Il file, a seguito della compressione, non sarà identico all'originale, perché saranno sacrificate informazioni a favore di una compressione più aggressiva. 

Permette un maggiore risparmio di memoria.$$"\text{Nl mzz dl cmmn d nstr vt / M rtrv pr n slv scr}"$$Siamo in grado di leggerlo comunque! 

Idea di "*Ridondanza Semantica*": poter completare da soli i dettagli che sono stati trasmessi in maniera incompleta. 
Idea di "*Ridondanza Statistica*": telefonini o motori di ricerca che sono in grado di completare una sequenza di caratteri.

L'idea della compressione lossy è che, se qualcosa non è percettivamente importante (ovvero che un essere umano farebbe molta fatica a trovare differenza tra il file post e pre compresso) allora viene sacrificato, irreversibilmente.

Questo concetto viene applicato al suono e alla musica (**MP3**), alle immagini (**JPEG**), ai video (**MPEG, AVI, DVX**)

#### Criterio per una buona compressione Lossy

Bisogna fissare una soglia di massima distorsione accettabile; tenendo presente questa, l'algoritmo deve trovare la rappresentazione con il più basso numero di bit (che rispetti la soglia). 

Oppure, fissato il massimo numero di bit accettabile, bisogna trovare il miglior algoritmo di compressione che a parità di numero di bit dia la minima distorsione.

---

Nel corso si vedranno:
* [[Algoritmo di riquantizzazione - compressione Lossy]]
* [[Compressione JPEG]]


### References

[[Compressione Lossless]]

[[Introduzione alla compressione digitale]]

[[Compressione JPEG]]