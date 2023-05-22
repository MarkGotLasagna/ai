```toc
```
# Consegna
Un'applicazione lineare $f:\mathbb{R}^2\to\mathbb{R}$ è definita dall'equazione $-9x^2-16y^2+154$.
A questa applicazione è associata una funzione $h(l)$ definita nel modo seguente:
$$h(l)=\begin{cases}
1\qquad l=10 \\
0\qquad \mathtt{altrimenti}
\end{cases}$$
Sapendo che $f$ è contenuta in $h$, <mark style="background: #FFF3A3A6;">calcolare il valore di una terza funzione</mark> $g:h \circ f$ e <mark style="background: #FFF3A3A6;">tracciarne il grafico</mark>.

- Riscriviamo la consegna per aiutare la comprensione.
  $$f(x,y):\mathbb{R}^2\to\mathbb{R}=-9x^2-16y^2+154\quad,\quad g:h\circ f\begin{cases}
  1\qquad l=10\\
  0\qquad \mathtt{altrimenti}
  \end{cases}$$
  Ci viene detto che la funzione $f$ è contenuta in $h$, da cui possiamo dedurre che questa <u>esiste</u>. Il fatto che questa esista, <u>implica</u> che $g:h\circ f$ vale $1$ quando il parametro $l=10$. L'operatore composto "$\circ$" ci suggerisce che quello che stiamo calcolando non è altro che la <u>signature</u> della funzione $f$ per le copie di valori $(x,y)$.
  > [!info] Signature
  > La **signature** ($d$) di una funzione è la distanza dal centro dell'ellisse.
  > Le coordinate dei punti in funzione della signature sono così calcolate:
  > $$x=d(\alpha)\cos \alpha$$
  > $$y=d(\alpha)\sin \alpha$$
- La geometria suggerita viene illustrata.
  
  | ![[Pasted image 20230405174622.png\|250]] | ![[Pasted image 20230405174731.png\|300]]    | 
  | ----------------------------------------- | --- |
  | $f$ è un'ellisse                          |  $f$ è un paraboloide con la pancia verso il basso   |
  
# Risoluzione
- Calcolo della funzione.
  La <u>funzione</u> su cui lavoriamo non sarà quella originale, bensì una sua versione <u>che soddisfi la proposizione</u> $g$ per le copie $(x,y)$.
  $$l=10\quad\to\quad-9x^2-16y^2+154=10\quad\to\quad-9x^2-16y^2+144=0$$
  $$\to\quad \frac{-9x^2-16y^2+144}{144}=\frac{0}{144}\quad\to\quad -\frac{x^2}{16}-\frac{y^2}{9}+1\quad\to$$
  $$\frac{x^2}{16}+\frac{y^2}{9}=1$$
  ![[Pasted image 20230405180801.png|350]]
- Calcolo della signature.
  Siccome tutti i termini li conosciamo, non ci resta far altro che <u>sostituire</u> i valori $(x,y)$ della signature, con i valori di $f(x,y)$, ricordando che ($\sin^2(\alpha)= 1-\cos^2(\alpha)$). L'angolo $\alpha$ esclude $2\pi$ siccome il punto è già incluso all'inizio del calcolo della signature.
  $$f(x=d(\alpha)\cos \alpha,y=d(\alpha)\sin\alpha)$$
  $$f(x,y):-9d^2(\alpha)\cos\alpha^2-16d^2(\alpha)\sin^2(\alpha)+144=0\quad\to$$
  $$\to\quad f(x,y):-9d^2(\alpha)\cos^2(\alpha)-16d^2(\alpha)+16d^2(\alpha)\cos^2(\alpha)+144\quad\to$$
  $$\to\quad d^2(\alpha)=-\frac{144}{7cos^2(\alpha)-16}\quad,\quad\alpha=[0,2\pi)$$
- Grafico della signature.
  Sostituendo $\alpha$ all'interno di $d^2(\alpha)$, con gli intervalli in radianti ($0,\pi/2,\pi,3/2\pi,2\pi$), troviamo una curva sinusoidale, con i punti di flessione
  $$(0,16),\left(\frac{\pi}{2},9\right),(\pi,16),\left(\frac{3}{2}\pi,9\right),(2\pi,16)$$
  ![[Pasted image 20230405185822.png|300]]

---
28/03/2023