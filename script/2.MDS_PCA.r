#######
#MDS and PCA
######

#Calling the libraries
library(bslib)
library(reshape2)
library(stylo)

# MDS (Multidimensional scaling):
stylo(gui=F,
 corpus.format="plain",
 corpus.lang="italian",
 mfw.min=100, mfw.max=100, 
 analysis.type="MDS",
 write.png.file=TRUE,
 titles=TRUE,
 custom.graph.title="Multidimensional Scaling")

# PCA (Principal Component Analysis). You can play around and try also different visualization options for the first two dimensions outputted by a Principal Components Analysis.

#PCA using a covariance matrix (PCV)
result <- stylo(gui = F,
                corpus.dir = "corpus/",
                corpus.lang = "Italian",
                corpus.format="plain",
                mfw.min = 100,
                mfw.max = 100,
                analysis.type = "PCV",
                #pca.visual.flavour = "loadings",
                #pca.visual.flavour = "symbols", 
                #pca.visual.flavour = "technical",
                pca.visual.flavour = "classic",
                write.png.file=TRUE,
                titles=TRUE,
                custom.graph.title="PCA using Covariance Matrix")
                

# PCA using a correlation matrix (a covariance matrix scaled)
result <- stylo(gui =F,
                corpus.lang = "Italian",
                mfw.min = 100,
                mfw.max = 100,
                analysis.type = "PCR", 
                pca.visual.flavour = "loadings"
                )
