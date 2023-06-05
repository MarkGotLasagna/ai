```toc
```

# Consegna
Una funzione $f$ in $\mathbb{R}^2\to\mathbb{R}$ viene definita come $\displaystyle\int_0^x\int_0^y e^{-\alpha^2\beta^2}d\alpha d\beta$. Di questa funzione siamo a corrente del fatto che ha valori ammissibili soltanto per numeri maggiori o uguali a $0$. Esistono ==minimi della funzione==?

- <u>Riscriviamo la consegna</u> in modo compatto.
  $$f(x,y):\mathbb{R}^2\to\mathbb{R}=\displaystyle\int_0^x\int_0^y e^{-\alpha^2\beta^2}d\alpha d\beta\qquad \in\qquad [0,+\infty)$$
- Visualizziamo alcune geometrie di partenza.
  
  | ![[Pasted image 20230605201053.png\|350]]    | ![[Pasted image 20230605225306.png\|350]] |
  | :---: | :-----------------------------------------: |
  |  $e^{-x^2}$   | La funzione gaussiana in 3 dimensioni     |
  
  > [!note] Gaussiana
  Una *funzione gaussiana* è una funzione analitica molto tipica, del tipo $$f(x)=e^{-x^2}$$ con $x$ una funzione quadratica concava, caratteristica per le sue innumerevoli applicazioni, soprattutto nel campo della statistica. Una gaussiana ha diverse peculiarità, quali la sua forma a campana, ma quello più ci riguarda nel contesto della consegna, è il fatto che questa sia una funzione non elementare.
  
  > [!note] Funzioni elementari
  Una funzione, si dice *elementare* nel momento in cui questa può essere rappresentata usando polinomiali, funzioni esponenziali e trigonometriche. Anche espressa come $$a\cdot e^{-\displaystyle\frac{(x-b)^2}{2c^2}}$$
  con $a,b$ costanti e $c$ non-zero, la funzione gaussiana non è elementare in quanto presenta per natura, funzioni a loro volta non elementari quali $e^x$ e $\sqrt{x}$. Lo scopo dell'esercizio non è esaminare le caratteristiche della funzione, ma questi concetti sono necessari per comprendere la risoluzione.
  
  > [!note] Funzione di errore
>   Se la natura della funzione in mano è gaussiana, che sappiamo essere non elementare, allora l'integrale è calcolato con la *funzione di errore*
>   $$\mathtt{erf}\ z=\displaystyle\frac{2}{\sqrt{2}}\int_0^z e^{-t^2}dt$$
>   che ha dominio in $\mathbb{C}$. Questo è dovuto dal fatto che la funzione gaussiana non ha radice reale e quindi l'area sotto il grafico non può essere rappresentata in termini di $\mathbb{R}$.
# Risoluzione
## Integrale della funzione gaussiana
Dalla consegna, possiamo esplicitare qualche passaggio per capire meglio la situazione. L'<u>integrale definito</u> negli intervalli $x$ e $y$ viene preso solo per quei <u>valori</u> che sono $\geq0$
$$\begin{array}{l}\displaystyle\int_0^x\int_0^y e^{-\alpha^2\beta^2}d\alpha d\beta &=& \displaystyle\int_0^x e^{-\beta^2}\underbrace{\int_0^y e^{-\alpha^2}d\alpha d\beta}_{F(y)-F(0)}
\end{array}$$
Ora, supponendo un $t$ piano separante il grafico in parti, possiamo descrivere il comportamento della funzione in base a questo, o meglio: nel momento in cui $t=0$, allora l'integrale sarà <u>nullo</u>, quando invece $t>0$ l'integrale avrà valore <u>strettamente positivo</u>.
$$(1)\quad\begin{cases}
y&=&0 \\
x&=&0
\end{cases}\quad\begin{cases}
f(x,y)=0\\
f(x,y)=0
\end{cases}\quad\textrm{integrazione in }t=0$$
$$
(2)\quad\begin{cases}
y&>&0 \\
x&>&0
\end{cases}\quad\begin{cases}
f(x,y)>0\\
f(x,y)>0
\end{cases}\quad\textrm{integrazione in }t>0
$$
| ![[Pasted image 20230606002424.png\|500]] |
| :-----------------------------------------: |
| $(1)$ Il piano bianco $t$ rappresenta la linea di partenza per l'integrazione: in questo caso, siccome l'intervallo è pari a $0$, il valore dell'intervallo sarà nullo                                          |

| ![[Pasted image 20230606002850.png\|500]] |
| :-----------------------------------------: |
| $(2)$ Il piano è un numero positivo $t$ che descrive l'inizio dell'intervallo d'integrazione: il rettangolo indica la parte di area sotto il grafico che verrà calcolata, così all'infinito                                          |

## Minimi della funzione
Ragionando in 2 dimensioni: un <u>minimo</u> della funzione <u>esiste</u> ed è il punto descritto dai valori $x=y=0$, punto in cui l'esponente della gaussiana è nullo. Un <u>massimo</u> della funzione al contrario <u>non esiste</u>, perché come detto, $x$ tende ad approcciare l'asse delle ascisse senza però mai toccarla.

---
28/03/2023