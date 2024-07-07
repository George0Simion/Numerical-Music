# Tema2 - MN

## Table of Contents

- [Task1](#MN)
- [Task2](#Rob)
- [Task3](#Recom)

## Task1 -> Numerical Music <a name = "MN"></a>

In cadrul acestui task am avut de creat si jucat cu anumite functii si sunete. Pentru inceput, cu ajutorul functiei spectogram, putem observa diferenta dintre spectogramele lui plain Sound si plain Loop. Se poate observa ca sunetul lui plain sound are multe intreruperi pe cand sunetul plain loop se poate observa continuitatea si rezonanta sunetului.
Diferentele dintre plain sound si sunetul pe care a fost aplicat lowpass filter este in mare amplitudinea. Lowpass filter aduce la aplitudinea la plain sound, insa tot are o tranzitie mai armonica si nu coboara atat de jos ca plain sound.
Diferentele dintre sunetul cu reverb si plain sound sunt evidente, sunetul cu filtrul reverb permite mai multor sunete sa se auda, fara intreruperi si mai armnonios.
Spectograma sunetului tech arata cel mai difeirt de pana acum. Sunt o multitudine de culori care nu se imbina. Diferentele dintre tech cu filtrul lowpass si simplu sunt subtile, sunetul auzindu-se mult mai infundat. Filtrul reverb este opes filtrului lowpas, notele fiind acum mult mai inalte si pe spectograma mai calde. Diferenta dintre lowpass + rev si rev + low este foarte foarte subtile, insa cea cu rev aplicat primul tinde mai mult spre un verde pe cand cea pe care s-a aplicat prima lowpass are mai mult albastru, sunete putin mai joase.

## Task2 -> Robotzii <a name = "Rob"></a>

### P_spline
- Determinam lungimea interv de interp si numarul de pct de interp
- Initializam vectorul de interp
- Extragem coeficientii spline cubica
- Pentru fiecare pct de interp se det invervalul coresp din vect de noduri folosind cautarea binara
- Calculam diferenta de x intre punct si nod
- Folosim spline cubica pt a interpola valoarea

### P_vandermond
- Initializam vectorul pt valorile interpolate
- Pentru fiecare pct de interpolare calculam valoarea interpolata
- Utilizam schema Horner

## Task3 -> Recommendations <a name = "Recom"></a>

### preprocess
- Calcualm numarul de recenzii pt fiecare utilizator
- Determinam indicii utilizatorilor care satisfac conditia nr_rev >= min_review

### recommendations
- Citim si preprocesam valorile
- Facotirzam matricea folosind SVD
- Sortam si selectam recomandarile

