```toc
```
# Consegna
Si consideri una funzione continua $f$ del tipo $\mathbb{R}^2\to\mathbb{R}$, definita in $x,y$ dall'equazione $3x^2+4y^2+5$. <mark style="background: #FFF3A3A6;">Calcolare il massimo</mark> della funzione $f$, contenuta in una palla chiusa $\mathcal{B}$ di raggio $2$ e centro $1,0$.

- Per aiutarci nella risoluzione dell'esercizio, <u>riscriviamo</u> in modo più compatto <u>la consegna</u>, in modo di avere per i successivi esercizi, un criterio standard da seguire per essere più precisi e sicuri  $$f(x,y):\mathbb{R}^2\to\mathbb{R}=3x^2+4y^2+5\qquad \in\qquad \mathcal{B}_2[1,0]$$
- Notare come la palla definita, sia una chiusa.
  > [!note] Insieme "chiuso" (estratto [[Lezione04]])
  > $\mathit{C}\subseteq{R}^n$ si dice *chiuso* se esiste $\mathit{A}\subseteq \mathbb{R}^n$ aperto t.c. $\mathit{A} \cup \mathit{C} = \mathbb{R}^n$
  > Come faccio a dire che un intervallo è chiuso? Perché ne esistono due aperti che uniti formano quello chiuso (vedere esempio del segmento).

  > [!note] Con "palla" ci riferiamo ad una *circonferenza*, siccome stiamo ragionando in uno spazio $\mathbb{R}^2$. Negli esercizi, la dimensione dello spazio sarà sempre minore o uguale a $2$.
  
  Dire questo vuole sottintendere che la nostra palla accetterà almeno un minimo globale e un massimo globale: <u>la nostra palla</u> non potrà altro che avere il <u>massimo</u>, proprio <u>sul bordo</u> che la definisce.
- Visualizziamo la geometria della palla per aiutare la comprensione
  
  | ![[Pasted image 20230404114246.png\|250]] |    ![[Pasted image 20230404114734.png\|350]] | 
  | ----------------------------------------- | --- |
  | La palla in $\mathbb{R}^2$         |  La funzione $f(x,y)$ è un paraboloide  |
  
# Risoluzione
1) Calcolo del gradiente.
   Per arrivare a trovare un massimo, ci serve prima conoscere le <u>derivate parziali</u> delle variabili dell'equazione. Questo ci servirà più avanti nella fase di sostituzione dei termini.
   $$\nabla f(x,y):3x^2+4y^2+5=(6x,8y)$$
   $$f(x,y)=\begin{cases}
   6x=0 \\
   8y=0 
 \end{cases}\begin{cases}
 x=0 \\
 y=0
 \end{cases}\quad\to\quad f(0,0)=5$$
   - $6x$ è la derivata parziale considerando $y$ una costante (cioè imposta a $0$);
   - $8y$ è la derivata parziale considerando $x$ una costante (cioè imposta a $0$).

   Proprio da questi passaggi, capiamo che <u>non abbiamo trovato un punto globale</u>, perché ci basta prendere un punto qualsiasi del dominio, come $f(1,0)=8$ per cambiare il risultato e quindi la palla.
2) Equazione della circonferenza.
   Geometricamente, l'equazione rappresenta una circonferenza, che va esplicitata, perché è proprio su questa che faremo le nostre sostituzioni.
   $$\mathcal{B}=\{(x,y):(x-1)^2+(y-0)^2=4\}$$
   In funzione di $x$, la nostra palla avrà equazione
   $$g(x):(x-1)^2+y^2=4\quad\to\quad g(x):x^2-2x+1+y^2=4\quad\to\quad$$
   $$\to\quad g(x):y^2=4-x^2+2x-1\quad\to\quad g(x):y^2=-x^2+2x+3$$
   Ora sostituiamo il valore $g(x)$ appena calcolato, per la costante $y$ di $f(x,y)$
   $$f(x,y):3x^2+4y^2+5=0\quad\to\quad f(x):3x^2+4[-x^2+2x+3]+5=0\quad\to$$
   $$\to\quad f(x):-x^2+8x+17=0$$
3) Calcolo del punto.
   Il punto $P=(x,y)$ <u>vertice della parabola</u> a concavità rivolta verso il basso (siccome il primo termine noto è negativo), ha coordinate standard
   $$P=\left(-\frac{b}{2a},-\frac{\Delta}{4a}\right)$$
   Sostituendo con i termini noti di $f(x)$, notiamo che la coordinata $x$ vale
   $$\to\quad P=\left(-\frac{8}{2},y\right)\quad\to\quad P=(4,y)$$
   ma sappiamo che la sfera è una compresa nell'intervallo di ascisse $[-1,3]$ e che quindi $P=(4,y)\notin \mathcal{B}_2[1,0]$: automaticamente, <u>il nostro punto giacerà sul bordo del cerchio</u> ovvero
   $$P=(3,y=-[3]^2+2[3]+3)\quad\to\quad P=(3,0)$$
---
28/03/2023