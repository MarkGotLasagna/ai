```toc
```

> [!abstract] Mathematica per la rappresentazione dei grafici
> Nel caso foste interessati a vedere voi stessi la funzione, potete passare i seguenti comandi a https://mathematica.wolframcloud.com . Alternativamente, consiglio di utilizzare i programmi forniti nella cartella `/src` della repository.
> ```
> Plot3D[{x^2 - 40 x + 4 y^2 + 400}, {x, -20, 60}, {y, -2, 1},  
>	PlotRange -> All, AxesLabel -> {x, y},  
>	PlotLabel -> x^2 - 40 x + 4 y^2 + 400,  
>	ColorFunction -> "BlueGreenYellow"]
> ```
> ```
> Show[%31,ViewPoint->{0,0,\[Infinity]}]
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
  
  | ![[Pasted image 20230603194609.png]]                                                                                                     |
  | :---------------------------------------------------------------------------------------------------------------------------------------------: |
  | Il grafico interseca in un punto, l'asse delle ascisse $x=20$, come se stessimo lavorando con una parabola, il nostro grafico ha la simmetria rispetto le ordinate|
  
  | ![[Pasted image 20230603194948.png]] |
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
x=0\\
y=0
\end{cases}\quad\to\quad f(0,0)=400$$
Un punto globale non lo abbiamo trovato ma se non altro, sappiamo qual'è il gradiente della funzione, siccome richiestoci di calcolare.

---
28/03/2023