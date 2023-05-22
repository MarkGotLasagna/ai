```toc
```
# Thinking humanly
## Turing Test
![[Pasted image 20230303095037.png|150]]
- **A** è una *intelligenza campione* con <u>un solo obbiettivo</u>, giocare a scacchi.
  Vogliamo determinare se A è capace di giocare in modo intelligente, facendo scelte mirate per poter vincere.
- Un *giocatore* di scacchi **B** viene <u>messo dallo stesso lato dell'intelligenza artificiale</u>, per opporsi contro un altro giocatore. Questo giocatore, dopo un po di tempo, lascerà rispondere l'intelligenza al suo posto.
- Il *giocatore* **C**, che da <u>dal lato opposto della parete</u>, non sa se sta giocando contro A o B, verrà messo in questione e dovrà cercare di capire se sta giocando o meno contro un'intelligenza.

Se il giocatore C non si accorge di stare giocando contro un'intelligenza, piuttosto che contro una persona reale, allora questa è una <u>buona simulazione di cervello umano</u>. Il tempo e il numero di mosse che passano, sono indicatore di quanto è *buona* la simulazione.

Se il giocatore C si accorge alla svelta del cambio di avversario, perché magari A fa mosse infallibili, allora magari l'intelligenza *non è molto abile a imitare l'uomo*, che sia nel bene o nel male.

# Acting humanly
Il metodo del Turing Test è *scientifico*, ma per la natura dell'uomo anche empirico.
Ora nella sua versione più moderna, il test non faceva menzione alcuna degli scacchi; introdurre la variabile di "essere bravi o meno" al gioco, rende il test non più così tanto scientifico (una persona C davvero sveglia, magari capisce al volo che sta giocando con una AI).
- l'obbiettivo della macchina è agire umanamente, imitare il comportamento umano;
- le macchine intelligenti, potrebbero giocare ==giochi d'imitazione==.

## Eliza (J. Weizenbaum, '66)
| Joseph Weizenbaum (1923-2008)             |  Eliza   |
| ----------------------------------------- | --- |
| ![[Pasted image 20230303100447.png\|200]] |   ![[Pasted image 20230303100619.png\|350]]  | 
In molti si sono messi a sviluppare sistemi d'imitazione di comportamento umano (Siri, Alexa, Google Now,...). *Eliza* fu un sistema, realizzato dall'informatico tedesco J. Weizenbaum, il cui scopo era quello di "smontare" il concetto d'intelligenza, dimostrando che il comportamento ottenuto sarebbe stato scarso e che non valeva la pena d'intraprendere la strada degli imitation game. Avvenne l'opposto: Eliza spinse allo studio degli imitation game, ancorà più di quanto non fosserò già studiati.

Eliza funziona come psicoterapeuta "Rogerian": il paziente viene incalzato nel parlare il più possibile, descrivendo i propri problemi e perplessità, come in una seduta reale (vedere immagine sotto).

![[Pasted image 20230303101829.png|300]]
Notare come l'intelligenza non aggiunge niente a una conversazione: Eliza non capisce nulla di quello che stiamo dicendo, non ha nemmeno un vocabolario per interpretare le parole. Quello che usa è il riconoscimento di un pattern per dare risposta.

Subito il test di Turing, sorprendentemente, note le imitazioni del sistema, Eliza venne preferito da diversi pazienti in seduta, piuttosto che uno psicoterapeuta umano.

# Thinking rationally
Già nei periodi classici si cercava di capire se il pensiero è logico o meno.
I **linguaggi logici** sono modi per raggiungere *deduzioni*: un sistema software le cui deduzioni sono pensieri razionali, è capace di pensare razionalmente.
$$A \implies B$$
$$\mathtt{if}\ B\ \mathtt{then}\ A$$
Possiamo così imporre regole sul nostro sistema, come per esempio vendere la cripto valuta nel momento in cui il prezzo è ottimale o massimo, rispetto a una soglia o media. Vincolare il comportamento e pensiero razionale, permette di mettere sotto controllo il tempo di risposta del sistema.

