2024-09-04 17:28

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Physics]], [[Computer Science]], [[Interazione e Multimedia]]

## Concetto di Entropia

### Definizione da un punto di vista della Teoria dell'Informazione

Studiata da Claude Shannon - lo stesso di [[Nyquist-Shannon Rate -- Teorema del campionamento e quantizzazione]], [[Teorema di Shannon 1948 - della teoria dell'informazione]]. Viene considerato "Il padre della teoria dell'informazione".

*Quest'ultima è una teoria scientifica che studia e analizza fenomeni relativi alla misurazione e alla trasmissione di dati su un canale di comunicazione. Una sorta di linguistica non del tutto analogica, pre-datando l'informatica.*

**Definizione di Entropia (informatica / in ambito di dati)**

*(Ho trovato due versioni, una era sul powerpoint del professore di Interazione e Multimedia, l'altra sulla pagina wikipedia del concetto di entropia nell'ambito della teoria dell'informazione. Le annoto qui entrambe, partendo da quella del professore.)*

Definiamo entropia $E$ della sequenza di dati $S$ la quantità media di informazione associata alla singola generazione di un simbolo nella sequenza $S$:
$$E = - \Sigma f_i \hspace{0.15cm}\log_2 \hspace{0.15cm}(f_i) \hspace{1cm} \text{con } i \in S$$
Più è grande l'incertezza della sequenza, maggiore è l'entropia. Il massimo valore di incertezza (e di entropia) si ha quando i simboli della sequenza sono tutti equiprobabili.

---

Per la definizione secondo Shannon, assunto che non sia possibile conoscere a priore quale dato verrà emesso in un certo istante, ma solo la sua probabilità, si definisce l'entropia della sorgente come la media pesata dell'autoinformazione dei simboli emissibili rispetto alla loro probabilità di emissione, a meno di una costante positiva di proporzionalità.  
$$H = -K \sum_i p(x_i) \hspace{0.15cm} \log \hspace{0.15cm}p(x_i)$$
E nel caso in cui l'alfabeto della sorgente sia costituito da simboli indipendenti, ovvero equiprobabili, l'espressione dell'entropia si riduce a:
$$H = -K \sum_i \log p(x_i)$$
*(Si definisce autoinformazione la quantità di incertezza associata ad un evento. vver, l'informazione che si ottiene affermando che tale evento sia realizzato o meno, rimuovendo incertessa associata. Secondo Shannon è la forma più semplice di entropia, e ne costituisce il punto di partenza.)*

Shannon dimostrò che una informazione non può essere rappresentata con un numero di bit inferiore alla sua entropia, ovvero alla sua *"autoinformazione media"*. 

### References

[[Introduzione alla compressione digitale]]

[Pagina wikipedia del concetto di Entropia nell'ambito della teoria dell'informazione](https://it.wikipedia.org/wiki/Entropia_(teoria_dell%27informazione))

[Pagina wikipedia dell'entropia in ambito di meccanica statistica e soprattutto termodinamica - Dal lavoro di Rankine, Clausius](https://it.wikipedia.org/wiki/Entropia)

Powerpoint 13 - Compressione

[Entropia in ambito di compressione - Professor Brailsford, Computerphile](https://www.youtube.com/watch?v=M5c_RFKVkko)