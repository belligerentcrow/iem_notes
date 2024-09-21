2024-08-26 18:36

<b>Status</b>: #UniCT 

<b>Found in/through/thanks to</b>: 

Tags: [[Interazione e Multimedia]]

## Interpolazione di immagini digitali

L'interpolazione è un processo attraverso il quale partendo da dati noti si fa una stima di dati non conosciuti. 

Nell'ambito della elaborazione immagini se ne parla quando, modificando una immagine, rimangono dei valori ignoti, e dobbiamo effettuare una stima di essi. L'interpolazione non "migliora" l'immagine ma effettua una *stima* dei valori mancanti. 

Esempio di interpolazione: fare zoom in di una immagine 500x500 in 750x750.

#### Interpolazione nearest neighbour

Però introduce distorsioni. Utilizza pixel vicini.
#### Interpolazione bilineare

Utilizza i quattro vicini (a croce) e si va a formare un sistema di 4 equazioni in 4 incognite. 
$v(x,y) = ax + by+cxy+d$

#### Interpolazione bicubica

Utilizza i 16 pixel più vicini. Generalmente preserva meglio i dettagli rispetto alla bilineare. 
$v(x,y) =$ Sommatoria di i che va da 0 a 3, per sommatoria di j che va da 0 a 3, per $a_{ij}\cdot x^{i} \cdot y^{j}$

#### Problema dei bordi

* Sol 1: Non fare nulla
* Sol 2: Interpolare comunque con i pixels più vicini presenti. 

#### Zoom out e decimazione

1. Metodo 1: Di quattro pixel ne scelgo 1, sempre quello nella stessa posizione rispetto al quadrato che si forma
2. Metodo 2: faccio la media dei valori dentro il quadrato. 
### References