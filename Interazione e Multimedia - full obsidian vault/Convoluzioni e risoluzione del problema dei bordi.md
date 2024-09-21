2024-09-02 11:32

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]], [[Mathematics]]

## Convoluzioni e risoluzione del problema dei bordi

Il problema è: in una convoluzione con Kernel/filtro convolutivo dove devo "far passare" il filtro sopra una immagine, come gestisco i bordi, dove parte del filtro è out-of-bounds dall'immagine stessa?

Ci sono quattro tipi di soluzioni:

1. Filtrare solo le zone "centrali" dell'immagine, non calcolando i bordi

2. Supporre che fuori dall'immagine ci sia il valore 0 e calcolare con esso

3. Assumere una "topologia toroidale"/ *circolare*, dove quando si "sfora" a sinistra si rientra a destra, quando si sfora di sopra si rientra di sotto, e viceversa

4. "Duplicare i bordi" aggiungendo sopra e sotto e ai lati delle righe e colonne uguali al bordo pre-esistente.
### References

[[Convoluzioni - definizione e formule generiche]]

[[Convoluzione e filtri convolutivi in ambito di image processing]]