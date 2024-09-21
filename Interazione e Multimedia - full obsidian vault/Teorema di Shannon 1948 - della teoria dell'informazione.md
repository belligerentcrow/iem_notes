2024-09-04 18:03

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Computer Science]], [[Interazione e Multimedia]]

## Teorema di Shannon 1948 - della teoria dell'informazione

	>"Per una sorgente discreta e a memoria zero, il bitrate minimo è pari all'entropia della sorgente"

*(Suppongo che in questo sia implicito che non si possa andare al di sotto del valore dell'entropia per rappresentare della informazione, se abbiamo una sorgente discreta (e non continua), quindi come le immagini o la quasi totalità di informazioni digitalizzate; non sono certa di cosa intenda per "memoria zero".)*


I dati possono essere rappresentati senza perdere informazione (in maniera *Lossless*) usando almeno un numero di bit pari a 
$$N \cdot E$$
Dove $N$ è il numero di caratteri, e $E$ è l'entropia. 

>[!warning] Chiarificazioni
> Il teorema di Shannon fissa il numero minimo di bit, $N \cdot E$, ma non ci dice *come* trovarli.
> Occorre usare un algoritmo ulteriore, che permetta di codificare i caratteri usando esattamente il numero di bit calcolati tramite il Teorema di Shannon. 
> Uno di questi algoritmi è la [[Codifica di Huffman]]

### References

[[Concetto di Entropia]]

[[Introduzione alla compressione digitale]]

[[Compressione Lossless]]


[[Nyquist-Shannon Rate -- Teorema del campionamento e quantizzazione]]

Powerpoint 13 - Compressione