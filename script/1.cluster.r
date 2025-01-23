#######
#Cluster and Network Analysis
######


#First Analyses
#setwd ("local/path") to set a working directory or setwd("/cloud/project") on posit cloud
#Installing the packages
install.packages("stylo")
install.packages("network.D3")
install.packages("fontawesome")
install.packages("reshape2")
library(fontawesome)
library(reshape2)
library(stylo)
library(networkD3)

# First Cluster Analysis: mfw.min=300, mfw.max=300; distance.measure="dist.delta"
stylo(gui=FALSE, corpus.format="plain", corpus.lang="italian", mfw.min=300, mfw.max=300, distance.measure="dist.delta", analysis.type="CA", write.png.file=TRUE, titles=TRUE, custom.graph.title="1st Cluster Analysis")

# Second Cluster Analysis: mfw.min=100, mfw.max=100 ngram=2; distance.measure="dist.delta"; analyzed.features=word; ngram.size=2
stylo(gui=FALSE, distance.measure='dist.delta', analyzed.features = 'w', ngram.size = 2, mfw.min=100, mfw.max=100, custom.graph.title="2nd Cluster Analysis")

#Third Cluster Analysis: mfw.min=800, mfw.max=800; distance.measure="dist.delta"; analyzed.features=word
stylo(gui=FALSE, corpus.format="plain", corpus.lang="italian", analyzed.features="w", ngram.size=10, mfw.min=800, mfw.max=800, distance.measure="dist.delta", analysis.type="CA", write.png.file=TRUE, titles=TRUE, custom.graph.title="3d Cluster Analysis")

# Fourth Cluster Analysis: mfw.min=100, mfw.max=100; analyzed.features=word; ngram.size=23
#In this case we chose 23 words since it's the average sentence lenght in our corpus
stylo_result <- stylo(gui=FALSE, distance.measure="dist.delta", analyzed.features="w", ngram.size=23, mfw.min=100, mfw.max=100, custom.graph.title="4th Cluster Analysis")

# Network Analysis
stylo.network(gui=FALSE, mfw.min=100, mfw.max=1000)

# Consensus tree
stylo(gui=FALSE, corpus.format="plain", corpus.lang="Italian", mfw.min=100, mfw.max=300, analysis.type="BCT", consensus.strenght=0.5, custom.graph.title="Consensus Tree, strenght 0.5")
stylo(gui=FALSE, corpus.format="plain", corpus.lang="Italian", mfw.min=100, mfw.max=300, analysis.type="BCT", consensus.strength=1, write.png.file=TRUE, titles=TRUE, custom.graph.title="Consensus Tree, strenght 1")
