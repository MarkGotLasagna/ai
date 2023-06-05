```toc
```
# Consegna
Si consideri una funzione continua in $\mathbb{R}^2\to\mathbb{R}$ definita $f(x,y):\displaystyle\int_D (x^2\alpha^2\beta+y^2\alpha\beta^2)d\mathbf{x}d\mathbf{\beta}$ con $D=[0,1][0,1]$. Calcolare il ==minimo della funzione== $f$, contenuta in una palla chiusa $\mathcal{B}$ di raggio $2$ e centro $1,1$.

- Riscriviamo in modo compatto la consegna.
  $$f(x,y):\mathbb{R}^2\to\mathbb{R}=\displaystyle\int_D (x^2\alpha^2\beta+y^2\alpha\beta^2)d\mathbf{x}d\mathbf{\beta}\qquad \in\qquad\mathcal{B}_2[1,1]$$
- La forma dell'equazione è implicita, su degli intervalli $D=[0,1]$. L'integrale rappresenta l'area sottostante una funzione: siccome le variabili sono 2, sappiamo che la risoluzione dovrà essere fatta in relazione di ciascuna. Il nostro obbiettivo è quindi quello di <u>esplicitare un integrale doppio</u> sullo stesso intervallo $D$, per ciascuna variabile presa in esame, ovvero $\alpha$ e $\beta$.
  > [!info] Absement & absity in cinematica (Fisica)
  > 
  > |![[Pasted image 20230605091209.png\|250]]|
  > |:---:|
  > |Absement|
  > 
  > Quando un oggetto nello spazio si muove, il suo spostamento può essere descritto dagli integrali di spostamento e dalle derivate. In inglese, si dice 
  > - "*absement*", la misura di uno spostamento sostenuto di un oggetto dalla sua posizione iniziale ovvero, una misura di quanto lontano e per quanto tempo si è spostato ($\mathrm{m\cdot s}$)$$A=\int x\ \partial t\quad\begin{array}{l} \textrm{con }x\textrm{ un punto nello spazio} \\ \textrm{con }t \textrm{ il tempo} \end{array}$$
  > - "*absity*", la quantità vettoriale di un ordine derivativo inferiore rispetto allo spazio e spostamento, ovvero l'area sottostante il grafico ($\mathrm{m\cdot s}^2$) $$B=\iint x\ \partial t\quad\begin{array}{l} \textrm{con }x\textrm{ un punto nello spazio} \\ \textrm{con }t \textrm{ il tempo} \end{array}$$

# Risoluzione
## Esplicitazione dell'integrale
Per trovare il minimo della funzione, per prima cosa <u>risolviamo l'integrale esplicitato</u>. Non facciamoci spaventare dalla lunghezza: risolviamo i termini uno alla volta, prima integrando in relazione a $\alpha$ e poi in relazione a $\beta$, sullo stesso termine; inoltre, l'integrale è definito in $\mathbb{R}$, quindi <u>qualsiasi sia l'ordine con cui svolgiamo i calcoli non ha alcuna importanza</u>, siccome l'area sotto il grafico rimarrà la stessa.
$$\begin{array}{r l}
f(x,y) &=& \displaystyle\int_0^1\int_0^1 x^2\alpha^2\beta\ d\alpha d\beta+\int_0^1\int_0^1 y^2\alpha\beta^2\ d\alpha d\beta \\
\displaystyle\int_0^1 x^2\alpha^2\beta\ d\alpha=\frac{\beta x^2}{3}
&\to& \displaystyle\int_0^1 \frac{\beta x^2}{3}d\beta+\int_0^1\int_0^1 y^2\alpha\beta^2\ d\alpha d\beta \\
\displaystyle\int_0^1 \frac{\beta x^2}{3}d\beta=\frac{x^2}{6} 
&\to& \displaystyle\frac{x^2}{6}+\int_0^1\int_0^1 y^2\alpha\beta^2\ d\alpha d\beta \\
\displaystyle\int_0^1 y^2\alpha\beta^2\ d\alpha=\frac{\beta^2y^2}{2}
&\to& \displaystyle\frac{x^2}{6}\int_0^1 \frac{\beta^2y^2}{2}d\beta \\
\displaystyle\int_0^1 \frac{\beta^2y^2}{2}d\beta=\frac{y^2}{6}
&\to& \underbrace{\displaystyle\frac{x^2}{6}}_{\geq0}+\underbrace{\displaystyle\frac{y^2}{6}}_{\geq0}
\end{array}$$
|   ![[Pasted image 20230605101938.png\|250]]  | ![[Pasted image 20230605100952.png\|300]] |
| --- |:-----------------------------------------:|
|  La palla in $\mathbb{R}^2$   |              $1/6(x^2+y^2)$               |

## Calcolo del minimo
La ricerca dei minimi viene fatta come al solito, calcolando la derivata parziale della funzione. Ora che abbiamo la funzione esplicitata, questo ci è facile
$$\nabla f(x,y):\displaystyle\frac{x^2}{6}+\frac{y^2}{6}=(\frac{1}{3}x,\frac{1}{3}y)$$
Il fatto che il termine noto non ci sia, è dovuto dall'esplicitazione dell'equazione originale. Ci viene detto inoltre che il dominio con cui stiamo ragionando è quello di una palla
$$\mathcal{B}_2[1,1]=\{(x,y)\in\mathbb{R}^2\mid (x-1)^2+(y-1)^2\leq4 \}$$
per la quale conosciamo già i valori sia di $x$ che per $y$: sono entrambi <u>positivi</u> (dato l'elevamento al quadrato) e lo possono essere <u>arbitrariamente verso un possibile valore minimo</u> che però non potrà mai essere $0$. Questo per dire che il punto trovato è un <u>punto stazionario</u> facente parte del dominio, che però non sarà <u>mai punto minimo</u>.

---
28/03/2023