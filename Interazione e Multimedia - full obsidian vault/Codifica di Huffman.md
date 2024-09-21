2024-09-05 12:02

<b>Status</b>: #UniCT 

<b>Found in/through/thanks to</b>: 

Tags: [[Computer Science]], [[Mathematics]], [[Interazione e Multimedia]], [[Algorithms]]

## Codifica di Huffman

David Huffman ha proposto nel 1953 una versione di [[Algoritmo Greedy]] che permette di ottenere un **Dizionario** *(Una tabella che associa a un carattere una codifica binaria)* per una compressione quasi ottimale dei dati, quasi al limite di Shannon, *(ovvero usando almeno un numero di bit pari a il numero di caratteri PER l'entropia del dizionario)* con eccesso al più di qualche bit.

E' utilizzata per **compressioni lossless**.

Il punto della codifica di Huffman è **assegnare un peso ad ogni carattere in base alla frequenza stimata di essi**. 

**Ai simboli più comuni vengono assegnati meno bits**, in maniera tale da diminuire i bit usati in totale per comprimere un file o un oggetto. Al contrario, a **simboli meno frequenti vengono associati codici più lunghi**. 

La struttura della Codifica Huffman si basa su un **albero binario bilanciato** pesato per frequenza; questo albero viene costruito partendo dal basso con i caratteri o elementi meno frequenti. 

Per questo è un **algoritmo iterativo** - sceglie di volta in volta ad ogni iterazione i due nodi con frequenza più bassa (usati di meno). **Questi vengono collegati per formare un sottoalbero la cui frequenza del nodo padre è la somma delle frequenze dei due nodi**. 

Se ci fossero più nodi con peso minimo se ne scelgono solo due. Se c'è un solo nodo con frequenza più bassa si seleziona tale nodo e si prende la seconda frequenza più bassa, e si seleziona un nodo con quella frequenza. 

Nessun codice in questa codifica è un prefisso di altri codici. 

Al termine delle iterazioni, la radice avrà peso 1. Si etichettano i rami a sinistra con codice 1, a destra con codice 0. Il codice si forma procedendo dalla radice alla foglia, è il codice abbinato al carattere presente nella foglia stessa.

---

>[!tip] Note
* I numeri binari si pongono sui rami e non nei nodi

* Si aggregano i nodi con la minore frequenza in basso e vengono associati a un "padre-nodo" che continene il numero della frequenza, non un vero e proprio nodo-informazione

* Si costruisce via via l'albero da sotto a sopra assicurandosi che sia bilanciato

* Ogni livello ha una sua frequenza, almeno nel caso-studio $AABABCAACAAADDDD$

* Etichetto con 1 i rami sinistri e con 0 i rami destri. Il cammino dalla radice alla foglia restituisce il numero della codifica.

* I trattini tra i numeri risultano superflui perché con questa codifica nessun codice per i caratteri è prefisso degli altri.
  
* Per il caso studio sopracitato;
$A = \frac{1}{2} \rightarrow 1$
$B = \frac{1}{8} \rightarrow 011$
$C = \frac{1}{8} \rightarrow 010$
$D = \frac{1}{4} \rightarrow 00$

Quindi $\text{AABABCAACAAADDDD} = 1101110110101101011100000000$, che sono $28 \text{ bit}$.

Applicando il Teorema di Shannon, quindi 

$$N \cdot E \longrightarrow 16 \cdot - K \sum_{i=1}^4 f_i \cdot \log_2 (f_i) $$
$$16 \cdot (-\frac{1}{2}\cdot\log_2(\frac{1}{2}) -\frac{1}{8}\cdot\log_2(\frac{1}{8}) -\frac{1}{8}\cdot\log_2(\frac{1}{8})-\frac{1}{4}\cdot\log_2(\frac{1}{4})  $$
$$= 16 \cdot (\frac{1}{2} + \frac{3}{8} + \frac{3}{8} + \frac{2}{4}) = 8+6+6+8 = 28 \text{ bit} $$

### References

[[Problemi NP-Hard]]

[[Compressione Lossless]]

[[Teorema di Shannon 1948 - della teoria dell'informazione]]


[Video di Computerphile sulla codifica Huffman - Professor Brailsford - pt 1](https://www.youtube.com/watch?v=umTbivyJoiI)

[Video di Computerphile sulla codifica Huffman - Professor Brailsford - pt 1](https://www.youtube.com/watch?v=DV8efuB3h2g)

[Video piuttosto completo sull'Huffman Encoding di Reducible](https://www.youtube.com/watch?v=B3y0RsVCyrw)

[Video di Tom Scott sulla codifica di Huffman, specifico su testi e alfabeto](https://youtu.be/JsTptu56GM8)