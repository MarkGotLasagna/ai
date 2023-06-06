```toc
```
# Consegna
Due funzioni $h$ funzione di Heaviside e $r$ sono definite in $\mathbb{R}\to\mathbb{R}$. La funzione $r$ valutata in $x$ vale $h(x-2)-h(x-4)$. ==Cercare una terza funzione== $f:\mathbb{R}\to\mathbb{R}$ tale per cui l'operazione $(f\star r)(t)$ sia uguale a $3$.
- Riscriviamo la consegna in modo compatto.
  $$\begin{array}{l}
  (1)& h:\mathbb{R}\to\mathbb{R}&\textrm{funzione di Heaviside}\\
  (2)& r:\mathbb{R}\to\mathbb{R}&\textrm{per cui}\quad r(x)=h(x-2)-h(x-4)\\
  (?)& f:\mathbb{R}\to\mathbb{R}&\textrm{per cui}\quad (f\star r)(t)=3
  \end{array}$$
- La funzione di Heaviside la conosciamo e sappiamo che la sua caratteristica è quella di assumere <u>valore soltanto per i positivi</u>.
  
  |  ![[Pasted image 20230606185627.png\|300]]   | ![[Pasted image 20230606184349.png\|300]]                                        |
  | :---: | :--------------------------------------------------------------------------------: |
  |  La funzione di Heaviside $H(x)$: in blu quando vale $0$, in rosso quando vale $1$  | Il comportamento in 3 dimensioni |
  
  > [!note] Heaviside Step Function $H(x)$ (estratto [[Lezione07]])
  > ![[Pasted image 20230321185956.png|150]]
  >Il fatto che si chiamino funzioni di attivazione deriva dal fatto che il neurone si attiva come se avesse una soglia: a input sufficientemente forti, il neurone si attiverà e produrrà una risposta forte e immediata (si dice che il neurone "spara").
  >La funzione di Heaviside ha questo comportamento in modo estremo: l'uscita è $0$ finché l'input è negativo e appena diventa positiva, spara.
  
- Dalla consegna ci viene detto che $r(x)=h(x-2)-h(x-4)$ con $h$ funzione di Heaviside. La situazione può essere rappresentata: $h$ subisce un <u>movimento netto orizzontale</u>, quindi in base alle ascisse. La proprietà di avere un valore solo per positivi è stata alterata.
  
  | ![[Pasted image 20230606190414.png\|300]] |  ![[Pasted image 20230606190531.png\|300]]   | 
  |:-----------------------------------------:| :---: |
  |                 $h(x-2)$                  |   $h(x-4)$  |

- Ci viene chiesto di trovare un $f$ tale per cui $(f\star r)(t)=3$. Noi sappiamo ricondurre il concetto al prodotto di convoluzione: in particolare, ci viene chiesto di trovare quella funzione $f$ che abbia $3$ come <u>risultato del prodotto di convoluzione</u>.
   > [!note] Prodotto di convoluzione (estratto [[Lezione05]])
   > ![[Pasted image 20230313152729.png|200]]
>  Prendiamo due funzioni $f,g:\mathbb{R}^n\to \mathbb{R}$, da queste possiamo costruire una terza funzione che chiamiamo prodotto di convoluzione o convoluzione tra $f$ e $g$ con l'integrale seguente
>  $$(f\star g)(\mathbf{x})\triangleq \int_\mathbb{R^n}f(\mathbf{v})g(\mathbf{x}-\mathbf{v})\ \mathrm{d}^n\mathbf{v}=\int_\mathbb{R^n}f(\mathbf{x}-\mathbf{v})\ g(\mathbf{v})\ \mathrm{d}^n\mathbf{v}$$

  > [!note] Funzione a supporto compatto (estratto [[Lezione05]])
  > 
  > | ![[Pasted image 20230313165723.png\|200]] |