Forniti i fatti, possiamo fare deduzioni che a loro volta saranno fatti:
- fatti: $\mathtt{mother\_of(ann,bob)}$, $\mathtt{sister\_of(claire,ann)}$
- regole d'inferenza: $\mathtt{mother\_of(X,Y) \wedge\ sister\_of(Z,X)\rightarrow aunt\_of(Z,Y)}$ 

Quando il numero di regole cresce, diventa difficile tenere sotto controllo tutte le dinamiche dei così detti ==sistemi esperti==. 

## MYCIN (E. Shortliffe, '70)
| Edward Shortliffe (1947)                 | MYCIN |
| ----------------------------------------- | ----- |
| ![[Pasted image 20230303103819.png\|200]] | ![[Pasted image 20230303104019.png\|400]]      |
*MYCIN* fu creato da Edward Shortliffe all'inizio degli anni '70, nel tentativo di realizzare un sistema capace di compiere diagnosi medica. L'obbiettivo del sistema esperto era quello d'interpretare i sintomi dei pazienti e fornire una diagnosi il più accurata possibile, prescrivendo medicinali se necessario.

Le regole per MYCIN erano più di 600, un numero molto grande da contenere. Il sistema era in grado di porre domande booleane all'utente, per approfondire e fornire così necessità informative, per arrivare a una deduzione.

I numerosi test di Turing effettuati sul sistema, erano mirati a capire quanto fosse capace di fornire diagnosi accurate, rispetto a quelle dedotte da medici reali con esperienza in campo medico. Uno dei tanti risultati più noti, fu quello dell'individuazione corretta nel 69% dei casi, del problema, e una prescrizione adeguata dei farmaci. Magari la percentuale può sembrare bassa (3/10 pazienti prendono l'aspirina piuttosto che una altro farmaco), ma non lo è guardando al fatto che gli stessi dottori/autorità che hanno costruito il sistema, hanno sbagliato di più nonostante le regole le conoscessero.

>[!info] "MYCIN" deriva dal suffisso "-mycin" (micine), presente nelle medicine di quel particolare gruppo di antibiotici.

# Acting rationally
Macchine capaci di agire in modo razionale sono dette ==agenti intelligenti==.
Dal punto di vista degli obbiettivi, superare il test di Turing non è lo scopo dell'agente, ma piuttosto il raggiungimento usando i mezzi migliori.

## SHRDLU (T. Winograd, '71)
| Terry Winograd (1946)                    | SHRDLU |
| ----------------------------------------- | ------ |
| ![[Pasted image 20230303105925.png\|300]] |     ![[Pasted image 20230303105808.png]]   |
Sistema classico che diede spinta enorme all'AI; vedere funzionare il sistema in giro per il mondo, siccome spostato fisicamente, ha mosso il campo dell'intelligenza artificiale.

*SHRDLU* ha lo scopo di muovere una serie di blocchi in un mondo virtuale.
I blocchi hanno forme diverse, possono essere parallelepipedi o cubi o piramidi che con un braccio meccanico, tramite input utente, vengono spostati a piacimento all'interno del mondo immaginario.

Il sistema funziona molto bene, è in grado d'interpretare le richieste in linguaggio naturale anche sofisticato, per compiere un obbiettivo, come per esempio costruire una pila di blocchi dentro una scatola.

## Game theory
| John Forbes Nash, Jr. |
| --------------------- |
| ![[Pasted image 20230303111622.png\|150]]                      |
Agire razionalmente è anche agire in modo economico; pensare in modo razionale vuole dire passare per la **teoria dei giochi**: giocare nel mercato, necessita di occhio critico per fare scelte mirate ed evitare perdite.

La game theory viene utilizzata per sviluppare agenti intelligenti che si comportano nel modo migliore, per quel particolare gioco di cui parliamo (come gli scacchi); fu popolarizzata da *John Nash* (1928-2015) e usata in studi economici e AI.

Spesso l'AI si restringe a giochi con le seguenti caratteristiche:
- ci sono solo 2 giocatori, che si alternano a turni;
- le regole sono formalizzate;
- l'ambiente in cui si gioca è completamente accessibile, nel senso che ogni giocatore vede tutto dell'ambiente e nulla è nascosto, conoscenza perfetta;
- i vincoli di tempo non sono stretti e non sono il vero problema dell'affrontare il gioco.

