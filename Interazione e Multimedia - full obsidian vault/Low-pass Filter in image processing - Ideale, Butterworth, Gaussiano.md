2024-09-04 10:12

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Low-pass Filter in image processing

[[High-pass filters in Image Processing]]

Un **Low-Pass Filter**, o *filtro passa-basso*, è un filtro che **consente il passaggio di segnali al di sotto della frequenza di taglio** (*banda passante*) e **attenua i segnali al di sopra** della frequenza di taglio (*banda di arresto*).

Questi filtri vengono spesso utilizzati per pulire i segnali, rimuovere rumore, creare smussamento, etc. 

E' nella famiglia/termine ombrello dei filtri di Butterworth.  

Dove $D_0$ è la frequenza di taglio, e $n$ l'ordine del filtro di Butterworth:

**Lowpass Ideale:** $H (u,v) \begin{cases} 1 \hspace{1cm} \text{if} D(u,v) \leq D_0 \\ 0 \hspace{1cm} \text{if} D(u,v) > D_0 \end{cases}$
**Butterworth**: $H(u,v) = \frac{1}{1 + [\frac{D(u,v)}{D_0}]^{2n}}$
**Gaussian**: $H(u,v) = e^{-D^{2}\frac{(u,v)}{2D_0^{2}}}$

---
#### Filtro Low-pass Ideale
Consideriamo per adesso un **Low-Pass ideale** dove $H (u,v) \begin{cases} 1 \hspace{1cm} \text{if} D(u,v) \leq D_0 \\ 0 \hspace{1cm} \text{if} D(u,v) > D_0 \end{cases}$ 
E ricordando che $D(u,v) = \left[ (\frac{u-P}{2})^2 + (\frac{v-Q}{2})^2 \right]^{\frac{1}{2}}$ *(cosa siano $P$ e $Q$ non è dato sapere)*

![[Filtro Low-pass.png||250]]

Si rimuovono le frequenze minori, sostanzialmente; quindi dato che le basse frequenze sono legate a zone uniformi e le alte frequenze alle variazioni brusche, accentuerebbe il rumore, rendendo l'immagine meno dettagliata?

---
#### Filtro Low-pass di Butterworth

Al contrari del lowpass filter ideale, che è molto netto, quello di **Butterworth** invece è graduale.
$$H(u,v) = \frac{1}{1 + [\frac{D(u,v)}{D_0}]^{2n}}$$

![[Butterworth Filter.png||250]]

---
#### Filtro Low-pass Gaussiano

E' una vera e propria gaussiana 2D con il picco al centro. 
$$H(u,v) = e^{-D^{2}\frac{(u,v)}{2D_0^{2}}}$$

![[gaussian filter.png|250]]


### References

[[Da maschera spaziale a filtro convoluzionale nel dominio Fourier]]

[[Range dinamico e spettro di una trasformata di Fourier]]

[[Fourier - Serie, Trasformata, applicazione]]

[[Discrete Fourier Transform]]




[Articolo sul Filtro passa-basso, MathWorks, organizzazione di Mathlab](https://it.mathworks.com/discovery/low-pass-filter.html)