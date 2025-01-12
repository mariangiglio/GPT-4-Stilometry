# GPT-4-Stilometry
**Analisi stilometrica applicata alle capacità emulative di GPT-4**

**Authors:** Marco De Cristofaro, Mariangela Giglio

# Table of Content
 - Abstract
 -  Corpus
 -  Script
 
# Abstract

Questo repository è parte più ampia di una ricerca che si propone di esplorare la capacità del Large Language Model GPT-4 di emulare lo stile di due riviste culturali italiane attive negli anni ’60, «Quaderni Piacentini» e «Quindici». Utilizzando un corpus derivato dai primi numeri delle riviste, trascritti attraverso OCR e poi accuratamente rivisti, il lavoro vuole valutare se GPT-4 sia in grado di eludere l’analisi stilometrica, scrivendo un testo che rispecchi la strategia editoriale di una determinata rivista.

# Corpus

Le trascrizioni dei primi tre numeri di ciascuna rivista, unitamente alle rielaborazioni di Chat GPT sono disponibili nella cartella _Corpus_. Il corpus ha un totale di circa 25mila parole per «Quindici» e 22mila circa per «Quaderni Piacentini», 6mila circa per la rielaborazione AI di «Quindici» e altrettante per la rielaborazione di «Quaderni Piacentini».

# Script

Gli script presenti nella cartella sono parte del pacchetto ***stylo*** (Eder, M., Rybicki, J. and Kestemont, M. (2016). Stylometry with R: a package for computational text analysis. _R Journal_, 8(1): 107-21. [https://journal.r-project.org/archive/2016/RJ-2016-007/index.html](https://journal.r-project.org/archive/2016/RJ-2016-007/index.html)).

## 1. Primi passi

I primi passi per poter eseguire gli script consistono nel:

 1. Settare la working directory in R studio:
 `setwd ("local/path" `
 o in [Posit Cloud](https://posit.cloud/) 
 `setwd("/cloud/project")`
 
 2. Installare e richiamare le librerie necessarie per l'analisi 
`install.packages("stylo")
install.packages("network.D3")
install.packages("fontawesome")
install.packages("reshape2")
library(fontawesome)
library(reshape2)
library(stylo)
library(networkD3)`

## 2. Cluster.r 

Questo script consente di fare delle prime, semplici analisi di clusterizzazione che producono una visualizzazione a dendrogrammi e network.
Inoltre è possibile modificare parametri specifici come le MFW (Most Frequent words), il tipo di corpus, la lingua, la distanza scelta ecc., nonché scegliere (solo se si lavora in R Studio) di usare o meno l'interfaccia di sistema (GUI).

## 3. MDS_PCA.r
Tramite questo script è possibile eseguire delle analisi come il Multidimensional Scaling (MDS) e Principal Component Analysis usando una matrice di correlazione o di covarianza. 

## 4. rolling_oppose.r
Il terzo script permette di fare delle analisi più complesse come la rolling. Questo metodo di classificazione sequenziale divide un testo in blocchi consecutivi di dimensioni uguali _(slices)_ ed esegue una classificazione supervisionata di questi blocchi rispetto a un insieme di addestramento.

La funzione _oppose_ invece esegue un’analisi contrastiva tra due insiemi di testi dati.

Per entrambe le analisi è necessario preparare il corpus adeguatamente suddividendolo in due cartelle: una primaria e una secondaria.

## 5. POSTAG.r
Questo script in R esegue un'analisi stilometrica su diversi testi utilizzando i pacchetti `stylo` e `udpipe`. Legge i file di testo, li annota con le parti del discorso usando `udpipe`, salva i risultati, e poi conduce un'analisi stilometrica confrontando n-grammi di parti del discorso per identificare pattern stilistici nei testi.
There are two types of synchronization and they can complement each other:

