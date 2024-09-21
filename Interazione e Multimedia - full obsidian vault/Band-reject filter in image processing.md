2024-09-04 11:24

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Band-reject filter in image processing - Ideale, Butterworth, Gaussiano

Il concetto di filtro band reject è di attutire e bloccare le frequenze in un certo range di frequenza. 

I filtri Low-pass e High-pass potrebbero essere considerati casi specifici di questo. 

$W$ è la grandezza della banda da attutire, $D$ la distanza $D(u,v) dal centro del filtro, $D_0$ la frequenza di taglio.

#### Band Reject Ideale

Netto.

$$H(u,v) = \begin{cases} 0 \hspace{1cm} \text{if} - \frac{W}{2} \leq D \leq D_0 + \frac{W}{2}\\ 1 \hspace{1cm} \text{otherwise} \end{cases}$$

---
#### Band Reject di Butterworth

Graduale.
$$H(u,v) = \frac{1}{1 + [\frac{DW}{D^2 - D_0^{2}}]^{2n}}$$
---
#### Band Reject Gaussiana

Ancora più graduale. 
$$H(u,v) = 1 - e^{-\left[\frac{D^2-D_0^{2}}{DW}\right]^2}$$

### References

[[Da maschera spaziale a filtro convoluzionale nel dominio Fourier]]

[[Range dinamico e spettro di una trasformata di Fourier]]