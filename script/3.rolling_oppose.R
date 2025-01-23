#######
#Rolling stylometry and oppose
######

#CALL THE LIBRARIES
library(reshape2)
library(stylo)


############# Rolling Stylometry ##############

# ROLLING STYLOMETRY: we need to set a reference set and a test set
#For this case we used a Pastiche with:
#Till line 14 an AI generated text from Gemini
#Lines from 35-64 GPT generated text
#Lines from 66 to the end from Quaderni Piacentini
rolling_results <- rolling.classify(classification.method="delta", slice.size=300, slice.overlap=100, mfw=200, write.png.file=TRUE)
rolling_results$classification.rankings
rolling_results$classification.results


#Another test changing slice sizing and overlapping
rolling.classify(gui = FALSE, training.corpus.dir = "reference_set",
                 test.corpus.dir = "test_set", training.frequencies = NULL,
                 test.frequencies = NULL, training.corpus = NULL,
                 test.corpus = NULL, features = NULL, path = NULL,
                 slice.size = 500, slice.overlap = 450,
                 training.set.sampling = "no.sampling", mfw = 100, culling = 0,
                 milestone.points = NULL, milestone.labels = NULL,
                 plot.legend = TRUE, add.ticks = FALSE, shading = FALSE)

#This process can be expanded to include some sort of AI training. In this case you could use (see in Eder et al,2016)
  
      
      

############ OPPOSE ################

# Oppose analysis: we need to set two folders: primary_set and  secondary_set
oppose_results <- oppose(gui=F,text.slice.length = 3000, overlap = 50, write.png.file = TRUE, visualization = 'words')




# Set up and execute the oppose function to analyze and compare two sets of texts
# `reference_set` and `test_set` should contain the actual text data loaded earlier
oppose_results <- oppose(gui=F,
                         text.slice.length = 3000,         # length of text slices for analysis
                         overlap = 300,                    #overlapping (optional)  
                         write.png.file = TRUE,           # enable writing the output to a PNG file
                         visualization = 'markers'        # type of visualization to use
                          )

# Print results to examine various outputs from the oppose function
print(oppose_results$summary.zeta.scores)  # print summary of zeta scores
print(oppose_results$comparison)           # print the overall comparison metrics
print(oppose_results$words.avoided)        # print words typically avoided by each set
print(oppose_results$primary.slices)       # print analysis slices from the primary set
print(oppose_results$secondary.slices)     # print analysis slices from the secondary set
print(oppose_results$test.slices)          # print test slices used during analysis
print(oppose_results$words.avoided.scores) # print scores for the words avoided
print(oppose_results$words.preferred)      # print words preferred by each set
print(oppose_results$words.preferred.scores) # print scores for the preferred words
print(oppose_results$call)                # print the function call used for this analysis
print(oppose_results$name)                # print the name of the analysis (if set)



