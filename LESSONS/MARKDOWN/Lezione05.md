```toc
```
# Integrali Definiti di Funzioni Reali di Più Variabili
## Integrale definito
![[Pasted image 20230313142257.png|300]]
Viste nella scorsa lezione, le derivazioni di variabili, in questa ci concentreremo sulle integrazioni di variabili. Se identifichiamo due variabili $x,y$ e una zona del piano su cui vogliamo sviluppare un integrale insieme alla funzione $f$ associata, possiamo calcolare il volume che viene rappresentato dal rettangolo.
$$\int_D f(\mathbf{x})\ \mathrm{d}^n\mathbf{x}$$
L'**integrale definito**, prende una funzione definita su un aperto $f:S\to \mathbb{R}$ che contiene un compatto $D\subseteq \mathbb{R}^n$, per dare un senso alla continuità sulla frontiera.

Se esiste il limite, allora esisterà l'integrale, che per comodità ci è più semplice calcolare su una scatola chiusa, definita da 2 vettori $\mathbf{v,w}\in \mathbb{R}^n$, tra gli estremi $\underline{x}_i=\mathtt{max}(v_i,w_i)$ e $\bar{x}_i=\mathtt{min}(v_i,w_i)$.
$$\int_D f(\mathbf{x})\ \mathrm{d}^n\mathbf{x}=\int_{\underline{x}_1}^{\bar{x}_1}\int_{\underline{x}_2}^{\bar{x}_2}\cdots\int_{\underline{x}^n}^{\bar{x}^n}f(\mathbf{x})\ \mathrm{d}x_n\mathrm{d}x_{(n-1)}\cdots\mathrm{d}x_1$$
Come per le derivate parziali, calcoliamo solo la primitiva che ci interessa, per una variabile che ci interessa. Non importa l'ordine per cui calcoliamo gli integrali perché il risultato sarà sempre lo stesso.
> [!example] Esempio di calcolo dell'integrale
> Vogliamo calcolare l'integrale su un dominio scatola chiusa.
> $$\mathbf{v}=(2,4)\quad \mathbf{w}=(3,5)\quad D=[\mathbf{v},\mathbf{w}]\subseteq \mathbb{R}^2$$ 
> Se volessimo disegnare il rettangolo, 
> questo avrebbe base compresa tra (2,4) e altezza (3,5).
> 
> Decidendo l'ordine con cui integriamo, svolgiamo prima l'integrale più interno in intervallo (4,5) per $\mathrm{d}y$, poi passando a quello più esterno $\mathrm{d}x$.
> $$\int_D(x^3+y^2)\mathrm{d}x\mathrm{d}y=\int_2^3\int_4^5 (x^3+y^2)\mathrm{d}x\mathrm{d}y=\int_2^3 \left(x^3+\frac{61}{3}\mathrm{d}x\right)=\frac{439}{12}$$

## Insieme di punti numerabile e mancante
Considerando un compatto $D\subseteq \mathbb{R}^n$ e un aperto che lo contiene $D\subset S$, due funzioni continue $f,g:S\to \mathbb{R}$ avranno lo stesso valore integrale, per un numero arbitrario numerabile di punti eliminati da una o dall'altra funzione.
$$\int_D g(\mathbf{x})\mathrm{d}^n\mathbf{x}=\int_D f(\mathbf{x})\mathrm{d}^n\mathbf{x}$$
Anche se una delle due non fosse continua, la proposizione avrebbe comunque senso: l'insieme di punti che non compaiono su $f$, rendono il contributo per l'integrale di $g$, nullo, e quindi le due avranno stesso valore dell'integrale su tutta la superficie.

