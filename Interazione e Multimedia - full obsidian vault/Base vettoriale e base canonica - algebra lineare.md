2024-09-01 15:12

<b>Status</b>: #UniCT

<b>Found in/through/thanks to</b>: 

Tags: [[Mathematics]], [[Algebra Lineare]]

## Base vettoriale - algebra lineare

Qualsiasi sia lo spazio vettoriale $V$, è sempre possibile trovarne una base.

Dato uno spazio vettoriale $V$ su un campo $\mathbb{K}$ e dati un certo numero di vettori $\{ v_1, v_2, ..., v_n \}$, quando questi costituiscono una base di $V$? 

1. I vettori $v_1, ..., v_n$ devono essere **linearmente indipendenti**. 
Soddisfano questa proprietà quando nessuno di essi è il vettore nullo, non devono essere tra di loro proporzionali, e nessun vettore deve essere scritto come combinazione (ad esempio somma) di altri due vettori di questo insieme. 

2. I vettori di $v_1, v_2, ..., v_n$ devono **generare** lo spazio $V$.  
Quindi $V = \mathscr{L} \{ v_1, v_2, ..., v_n \}$. 
Dei vettori generano uno spazio se un qualsiasi vettore di $V$ può essere scritto come combinazione lineare di questi vettori **in modo unico**. 

Scelto qualsiasi vettore $(x,y)$ appartenente a $V$, lo posso scrivere come combinazione lineare dei vettori in maniera unica. Quindi $(x,y) = v_1 + v_2 + ... + v_n$. 


---

$\mathbb{R}^2$ e consideriamo $v_1(1,1)$ e $v_2(-1,1)$
1. Sono linearmente indipendenti.
2. $v_1$ e $v_2$ sono basi di $\mathbb{R}^2$ solo se esiste **un unico** coefficiente $a_1$ e **un unico** coefficiente $a_2$ tale che $(x,y) = a_1 \cdot v_1 + a_2 \cdot v_2$ per ogni coppia $(x,y)$ in $\mathbb{R}^2$. 


---
#### Base canonica

Sia $\mathbb{K}$ un campo. L'insieme $\mathbb{K}^n$ è uno spazio vettoriale di dimensione $n$. 
Si definisce **base canonica** di $\mathbb{K}^n$ l'insieme di vettori: 

$e_1 = (1, 0, ..., 0)$
$e_2 = (0, 1, ..., 0)$
$...$
$e_n = (0, 0, ..., 1)$

Ogni vettore $v \in \mathbb{K}$ si può allora scrivere come combinazione lineare dei vettori di base: 

$$v = \sum_{i=1}^{n} a_i e_i$$
Il vettore $a$ mappa le coordinate di $v$ rispetto alla base canonica: $a = (a_1, a_2, ...,a_n)$. Solitamente si identifica un vettore tramite le sue coordinate attraverso la base canonica, quindi $w = a$. 

Esempio:

I vettori $e_1 = (1,0)$ e $e_2 = (0,1)$ sono una base di $\mathbb{R}^2$, perché ogni vettore $c = (a,b)$ si può scrivere come $$(a,b) = a(1,0) + b(0,1)\hspace{0.5cm} =\hspace{0.5cm} a \cdot e_1 + b \cdot e_2$$

---


### References

[[Base canonica nell'ambito delle immagini]]


[Base di uno spazio vettoriale - verifica di una base - teoria e esempi, video di Salvo Romeo](https://www.youtube.com/watch?v=r6WB7M8UQ3E)

[Pagina wikipedia della base in ambito di algebra lineare, sezione "base canonica"](https://it.wikipedia.org/wiki/Base_(algebra_lineare)#La_base_canonica)

[Generatori di spazi vettoriali - combinazioni lineari di vettori, video di Salvo Romeo](https://www.youtube.com/watch?v=YjzfYtwPzMM)

[Vettori linearmente indipendenti - definizione ed esempi, video di Salvo Romeo](https://www.youtube.com/watch?v=gkFLI99OouE)

[Come trovare una base e dimensione di uno spazio -sottospazio vettoriale, video di Salvo Romeo](https://www.youtube.com/watch?v=TsAqn0bFdoI)