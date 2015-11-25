require 'lda-ruby'
corpus = Lda::DataCorpus.new("data/ap.dat")

lda = Lda::Lda.new(corpus)