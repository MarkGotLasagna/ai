# Intelligenza Artificiale 2022/2023

<div align=center>
  <image src=/.pics/graph.png width=50%></image></br></br>
</div>

Imparare il concetto d'Intelligenza Artificiale, studiando la matematica dietro i metodi.
Possiamo elencare gli argomenti in macro-sezioni come segue:
- (Lez01-Lez02) Storia dell'AI e concetti di base;
- (Lez03-Lez05) **Analisi base** e prime discussioni sulla **discesa del gradiente**;
- (Lez06-Lez11) Classificazione delle **reti neurali**;
- (Lez12-Lez14) **Constraint Satisfaction Problems**;
- (Lez15-Lez16) Il **linguaggio dei termini**;
- (Lez17-Lez24) **PROLOG** e **Logica di primo ordine.

Se siete interessati unicamente ai file PDF, il seguente comando li estrae.
```
git clone --filter=blob:none --depth 1 --sparse https://github.com/MarkGotLasagna/ai && \
    cd ai && \
    git sparse-checkout init --cone && \
    git sparse-checkout set LESSONS/PDF EXERCISES/PDF
```

## Dir structure
```
/home/maruko/Documents/Obsidian\ Vault\UNI\AI\
└── LESSONS -> file markdown e PDF delle trascrizioni
└── EXERCISES -> esercitazioni svolte in presenza
└── src --> plot ascesa/discesa gradiente
```

## Contributing
Siete liberi di fare precisazioni o correzzioni o altro, aprendo "Issues" o "Pull Request" negli appositi TAB.
