2024-09-05 22:35

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

<-PrevPrev: [[Tre fasi del Pre-processing JPEG]] - Prima parte

<-Prev:[[Trasformata del Coseno e Quantizzazione JPEG]] -- Seconda parte

Tags: [[Interazione e Multimedia]]

## Codifica finale JPEG

[[Compressione JPEG]] - Parte 3

I coefficienti vengono quindi messi in un vettore lungo 64 (una colonna) seguendo un andamento a zig-zag; questo si fa per creare lunghe sequenze di zeri, che renderanno più efficace la compressione. 

![[CodificaZigZagJPEG.png||250]]

A questo punto si hanno due diverse codifiche, a seconda che ci troviamo davanti coefficienti **DC** *(sono di meno, nei posti 1x1 del blocco 8x8, rappresentano soprattutto la luminanza)* o **AC** *(sono di più, più compressi, rappresentano soprattutto la crominanza)*. 

* I **coefficenti DC** sono codificati con una **[[Codifica Differenziale]]**
* I **coefficienti AC** sono codificati con una **[[Run-Length Encoding]]**

Successivamente si applica la **[[Codifica di Huffman]]**. 

### References

