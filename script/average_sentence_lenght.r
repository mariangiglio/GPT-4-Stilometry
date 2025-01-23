install.packages("stringr")
library(stringr)
#If you have different corpora and want to performe an oppositive analysis you can check separately the values and adjust your analysis accordingly

# Load texts
corpus_path <- "corpus"
file_names <- list.files(corpus_path, full.names = TRUE)
all_texts <- sapply(file_names, function(file) {
  paste(readLines(file, warn = FALSE), collapse = " ")
})

# Combine all texts and split into sentences
combined_text <- paste(all_texts, collapse = " ")
sentences <- unlist(str_split(combined_text, pattern = "[.!?]"))
sentences <- sentences[sentences != ""]  # Remove empty sentences

# Count words in each sentence
word_counts <- sapply(sentences, function(sentence) {
  length(unlist(str_split(sentence, pattern = "\\s+")))
})

# Calculate average words per sentence
average_words <- mean(word_counts)

cat("The average sentence length is:", average_words, "words.\n")

