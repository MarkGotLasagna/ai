```toc
```

# Consegna
Viene fornita una funzione $\mathbb{R}^2\to\mathbb{R}:f(x,y)$ con le seguenti proprietà: 
- la funzione calcolata in $f(0,0)$ vale $8$, e
- il gradiente della funzione è $\nabla f(x,y)=(6(x-1),10(y+1))$

Sapendo ciò, calcolare la <u>norma quadro</u> del gradiente $\nabla f(x,y)$. 
Esistono punti stazionari? Se sì, dimostrarne l'esistenza.

# Risoluzione
- La norma quadro del gradiente è semplicemente calcolata <u>elevando il gradiente alla seconda</u>, in quanto la radice della funzione "norma", viene cancellata dall'elevamento alla potenza.
  > [!note] Norma euclidea
  > Compreso il fatto che $\mathbb{R}^n$ sia uno *spazio vettoriale*, per definire la sua lunghezza di un vettore $\mathbf{x}$ usiamo la **norma euclidea**:
> $$||\mathbf{x}||\triangleq\sqrt{\sum_{i=1}^{n}x^2_i}$$

  $$\begin{array}{l}
  ||\nabla f(x,y)||^2 &\triangleq& \left( \sqrt{\sum(\nabla f(x,y)})^2\right)^2\\
  &\to& \displaystyle\left(\sum\nabla f(x,y) \right)^2\\
  &\to& \displaystyle36(x-1)^2+100(y+1)^2
  \end{array}$$
- I <u>punti stazionari esistono</u> e lo possiamo notare subito in quanto fornitoci il gradiente.
  $$\nabla f(x,y)=(6(x-1),10(y+1))$$$$f(x,y)=\begin{cases}
   6(x-1)=0 \\
   10(y+1)=0 
 \end{cases}\begin{cases}
 x=1 \\
 y=-1
 \end{cases}$$
 Una descrizione più accurata dei punti stazionari, può essere fatta, se prendiamo le <u>derivate parziali</u>, considerando come costanti prima $x$ e poi $y$. L'operazione che stiamo per fare, conferma l'esistenza dei punti stazionari <u>integrando</u> sulle derivate, ottenendo così la funzione originale.
 $$\begin{array}{l}
 \displaystyle\frac{\partial f}{\partial_y x}(x,y)d\mathbf{x} &=& \displaystyle\int 6(x-1)d\mathbf{x} \\
 &=& \displaystyle 6(\displaystyle\frac{1}{2}x^2-x)+\mathcal{K}_x(\mathbf{y})\quad \textrm{con }\mathcal{K}_x(\mathbf{y})\textrm{ costante = 0}\\
 &=& \displaystyle 3x^2-6x+\mathcal{K}_x(\mathbf{y}) \\
 \displaystyle\frac{\partial f}{\partial_x y}(x,y)d\mathbf{y} &=& \displaystyle\int 10(y+1)d\mathbf{y} \\
 &=& \displaystyle 10(\displaystyle\frac{1}{2}y^2+y)+\mathcal{K}_y(\mathbf{x}) \quad \textrm{con }\mathcal{K}_y(\mathbf{x})\textrm{ costante = 0}\\
 &=& \displaystyle 5y^2+10y+\mathcal{K}_y(\mathbf{x})
 \end{array}$$
 Il fatto che $\mathcal{K}_x(\mathbf{y})$ e $\mathcal{K}_y(\mathbf{x})$ siano costanti, è dovuto dalla definizione di derivata parziale stessa: una delle due variabili è impostata a $0$; quindi quello che sarebbe stato il termine risultato dell'integrazione $c$, è ora costante a nome $\mathcal{K}$. Questo termine sappiamo bene qual è dalla consegna dell'esercizio: è il <u>termine noto</u> calcolato in $f(0,0)$, ovvero $8$.
 $$\begin{array}{l}
 \bar{f}(x,y) &\stackrel{\qquad\ \ \ \ }=& 3x^2-6x+5y^2+10y+\mathcal{K}\\
 &\stackrel{f(0,0)=8}=& 3x^2-6x+5y^2+10y+8
 \end{array}$$
 | ![[Pasted image 20230604201147.png\|400]] |
 | ----------------------------------------- |
 | Notare l'esistenza del punto stazionario, in prossimità $(1,-1)$                                          |

  <u>Dimostrare</u> che l'equazione trovata, sia legata a gradiente e termine noto originali, è facile e per farlo <u>è sufficiente derivare</u>.

---
28/03/2023