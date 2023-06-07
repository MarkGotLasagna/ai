```toc
```

# Consegna
Viene fornita una <u>funzione di retroazione</u> con: ingresso una $X(t)$ e uscita una $Y(t)$. La funzione usa l'operatore di somma per calcolare $Y(t)$ e lo fa avendo a disposizione la funzione da controllare $13x$, tramite l'operatore di controllo $-Y'(t)$. Scrivere l'==espressione della risposta== fornita dal filtro, sapendo che l'ingresso è la funzione delta di Dirac.
- Scriviamo la consegna in modo compatto.
  $$B[X(t)+r(t)]=Y(t)\quad\textrm{con}\quad r(t)\gets -Y'(t)\quad\textrm{e}\quad X(t)=\delta(x)$$
- Visualizziamo la geometria del filtro in questione.
  ```mermaid
  flowchart LR
	  Xt(["X(t)"])
	  Xt-->opp(["+"])-->X13(["13x"])-->Yt(["Y(t)"])
	  X13-->YT(["-y'(t)"])-->|"r(t)"|opp
  ```
  Stiamo cercando quell'espressione di $Y(t)$ che sia <u>risposta alla funzione d'ingresso</u> $\delta(x)$. Il fatto che ci sia risposta lo sappiamo a prescindere, quello che la consegna richiede è che si scriva l'equazione in modo esplicito.
  
  > [!note] Funzione di retroazione (sistemi complessi)
  > Un *feedback* avviene quando l'output del sistema viene rediretto come ingresso in una catena di eventi causa-effetto di un circuito ad anello.
  > 
  > ![[Pasted image 20230607113220.png|350]]
  
  > [!note] Delta di Dirac (estratto [[Lezione05]])
  > La funzione $\delta$ di Dirac in sé, non esiste, ma esiste la sua distribuzione. Questa si comporta come una funzione, che se arriva a un risultato, esisterà.
  > 
>  ![[Pasted image 20230313172908.png|200]]
>  Il risultato si annulla tranne che in un unico punto, $x_0$. La funzione $\delta$ la prendiamo in un modo tale che: calcolata per un altra funzione, ci dia il valore della funzione in $x_0$ mantenendo la $\delta$, richiedendo il comportamento del filtro identità.
>  
>  (Osserviamo l'immagine) La $\delta$ di Dirac la possiamo rappresentare in un grafico cartesiano, siccome esiste in tutti i punti tranne che in uno solo, dove non possiamo dire quanto vale. La base del grafico può stringersi, causando a sua volta la freccia ad alzarsi sempre di più, perché l'area del grafico deve rimanere la stessa (stiamo comunque calcolando un integrale).
>  
>  Il calcolo delle rerivate viene esteso anche a funzioni che normalmente non sarebbero derivabili. Se $h$ è la funzione di Heaviside, allora
>  $$h'(x)=\delta(x)$$  
  
# Risoluzione
Possiamo <u>riscrivere la consegna</u> prendendo conto del feedback $-Y'(t)$ verso l'ingresso in operatore somme $r(t)$. Facendo così, stiamo dicendo la stessa cosa ma includendo tutte le variabili che prima erano scritte a parte.
$$\begin{array}{l}
\textrm{Funzione retroazione}& B[X(t)+r(t)]=Y(t)\\
\xrightarrow{-Y'(t)\to r(t)}& BX(t)-BY'(t)=Y(t)
\end{array}$$
Notiamo che nell'equazione una derivata è presente. L'<u>operatore di controllo</u>, feedback della funzione, viene <u>derivato</u>: questo non è altro se non la <u>Delta di Dirac</u> $\delta(t)$, funzione infatti d'ingresso. Sulla base di questo ragionamento, capiamo che stiamo ragionando su <u>funzioni gaussiane</u> e più precisamente, la funzione di Heaviside $H(t)$, che ha formalmente un solo valore non determinabile, lo $0$, che è esattamente espresso dalla derivata, appunto la Delta di Dirac.
$$\begin{array}{lrl}
& BY'(t)+\displaystyle\frac{Y(t)}{13}&=&B\delta(t)\\
\xrightarrow{}& Y'(t)+\displaystyle\frac{Y(t)}{13}&=&\delta(t)
\end{array}$$
Una funzione gaussiana è tipicamente della forma $e^{-x^2}$: usiamo questa per rappresentare l'equazione sopra, siccome abbiamo determinato che le funzioni involte hanno questa rappresentazione.
$$\begin{array}{lrl}
\xrightarrow{e^{-x^2}}& 0+\displaystyle\frac{e^{-x/13}}{13}&=&\delta e^{-x/13}\\
\xrightarrow{}& Y(t)&=&\displaystyle e^{-x/13}H(t)
\end{array}$$
Abbiamo esplicitato il valore della risposta al feedback.

---
28/03/2023