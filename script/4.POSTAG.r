# call the packages
library(stylo)
library(udpipe)

# annotate each text with udpipe!
# Quindici_n.1_giugno1967_test_1
novel <- readLines("corpus/QU1.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
cat(result$upos, sep = " ", file = "materials/QU1_POS")
# Quindici_n.1_giugno1967_test_2
novel <- readLines("corpus/QU2.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
cat(result$upos, sep = " ", file = "materials/QU2_POS")
# Quindici_n.1_giugno1967_test_3
novel <- readLines("corpus/QU3.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
View(result)
cat(result$upos, sep = " ", file = "materials/QU3_POS")
# Quindici_n.2_luglio1967_test_4
novel <- readLines("corpus/QU4.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
cat(result$upos, sep = " ", file = "materials/QU4_POS")
# Quaderni_piacentini_Aprile1962_test_1
novel <- readLines("corpus/QP1.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
View(result)
cat(result$upos, sep = " ", file = "materials/QP1_POS")
# Quaderni_piacentini_Aprile1962_test_2
novel <- readLines("corpus/QP2.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
View(result)
cat(result$upos, sep = " ", file = "materials/QP2_POS")
# Quaderni_piacentini_Aprile1962_test_3
novel <- readLines("corpus/QP3.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
cat(result$upos, sep = " ", file = "materials/QP3_POS")
# Quaderni_piacentini_Marzo1962_test_1.txt
novel <- readLines("corpus/QP4.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
cat(result$upos, sep = " ", file = "materials/QP4_POS")

# Stylometry with POS
# set the working directory
setwd("materials")

# run the analysis with 2-POS n-grams
stylo_result <- stylo(gui = FALSE,
                      distance.measure = "dist.delta",
                      analyzed.features = "w",
                      ngram.size = 2,
                      mfw.min = 100,
                      mfw.max = 400,
                      corpus.lang = "Italian.all",
                      corpus.dir = "/cloud/project/materials")

# annotate each ChatGPT text with udpipe
setwd("C:/Users/maria/Desktop/R Studio AIUCD")
novel <- readLines("corpus/AIQP.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
cat(result$upos, sep = " ", file = "materials/AIQP_POS")
novel <- readLines("corpus/AIQU.rtf", warn = F)
text <-  paste(novel, collapse = "\n")
result <- udpipe(x = text, object = "italian")
cat(result$upos, sep = " ", file = "materials/AIQU_POS")

# run the analysis again with 2-POS n-grams
stylo_result <- stylo(gui = FALSE,
                      distance.measure = "dist.delta",
                      analyzed.features = "w",
                      ngram.size = 2,
                      mfw.min = 100,
                      mfw.max = 400,
                      corpus.lang = "Italian.all",
                      corpus.dir = "materials")
