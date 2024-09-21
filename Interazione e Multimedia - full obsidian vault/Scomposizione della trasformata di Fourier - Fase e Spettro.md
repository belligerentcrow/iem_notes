2024-09-03 15:58

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Mathematics]], [[Interazione e Multimedia]]

## Scomposizione della trasformata di Fourier - Fase e spettro

La trasformata di Fourier produce una immagine in output a numeri complessi, che possono essere rappresentati tramite due immagini, o con la parte *Reale e immaginaria* o con la parte di *Magnitudo e Fase*. 

Spesso, in image processing si utilizza solamente il magnitudo, perché contiene la maggior parte delle informazioni sulla struttura geometrica del dominio spaziale dell'immagine. 

Ma se vogliamo ri-trasformare la immagine di Fourier nel corretto dominio spaziale dopo dell'elaborazione nel dominio delle frequenze, dobbiamo preservare **sia magnitudo che fase**. 

**Spettro della trasformata**: 
$$\left| F(u,v) \right| = \sqrt{R^2(u,v)+I^2(u,v)}$$

**Angolo di Fase**:
$$\phi(u,v) = \tan^{-1} \left[ \frac{I(u,v)}{R(u,v)} \right]$$
**Potenza Spettrale**:
$$P(u,v) = \left| F(u,v)\right|^2 = R^2(u,v) + I^2(u,v)$$
Dove $I(u,v)$ rappresenta la parte immaginaria, e $R(u,v)$ quella reale.

La **fase** contiene più informazioni di quanto sembra, perché contiene le informazioni relative a dove le strutture periodiche evidenziate dalla DFT siano collocate. 

Lo spettro deve essere compresso logaritmicamente per essere visto bene ad un osservatore umano, perché il range dinamico delle immagini è spesso molto ampio quindi necessita di una sorta di compressione oltre ad una normalizzazione nel range di valori dell'immagine. 


### References

[[Range dinamico e spettro di una trasformata di Fourier]]

[[Fourier - Serie, Trasformata, applicazione]]

[[Discrete Fourier Transform]]




[Sito web della università di edinburgo nel 2003 che parla della trasformata di Fourier](https://homepages.inf.ed.ac.uk/rbf/HIPR2/fourier.htm)