>  | ----------------------------------------- |
>  | Un esempio di funzione a supporto compatto                                          |
>
>  La convoluzione è interessante, quando almeno una delle due funzioni, assume il ruolo di funzione a supporto compatto, ovvero una funzione la quale assume valore nullo al di fuori di un insieme compatto, detto supporto (della funzione).
>
>Un esempio è la funzione porta unitaria
>$$r(x)=\begin{cases}1\quad \mathrm{se}\quad |x|<1/2 \\		1/2\quad \mathrm{se}\quad |x|=1/2\\0\quad \mathrm{altrove}\end{cases}$$

# Risoluzione
## Integrale del supporto compatto
Ora che il nostro obbiettivo è stato identificato, procediamo con la risoluzione. L'operazione di convoluzione sappiamo già cosa risulta, ma non sappiamo bene quali sono le funzioni che vi prendono parte, o meglio, sappiamo il valore $r$ ma non di $f$: per trovarlo <u>usiamo l'integrale</u>. Il valore parametrico $t$ servirà per rappresentare la $x$ in base allo spostamento rispetto $\alpha$.
$$\begin{array}{l}
(f\star r)(t)&\xrightarrow{\int_{-\infty}^{+\infty}}& \displaystyle\int_{-\infty}^{+\infty}f(t-\alpha)r(\alpha)\ d\alpha\\
&\xrightarrow{r(\alpha)=1}& \displaystyle\int_{2}^{4}f(t-\alpha)\ d\alpha
\end{array}$$
Possiamo convertire la sottrazione, sostituendola con un valore simbolico $\beta$, per aiutarci siccome valori dell'integrale disgiunti, per un $f$, non sono facili da determinare analiticamente. Inoltre, poniamo cura a <u>invertire gli intervalli d'integrazione</u>, in quanto il valore calcolato non vogliamo sia preso dal punto di vista contrario. Riscriveremo poi la funzione $f(x)$ derivata di una $F$ che prenda in ingresso lo spostamento orizzontale, per poi lavorare su quale sia il valore di $x$ effettivo. Questo lo facciamo sempre perché a noi quello che interessa è il <u>valore effettivo della funzione</u> e non il valore dell'integrale: derivando lo produrremo.
$$\begin{array}{l}
& \xrightarrow{\beta=t-\alpha} & \displaystyle\int_{t-2}^{t-4} f(\beta)\ d\beta \\
& \xrightarrow{(t-2)\leftrightarrow(t-4)} & \displaystyle\int_{t-4}^{t-2}f(\beta)\ d\beta \\
& \xrightarrow{F(t-\alpha)} & F(t-2)-F(t-4) \\
& \xrightarrow{(f\star r)(t)=3} & t-3
\end{array}$$
## Porta unitaria
Per supposizione, esploriamo ora alcune possibilità, che possano rendere la proposizione $t-3$ vera: che valore deve assumere $F(x)$? Nel momento in cui la troviamo, deriviamo per <u>verificare la regola del differenziale</u>. 
$$\begin{array}{l}
(1)& F(x)=x &\xrightarrow{}& F(t-2)-F(t-4)=t-2-t+4=-6 & \times\\
(2)& F(x)=\alpha x &\xrightarrow{}& F(t-2)-F(t-4)=t-2-t+4=-6\alpha & \times\\
(3)& F(x)=x^2 &\xrightarrow{}& F(t-2)^2-F(t-4)^2=4t-12 & \times\\
(4)& F(x)=\displaystyle\frac{x^2}{4} &\xrightarrow{}& F(t-2)-F(t-4)=t-3\\
&f(x)=\displaystyle \frac{x}{2}& \xrightarrow{} & F(t-2)-F(t-4)=t-3
\end{array}$$
La <u>porta unitaria</u> avrà le seguenti proprietà
$$f(x)\begin{cases}
1 & x=0 \\
1/2 & \mathrm{altrove}
\end{cases}$$
Abbiamo trovato i valori della funzione, espressi come funzione a supporto compatto.

---
28/03/2023