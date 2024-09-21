2024-08-30 21:22

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Mathematics]], [[Waves]]

## Serie e Trasformata di Fourier nell'ambito dell'Image Processing

**Serie di Fourier**
Una funzione **periodica** può essere espressa *come somma di seni e/o coseni* di differenti frequenze e ampiezze.

***Trasformata di Fourier***
Anche una funzione **non periodica** sotto certe condizioni può essere espressa come *integrale di seni e/o coseni, moltiplicasti per opportune funzioni-peso*.

Entrambe queste operazioni si basano sul fatto che una funzione possa essere ricostruita integralmente, **senza alcuna perdita di informazione**, invertendo l'operazione effettuata. E' possibile lavorare nel dominio di Fourier e tornare nel dominio originale senza perdere nulla. 

Questa analisi trovò applicazione nel campo della diffusione del calore, aiutò la formulazione e risoluzione di equazioni differenziali e fenomeni fisici in maniera originale.

Questa idea rivoluzionò anche l'ambito dello studio dei segnali, audio e video, soprattutto in seguito alla formulazione della **FFT - Fast Fourier Transform**. Questi concetti sono adesso usati in tantissimi campi. 

Ricordiamo che una **immagine può essere vista come una funzione** che ad una coppia di locazioni spaziali assegna un valore; una funzione **discreta in due dimensioni i cui valori rappresentano il livello di grigio** di un determinato pixel. *(Sostanzialmente come se su un telo gommoso -il piano delle coordinate spaziali- ci fossero picchi e depressioni che corrispondano ai valori di grigio presenti in quel punto)*

Quindi una "funzione immagine" può essere vista come un segnale, ovvero una funzione variabile in un dominio con una propria frequenza (costante o variabile). 

La ***trasformazione diretta*** può essere vista come un processo di analisi e scomposizione in componenti elementari, ovvero i **vettori di base**. I coefficienti della trasformata specificano **quanto di ogni componente di base è presente nel segnale**. *(assomiglia al concetto delle convoluzioni, infatti.)* [[Teorema della Convoluzione e DFT]]

Nella ***trasformazione inversa***, o ***anti-trasformata***, viene ricostruito il segnale tramite una sintesi, come somma pesata delle componenti precedentemente scomposte. Il peso è rappresentato dai coefficienti. 

I **coefficienti** della trasformata appunto, sono una misura della correlazione tra il segnale e il corrispondente vettore di base. Come detto prima, **questo non comporta perdita di informazioni**, è solo una visualizzazione alternativa del segnale originale. 

Nello **spazio delle frequenze** è possibile:
* Sopprimere frequenze indesiderate
* Ridurre lo spazio occupato dai dati, limitando la degenerazione del segnale (vedi JPEG)
* Rigenerare segnali degradati

---

Di solito è impossibile fare associazioni dirette **fra parti dell'immagine e parti della trasformata**, perché non coincidono nello spazio. 

Tuttavia, la frequenza è legata alla **velocità di variazione**: è possibile associare le basse frequenze alle zone uniformi dell'immagine, e quell alte alle variazioni brusche, quindi ai bordi o al rumore.

---
*Nota: esistono altri tipi di trasformate. Ad esempio la trasformata di Walsh, di Hadamard, del Coseno, e di Karhunen Loeve.*

### References

[[Cos'è una immagine digitale]]

[[Discrete Fourier Transform]]

[[Fast Fourier Transform - FFT]]


[Sito web della università di edinburgo nel 2003 che parla della trasformata di Fourier](https://homepages.inf.ed.ac.uk/rbf/HIPR2/fourier.htm)

[Video di Reducible sulla Fast Fourier Trasformat](https://www.youtube.com/watch?v=h7apO7q16V0&t=381s)

[How Image Compression (JPEG) works, riassunto by Leo Isikdogan](https://www.youtube.com/watch?v=Ba89cI9eIg8)

[Seguito del video di prima](https://www.youtube.com/watch?v=Ty0JcR6Dvis)

[La discreta di Fourier, di Reducible](https://www.youtube.com/watch?v=yYEMxqreA10)

[Video di 3blue1brown riguardo la trasformata di Fourier](https://www.youtube.com/watch?v=spUNpyF58BY)