Esempi classici: la dama e gli scacchi sono spesso presi in esame.

### Chinook (1989-2007)
Chinook (giocabile al sito https://webdocs.cs.ualberta.ca/~chinook/) è un esempio di AI capace di giocare a dama impeccabilmente. In un tempo adeguato, il sistema è in grado di fornire risposta ottima alle mosse che effettuiamo.

### Deep Blue ('96)
| Deep Blue |
| ---------- |
| ![[Pasted image 20230303113857.png\|200]] Uno dei cassetti di Deep Blue, esposto al "Computer History Museum"           |
Deep Blue è forse il sistema esperto più noto e famoso, rilasciato da IBM nel '96, capace di giocare a scacchi. Il sistema era in esecuzione in un supercomputer, costruito specificamente con il solo obbiettivo di vincere a scacchi.
I primi incontri organizzati contro Garry Kasparov, "grand master" famosissimo giocatore di scacchi russo, non ebbe molto successo in quanto perse 4 a 2 incontri; la vittoria avvenne nel '97, dopo aver subito un upgrade, in una rivincita di 6 incontri, vincendo con 3 vittorie e un pareggio.

![[Pasted image 20230303114913.png|500]]

Da notare il fatto che Deep Blue non era infallibile: il tempo per stabilire la mossa ottima da effettuare, nei tempi prestabiliti per una partita di scacchi, non vi entrava in alcun modo; il calcolo della mossa avrebbe sforato di moltissimo il tempo a disposizione. Questo è dato dal fatto che l'avanzamento tecnologico di allora, semplicemente non portava a risultati performanti abbastanza.
Deep Blue contiene quindi tecniche approssimative che non permettono di stabilire la mossa ottima, ma di rispondere in tempo adeguato per poter vincere contro il campione mondiale.

### AlphaGo
![[Pasted image 20230303115230.png|300]]
AlphaGo sarebbe l'AI più nota, infallibile, nel giocare a Go.
Sviluppata da DeepMind, e rilasciata nel 2015, questo sistema è in grado di giocare contro qualunque giocatore di Go e vincere.
Esempi noti di partite, sono quelle giocate contro il campione di Go europeo Fan Hui; contro il campione sud coreano Lee Sedol, che vinse su 5 incontri, la quarta, diventando l'unico giocatore nel pianeta, a vincere contro AlphaGo; e le vittorie contro l'allora campione mondiale Ke Jie.

| ![[Pasted image 20230303121307.png\|450]] |
| ----------------------------------------- |
| [AlphaGo - The Movie \| Full award-winning documentary by Google DeepMind](https://www.youtube.com/watch?v=WXuK6gekU1Y)                                          |

AlphaGo usa sistemi di approssimazione (la mossa ottima è possibile, ma nemmeno il Cloud di Google del 2015 sarebbe riuscito a proporla in tempi ragionevoli). In dettaglio, utilizza la stessa tecnica usata da Deep Blue, ma appoggiandosi alle reti neurali.

Giocando in numerosissimi ambienti diversi, AlphaGo passò dal non conoscere nulla di Go, a essere impeccabile, associando a ogni mossa compiuta, una "bontà" o indice positivo di apprendimento. In questo modo, la rete neurale imparò le mosse migliori da fare durante il gioco.

AlphaGo venne ritirato dal pubblico in occasione del suo successore, AlphaGo Zero, che vinse 100-0 contro l'appunto predecessore. Oggi, a nome AlphaZero, la nuova evoluzione è campione mondiale di Go.

### Watson (2011)
![[Pasted image 20230303181534.png|300]]
Nel quiz show "Jeopardy!" del 2011, compete e vince 1 milione di dollari, il sistema Watson, un'intelligenza con la capacità di rispondere in linguaggio naturale a domande poste.
Il linguaggio, spesso e volentieri viene reso complicando facendo giri di parole, per rendere lo spettacolo più accattivante per il pubblico.

Watson ha la particolarità di comprendere per davvero il testo, e lo fa usando la libreria completa di allora Wikipedia: l'intero database di pagine web e PDF, venne installato e usato come fonte, per rispondere alle domande del conduttore.

---
28/02/2023