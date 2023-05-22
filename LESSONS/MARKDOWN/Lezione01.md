```toc
```
# About: Artificial Intelligence
L'==intelligenza artificiale==(AI), da intendersi nell'ambito distaccato teorico piuttosto che informatico, lavora per il raggiungimento di uno scopo singolo utilizzando *macchine* intelligenti, che chiamiamo comunemente *software*.

L'appoggio al sistema hardware, che non andremo a realizzare per il solo motivo di sviluppare software intelligente, non è da intendersi strettamente alla *robotica*: negli ultimi tempi, questo termine viene piuttosto usato nel campo industriale; un distacco dei *robot*, dai sistemi software.

Oggi l'AI si occupa:
- di realizzare macchine allo scopo d'interagire con mondi virtuali, come il *web*;
- di fare *scelte razionali*, come scegliere se comprare o vendere nel mercato;
- di risolvere *problemi complessi*, dei mondi complessi.

## The Dartmouth Meeting
| Prof. John McCarthy (1927-2011)           | Dartmouth Conference ('56) |
| ----------------------------------------- | ----------------- |
| ![[Pasted image 20230224161526.png\|150]] |         ![[Pasted image 20230224162343.png\|400]]          |

Come molti ambiti dell'informatica il concetto di AI viene proposto, per la prima volta, nel '55 dal Prof. John McCarthy (1927-2011): l'obbiettivo di realizzare macchine intelligenti, che interagiscano con il mondo senza necessariamente parlare d'implementare algoritmi, nasce da lui.

L'intelligenza artificiale è la scienza e l'ingegneria per la realizzazione di macchine intelligenti, in particolare, programmi per computer che siano intelligenti.
Non da confinare a metodi biologicamente osservabili.

## What is Easy? What is Hard?
Non ci dobbiamo aspettare solo problemi dove lo sforzo cognitivo è grande, a volte ci sono anche problemi a basso livello, rapportati in modo ridotto verso l'AI ma piuttosto già risolti da algoritmi.
e.g.: camminare senza colpire ostacoli lo sappiamo fare, ma non è affatto semplice per i robot.

## Long term goals of AI
- AI può essere **forte**
  Una macchina che esegua programmi, può presentarsi con risposte indistinguibili da quelle provenienti da intelligenza umana (artificial general intelligence).
- AI può essere **debole**
  Simulare l'intera coscienza umana non è possibile, ma soltanto ambiti precisi possono essere seguiti.

## Four viewpoints
![[Pasted image 20230224162826.png|400]]
- <u>Pensare</u> in modo **umano**
  Le *reti neurali* finiscono in questo campo.
  Supponiamo di realizzare software che pensi come una persona: come pensa una persona? L'approccio operativo/scientifico detta che i *pensieri* provenienti dal *cervello*, sono quelli che ci interessano; riprodurre il pensiero delle persone è come simulare una mente. Il nostro cervello è formato da cellule più o meno tutte uguali, collegate da una rete: una volta che capiamo il funzionamento dei *neuroni*, chiamiamo **rete neuronale artificiale** il nostro sistema simulato.
- <u>Pensare</u> in modo **razionale**
  Siccome le persone non sono razionali, non ci basta simularle, dobbiamo capire fino in fondo cosa vuole dire "essere razionali".
- <u>Agire</u> in modo **umano**
  Affrontiamo l'argomento pensando ad Alan Turing (1912-1954).
  La realizzazione di macchine tramite test empirico noto come ==Turing test==, che vede la prima proposta alla realizzazione, nell'articolo della rivista "Mind", viene così presentato: "Can machines think?"
  La risposta viene proposta empiricamente usando appunto il test di Turing, che negli anni si è evoluto e oramai non è più quello originale. 
- <u>Agire</u> in modo **razionale**

Tutti gli esperimenti coinvolgenti AI, finiscono in un asse comprendente i sopra settori; esplorare possibilità ci permetterà di capire quanto è stato fatto e fare un elenco di argomenti che verranno discussi nel corso.
e.g.: parleremo di agente, nel senso di azione razionale

### Neural Networks
![[Pasted image 20230224163040.png|200]]
Ogni unità simula un ==neurone==: passando da dei livelli d'input e da livelli nascosti, questi generano *output*, proprio come i muscoli nel nostro corpo. Avere un cervello vuole significare avere abbastanza neuroni, che possiamo idealmente creare:
- mettendo in campo una quantità spropositata di neuroni, che anche con computer moderni avremmo difficoltà a realizzare;
- abbandonando la struttura ad archi che vanno solo avanti, modificandola permettendo input/output ricorsivi, siccome è così che funzionano i neuroni.
  
Una AI debole necessita del numero giusto di neuroni, per raggiungere l'obbiettivo, che solitamente è basso. Tipicamente, <u>le reti neurali non si programmano, ma si addestrano</u>, componendo copie input/output indefinitamente finché il risultato non è corretto. 

> [!example] Riconoscere il numero 5
> La rete neurale che apprende a riconoscere per esempio, il numero 5, usa un numero di esemplari necessari per capire sempre, col 99% di certezza, che il numero scritto sia effettivamente il numero 5. 
> 
>![[Pasted image 20230224163544.png|300]]
>
>Come tutte le funzioni, che <u>dal punto di vista matematico sono approssimazioni</u> semplici: ci interessa che ci sia una relazione spaziale, tra i segmenti disegnati del numero.

Tra le reti neurali più semplici dette *Convolutional Neural Networks*(CNN), usiamo il numero giusto (minimo) di *layer* per il ==deep learning==: una struttura con profondità, usa $n$ numero di layer.

---
21-02-2023