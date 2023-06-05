```toc
```
# Consegna
Data una funzione lineare $f$ del tipo $\mathbb{R}^2\to\mathbb{R}$ definita $3x^2-2y^2+7$, trovarne il ==punto massimo==, considerandola inclusa in un compatto $\mathcal{D}$ definito da $[1,1][-1,1]$.
- <u>Riscriviamo</u> la <u>consegna</u> per renderla più leggibile.
  $$f(x,y):\mathbb{R}^2\to\mathbb{R}=3x^2-2y^2+7\quad\in\quad \mathcal{D}[1,1][-1,1]$$
- L'insieme su cui la funzione è definita, è chiuso e limitato.
  > [!note] Insieme "compatto" (estratto [[Lezione04]])
  > $\mathit{K}\subseteq \mathbb{R}^n$ di dice *compatto* se è chiuso e limitato
  
  Per essere più precisi, la forma dell'insieme con cui stiamo lavorando, è quella di una <u>scatola chiusa</u>; lo notiamo siccome le coordinate forniteci sono vettoriali: i punti che definiscono l'incontro tra questi vettori, sono tutte le possibili combinazioni delle componenti.
  > [!note] "Scatola chiusa" (estratto [[Lezione04]])
 >  $$(\mathbf{x},\mathbf{y})=\{\mathbf{v}\in \mathbb{R}^n:\underline{v}_1\leq v_1\leq \overline{v}_2\wedge \underline{v}_2\leq v_2\leq \overline{v}_2\wedge \cdots \wedge \underline{v}_n\leq v_n\leq \overline{v}_n\}$$
 
 I punti d'incontro sono: $[(1,1),(-1,1),(-1,-1),(1,-1)]$.
- Visualizziamo le geometrie per aiutare la comprensione.
  
  | ![[Pasted image 20230405102958.png\|250]] |   ![[Pasted image 20230405103412.png\|350]]  | 
  | ----------------------------------------- | --- |
  | La scatola ha 4 confini                  |  La funzione $f(x,y)$ è una sella   |

# Risoluzione
1. Calcolo del gradiente.
   Per trovare un massimo all'interno dello spazio definito dalla scatola, ci serve determinare le <u>derivate parziali</u> della nostra funzione.
   $$\nabla f(x,y):3x^2-2y^2+7=(6x,-4y)$$
   $$f(x,y)=\begin{cases}
   6x=0 \\
   -4y=0 
 \end{cases}\begin{cases}
 x=0 \\
 y=0
 \end{cases}\quad\to\quad f(0,0)=7$$
 Siccome i parametri sono liberi, significa che qualsiasi valore assegniamo a $x$ o $y$ non ha importanza, i <u>punti massimi</u> saranno a prescindere <u>sui bordi della scatola chiusa</u>.
2. Equazione per ciascun confine.
   Sapendo che i nostri confini sono 4, ci serve <u>calcolare tutte le possibili dinamiche</u> che possono avvenire su di questi: in modo alternato, fissiamo prima $x$ come costante a $[1,-1]$ e poi facciamo lo stesso per $y$.
   
   | $$A$$                 | $$B$$                  | $$C$$                   | $$D$$                   |
   | --------------------- | ---------------------- | ----------------------- | ----------------------- |
   | $$x=1,-1\leq y\leq1$$ | $$y=1,-1\leq x\leq 1$$ | $$x=-1,-1\leq y\leq 1$$ | $$y=-1,-1\leq x\leq 1$$ |
   | $$f(1,y):-2y^2+10$$   | $$f(x,1):3x^2+5$$      | $$f(-1,y):-2y^2+10$$    | $$f(x,-1):3x^2+5$$      |
   | ![[Pasted image 20230405114835.png\|150]]                      |           ![[Pasted image 20230405115440.png\|150]]             |          ![[Pasted image 20230405115107.png\|150]]               |          ![[Pasted image 20230405115509.png\|150]]               |
   
3. Calcolo dei punti.
   I <u>massimi</u> non potranno che essere i <u>vertici</u>. Questi li possiamo trovare calcolando la coordinata $x$, sostituendola poi all'interno delle equazioni.
   $$P=\left(-\frac{b}{2a},-\frac{\Delta}{4a}\right)$$
   $$\begin{cases}
   A:x=-\frac{0}{2[-2]}=0 \\
   B:x=-\frac{0}{2[3]}=0 \\
   C:x=-\frac{0}{2[-2]}=0 \\
   D:x=-\frac{0}{2[3]}=0
   \end{cases}\quad\to\quad\begin{cases}
   A:f(1,y)=-2[0]^2+10=10 \\
   B:f(x,1)=3[0]^2+5 = 5 \\
   C:f(-1,y)=-2[0]^2+10=10 \\
   D:f(x,-1)=3[0]^2+5 = 5 \\
   \end{cases}\quad\to\quad A,C$$
---
28/03/2023