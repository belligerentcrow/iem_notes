2024-08-29 20:10

<b>Status</b>: #LaTex #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Physics]]

## Lenti sottili e formazione ottica delle immagini

### Lenti sottili

Le lenti sottili sono delle lenti di vetro con forma lenticolare il cui diametro è in ordine di grandezza maggiore del loro massimo spessore. 

Sono la migliore replica del cristallino umano, e hanno proprietà simili ai pinholes (vedi references).

Una lente sottile è definita da una proprietà che si può enunciare in maniera speculare:

>[!tip] Definizione geometrica di Lente Sottile
> 1. Raggi paralleli all'asse della lente sottile vengono concentrati in un unico punto detto **Fuoco**, posto a distanza $F$ dalla lente.
> 2. Raggi che dipartono dal **Fuoco** vengono ritrasmessi tutti paralleli nella direzione dell'asse della lente
> 3. Una lente sottile **ha due fuochi equidistanti** da essa.

Sostanzialmente, un oggetto puntiforme rifletterà dei raggi luminosi; di questi, **uno è parallelo all'asse ottico** e attraversando la lente passerà per il fuoco (interno). Un'altro **passa per il fuoco (esterno),** quindi passando attraverso la lente diventerà parallelo all'asse ottico. Il punto in cui questi due raggi si incrociano, si forma l'immagine dell'oggetto -> Che sarà coincidente col piano dei sensori/retina.    

Se si ponesse il piano dei sensori più avanti o indietro rispetto al piano che contiene l'immagine, si ottiene una immagine **sfocata** dell'oggetto originale. *(Questo è quello che accade ai soggetti con miopia)*.

---

### Equazione delle lenti sottili

![[Equazione della lente sottile.png|400x200]]

Come sono in relazione le quantità $u$, $v$, ed $f$ ?

(Dove $u$ è la distanza tra la lente e l'oggetto, $v$ è la distanza tra la lente e il fotorecettore/fovea, e $f$ è la distanza dei fuochi dalla lente). 

Consideriamo anche le quantità $k$ e $h$ che sono in figura. 

Il triangolo di base $u$ e di altezza $h+k$ (tra l'oggetto e la lente) e il triangolo di base $f$ e di altezza $h$ (sulla sinistra della lente, poggiante sotto l'asse visivo) **sono simili**. 

Quindi: $$\frac{u}{(h+k)} = \frac{f}{h} \hspace{1.5cm}\longrightarrow\hspace{1.5cm} (h+k) = \frac{u\cdot h}{f}$$

Anche il triangolo di base $v$ e di altezza $h+k$ (tratteggiato in rosso) e il triangolo di base $f$ e di altezza $k$ (sulla destra della lente, sopra l'asse visivo) **sono simili**.

Quindi: $$\frac{v}{(h+k)} = \frac{f}{k} \hspace{1.5cm}\longrightarrow\hspace{1.5cm} (h+k) = \frac{v\cdot k}{f}$$
Eguagliando le due relazioni ed eliminando $f$ si ottiene: $$\frac{h}{v} = \frac{k}{u} \hspace{0.75cm}\longrightarrow \frac{h}{u}+\frac{k}{u} = \frac{h}{f} \hspace{0.75cm} \longrightarrow \frac{h}{u} + \frac{h}{v} = \frac{h}{f}$$
Quindi possiamo eliminare il fattore comune $h$, ottenendo finalmente:

>[!danger] Equazione della Lente Sottile
>
>$$\frac{1}{u} + \frac{1}{v} = \frac{1}{f}$$

Se $f$ si misura in metri, la quantità $\frac{1}{metro}$ si definisce pari ad una **diottria**. 

##### Messa a fuoco e relazione tra $u$ e $v$, con $f$ fisso: 
1. In una lente definita *"fissa"*,  $f$ **è una grandezza costante**. Se la **distanza dell'oggetto dalla lente ($u$) cresce, allora $v$ diminuisce**. Per questo la messa a fuoco richiede che il piano dei sensori debba essere allontanato o avvicinato dalla lente.

##### Dinamica visiva del cristallino (lente):
2. Se il piano dei sensori non può essere mosso (come nell'occhio), quello che si può fare è **aggiustare la lunghezza focale**, ovvero ciò che fanno i muscoli che contraggono il cristallino. La anche la variabilità della lunghezza focale della lente si misura in diottrie. 

##### Fenomeno della profondità di campo in contrasto di distanza:
3. Se due oggetti sono a distanza $u_1$ e $u_2$ e queste quantità sono molto maggiori di $f$, essi **formano le loro immagini su un unico piano** - perché i due corrispettivi $v_1$ e $v_2$ sono vicinissimi. Tuttavia se le due distanze $u_1$ e $u_2$ sono differenti e comparabili *(meno di 30 volte la distanza della lente)* allora essi non possono essere focalizzati contemporaneamente; si crea il fenomeno della **Profondità di campo**: non possono essere focalizzati nello stesso momento. Il fenomeno si accentua al crescere di $f$.


### References

[[Magnificazione ottica - equazione e funzionamento]]

[[La formazione dell'immagine nell'occhio]]

[[Struttura dell'occhio e recettori visivi]]

Powerpoint 06 - Struttura dell'occhio 