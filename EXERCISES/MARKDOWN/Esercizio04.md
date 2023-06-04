```toc
```

> [!abstract] Mathematica per la rappresentazione dei grafici
> Nel caso foste interessati a vedere voi stessi la funzione, potete passare i seguenti comandi a https://mathematica.wolframcloud.com . Alternativamente, consiglio di utilizzare i programmi forniti nella cartella `/src` della repository.
> ```
> f := x^2 - 40*x + 4*y^2 + 400
Plot3D[f, {x, -1, 41}, {y, -1, 1}, BoxRatios -> {10, 10, 4}, 
 ColorFunction -> Function[{x, y, z}, Hue[.65 (1 - z)]], 
 AxesLabel -> Automatic, PlotLabel -> f, 
 PlotStyle -> PointLight[White, {1, 1, 1}]]
> ```
> ```
> Show[%133, ViewPoint -> {0, 0, \[Infinity]}]
> ```

# Consegna
Viene fornita una funzione del tipo $\mathbb{R}^2:x^2-40x+4y^2+400$. Calcolare il gradiente della funzione, indicando quali sono (e se ci sono), punti di simmetria.

# Risoluzione
## Simmetria della funzione
Dalla consegna possiamo dedurre che l'equazione ha un <u>qualche cosa di speciale</u>. In particolare, notiamo che questa può essere riscritta in una forma semplificata del tipo:
$$(x-x_0)^2+(y-y_0)^2$$
Lo si può sospettare, in quanto $(20)^2=400$, e $(20)*2=40$.
Numeri "grandi" non ci devono spaventare, in quanto sappiamo che molto probabilmente possiamo raccoglierli in qualcosa di più semplice. Trasformiamo ora l'equazione basandoci su ciò che è stato detto:
$$x^2-40x+4y^2+400 \xrightarrow{(x-x_0)^2+(y-y_0)^2} (x-20)^2+(2y-0)^2$$
- Abbiamo ridotto l'equazione in una di più facile comprensione, dalla quale possiamo dedurre che le 2 radici per $x$ e $y$, valgono rispettivamente:
  $$\begin{array}{l}
  (x-20)^2 &\to& \underbrace{x^2}_{a}-\underbrace{40x}_{b}+\underbrace{400}_{c} &\to& x=\displaystyle\frac{-b\pm\sqrt{b^2-4ac}}{2a}\\
  &&&\to& x=20\\
  (2y-0)^2 &\to& \underbrace{4y^2}_{a}-\underbrace{0}_{b}+\underbrace{0}_{c} &\to& y=\displaystyle\frac{-b\pm\sqrt{b^2-4ac}}{2a}\\
  &&&\to& y=0
  \end{array}$$
- Visualizziamo la geometria dei punti appena trovati.
  Possiamo dire subito che l'aspetto sarà quello di un paraboloide ellittico.
  
  | ![[Pasted image 20230604182805.png\|500]]                                                                                                     |
  | :---------------------------------------------------------------------------------------------------------------------------------------------: |
  | Il grafico interseca in un punto, l'asse delle ascisse $x=20$, come se stessimo lavorando con una parabola, il nostro grafico ha la simmetria rispetto le ordinate|
  
  | ![[Pasted image 20230604182900.png\|300]] |
  | :------------------------------------: |
  |       Vista ortografica dall'alto                               |
  
## Gradiente della funzione
La <u>derivata parziale</u> della funzione, tenendo conto delle costanti:
$$\nabla f(x,y):x^2-40x+4y^2+400=(2(x-20),8y)$$
$$f(x,y)=\begin{cases}
2(x-20)=0\\
8y=0
\end{cases}
\begin{cases}
x=20\\
y=0\end{cases}$$
Il punto stazionario esiste ed è esattamente la radice dell'equazione, calcolata in alto. Sostituendo il punto stazionario $x=20$, verificheremmo che questo è parte della funzione.

---
28/03/2023