## Integrale improprio
![[Pasted image 20230313150607.png|250]]
Per un insieme limitato $L\subseteq \mathbb{R}^n$ e un insieme su cui è definita la funzione $f:D\to \mathbb{R}^n$, chiamiamo l'**integrale improprio**, il valore a cui tende il limite dell'integrale verso infinito, della nostra funzione.
$$\int_D f(\mathbf{x})\mathrm{d}^n\mathbf{x}\triangleq\lim_{\mathbf{v}\to \infty}\int_{[-\mathbf{v},\mathbf{v}]\cap D}f(\mathbf{x})\mathrm{d}^n\mathbf{x}$$
(Osserviamo l'immagine) Nel caso $\mathbb{R}^2$, la regione colorata assumerà un valore pari  $\int_0^\infty\frac{dx}{1+x^2}$.

## Convoluzione tra funzioni
![[Pasted image 20230313152729.png|350]]
Prendiamo due funzioni $f,g:\mathbb{R}^n\to \mathbb{R}$, da queste possiamo costruire una terza funzione che chiamiamo ==prodotto di convoluzione== o **convoluzione tra $f$ e $g$** con l'integrale seguente
$$(f\star g)(\mathbf{x})\triangleq \int_\mathbb{R^n}f(\mathbf{v})g(\mathbf{x}-\mathbf{v})\ \mathrm{d}^n\mathbf{v}=\int_\mathbb{R^n}f(\mathbf{x}-\mathbf{v})\ g(\mathbf{v})\ \mathrm{d}^n\mathbf{v}$$
(Osserviamo l'immagine) Immaginiamo che la funzione a linea retta sia $f$ e che quella in basso sia $g$. Ora immaginiamo di "specchiare" $g$. Da un punto di partenza quale $\mathbf{x}$, trasliamo lentamente sul piano la nostra funzione $g$. L'area colorata in verde, equivale al valore del prodotto di convoluzione tra $f$ e $g$, che se rappresentato, assume la forma di una funzione che descrive l'andamento.

Il fatto che la convoluzione sia un prodotto, significa che alcune delle proprietà della moltiplicazione ci tornano utili. Derivare la convoluzione di due funzioni per il rapporto in una variabile, equivale a prima derivare una funzione per la stessa variabile, e poi farne il prodotto di convoluzione per l'altra funzione, o scritto in termini semplici
$$\frac{\partial(f\star g)}{\partial x}=\frac{\partial f}{\partial x}\star g=f\star\frac{\partial g}{\partial x}$$
## Filtro e risposta impulsiva (del filtro)
Chiamando $T_r$ l'*operatore di traslazione* di $\mathbf{r}\in \mathbb{R}^n$ che opera su funzioni reali
$$(T_rf)(\mathbf{x})=f(\mathbf{x}-\mathbf{r})$$
viene fatta valere la seguente proprietà della convoluzione
$$T_r(f\star g)=f\star T_rg=T_rf\star g$$
Quando la convoluzione con una funzione $g$ viene usata per descrivere questo tipo di trasformazione, la trasformazione prende normalmente il nome di **filtro** e la funzione $g$ viene detta ==risposta impulsiva== (del filtro). I nomi sono proprio intesi per quello che fanno: dato un certo input, l'output verrà traslato a sua volta di una certa quantità.

Esempi classici di filtro li troviamo in software come Photoshop, nella riduzione del rumore, modifica del contrasto, blur Gaussiano, o anche sui social come Instagram, per rendere le pelli più liscie e senza difetti. Filtri del rumore sono quelli applicati dai mixer del volume e sono la base che hanno fatto nascere la musica elettronica in primo luogo.

## Funzione a supporto compatto
| ![[Pasted image 20230313165723.png\|250]] |
| ----------------------------------------- |
| Un esempio di funzione a supporto compatto                                          |

La convoluzione è interessante, quando almeno una delle due funzioni, assume il ruolo di ==funzione a supporto compatto==, ovvero una funzione la quale assume valore nullo al di fuori di un insieme compatto, detto *supporto* (della funzione).

Un esempio è la funzione *porta unitaria*
$$r(x)=
\begin{cases}
	1\quad \mathrm{se}\quad |x|<1/2 \\
		1/2\quad \mathrm{se}\quad |x|=1/2\\
		0\quad \mathrm{altrove}
\end{cases}
$$
per cui ci viene detto che valori assume nell'intervallo $-1/2,1/2$ e altrove.
## Funzione gradino unitario
| ![[Pasted image 20230313165215.png\|250]] |
| ----------------------------------------- |
| Visualizzazione della cancellazione dei rumori                                          |
È molto comune fare questo tipo di convoluzione, in quanto la forma generata è un rettangolo di area 1. La funzione può essere descritta anche in termini di $h$ a nome **funzione gradino unitario** (o funzione di Heaviside)
$$h(x)=
\begin{cases}
	1\quad \mathrm{se}\quad x>0 \\
		1/2\quad \mathrm{se}\quad x=0\\
		0\quad \mathrm{altrove}
\end{cases}
$$
dove vale 0 per $x$ negativi, 1 per positivi e spesso $1/2$ per valori nulli.
La convoluzione ci permette di calcolare la media tra $-1/2$ e $1/2$.
$$(f\star g)(x)=\int_{-\infty}^{\infty}f(v)r(x-v)\mathrm{d}v=\int_{x-\frac{1}{2}}^{x+\frac{1}{2}}f(v)\mathrm{d}v$$
Se volessimo calcolare una media che si sposta al variare di $x$ in un intervallo d'ampiezza $w$, ci basta cambiare la variabile della funzione $r$ considerata (media mobile intervallo ampiezza $w$)
$$\frac{1}{w}\int_{-\infty}^{\infty}f(v)r\left(\frac{x-v}{w}\right)\mathrm{d}v=\frac{1}{w}\int_{x-\frac{w}{2}}^{x+\frac{w}{2}}f(v)\mathrm{d}v$$
Un esempio pratico di media mobile è quella applicata alla soppressione del rumore, nei filtri per l'input audio: l'output in entrata passa per questa media che filtra la frequenza indesiderata. Serve quindi fare una valutazione di quanto della frequenza originale, bisogna eliminare/attutire le frequenze.
## Kernel di convoluzione
La convoluzione permette di calcolare alcune proprietà locali di una funzione $f:\mathbb{R}^n\to\mathbb{R}$ intorno a vettore fissato come riferimento mobile mediante una funzione $g:\mathbb{R}^n\to\mathbb{R}$ a supporto compatto che prende il nome di **kernel** (o nucleo) **di convoluzione**. Ridurre l'ampiezza della funzione da studiare, ci torna molto comodo perché abbiamo meno pesi da imparare.
## Convoluzione discreta
| ![[Pasted image 20230323204348.png\|350]] |
| ----------------------------------------- |
| Una convoluzione matriciale                                          |

La convoluzione può essere estesa a successioni di valori reali, definite con indici in $\mathbb{Z}$.
Detto ciò, ci è possibile generalizzare i simboli degli integrali, con i simboli della somma, per mostrare come venga svolta una **convoluzione discreta** tra matrici
$$(A\star B)_{r,c}=\sum_{i=1}^{n}\sum_{j=1}^{m}A_{i,j}B_{r-i,c-j}=\sum_{i=1}^{s}\sum_{j=1}^{t}A_{r-c,c-j}B_{i,j}$$
# Distribuzioni
Quando si parla di filtri e convoluzioni, esce sempre il concetto di ==distribuzione==.

Se volessimo realizzare un filtro, quale deve essere la risposta impulsiva che me lo genera? Prendendo un *filtro identità*, per cui data un'immagine ne restituisce una copia identica, <u>ipotizziamo</u> che esista una funzione $\delta:\mathbb{R}\to \mathbb{R}$ tale per cui dato un input, l'output sarà identico.
$$f(x)=(f\star g)(x)=\int_{-\infty}^{+\infty}f(v)\delta(x-v)\ \mathrm{d}v$$
L'unica cosa che sopravviverà da questo integrale, sarà $f(x)$: il $\delta$ sarà uguale a $0$ in tutti i punti tranne che per $x$, un punto solo. Usando le nozioni imparate all'inizio della lezione, in particolare il fatto che due integrali siano identici per un insieme differente di punti numerabili, giungiamo alla conclusione che quello su cui stiamo ragionando, <u>effettivamente non esiste</u> e ce lo stiamo immaginando: la risposta impulsiva a nome $\delta$ che stiamo cercando, non esiste.

> [!note] Il ragionamento che stiamo facendo, non differisce in alcun modo dal ragionamento che si fa con i numeri immaginari.

La funzione **$\delta$ di Dirac** in sé, non esiste, ma esiste la sua distribuzione. Questa si comporta come una funzione, che se arriva a un risultato, esisterà.

![[Pasted image 20230313172908.png|300]]
Il risultato si annulla tranne che in un unico punto, $x_0$. La funzione $\delta$ la prendiamo in un modo tale che: calcolata per un altra funzione, ci dia il valore della funzione in $x_0$ mantenendo la $\delta$, richiedendo il comportamento del filtro identità.
$$\int_{-\infty}^{+\infty}f(x)\delta(x-x_0)\ \mathrm{d}x=f(x_0)$$
(Osserviamo l'immagine) La $\delta$ di Dirac la possiamo rappresentare in un grafico cartesiano, siccome esiste in tutti i punti tranne che in uno solo, dove non possiamo dire quanto vale. La base del grafico può stringersi, causando a sua volta la freccia ad alzarsi sempre di più, perché l'area del grafico deve rimanere la stessa (stiamo comunque calcolando un integrale).

Il calcolo delle rerivate viene esteso anche a funzioni che normalmente non sarebbero derivabili. Se $h$ è la funzione di Heaviside, allora
$$h'(x)=\delta(x)$$
Come mai? Perché in $0$, la funzione di Heaviside avrebbe derivata non definita, ma nel senso delle distribuzioni, questa assumerà un senso.
> [!example] Distribuzione di una funzione con $h$ di Heaviside
> $$f(x)=5\mathrm{e}^{-2x}h(x)$$
> derivata diventa
> $$f'(x)=5\delta(x)-10\mathrm{e}^{-2x}h(x)$$

Se prendiamo una funzione $g$ la quale definisce il filtro, e introduciamo il filtro identità come input, l'output è il risultato del calcolo seguente
$$(\delta \star g)(x)=\int_{-\infty}^{+\infty}\delta(x-y)g(v)\ \mathrm{d}v=g(x)$$
- $g$ è la risposta del filtro all'impulso;
- $\delta$ è l'impulso.

> [!example] Configurazione dell'Home Theatre
![[Pasted image 20230313175506.png|300]]
Un esempio di ricerca di risposta impulsiva, è quella effettuata nella calibrazione del nostro Home Theatre: un apparecchio riproduce un suono distinto all'interno della nostra stanza che dopo essere stato catturato, viene inserito in ingresso in una funzione la cui valuta i parametri ottimali della nostra base, alti e centro.

---
09/03/2023