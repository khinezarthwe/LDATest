require 'lda-ruby'
    corpus = Lda::DataCorpus.new("data/ap.dat")

    lda = Lda::Lda.new(corpus)    # create an Lda object for training
   # lda.em("random")              # run EM algorithm using random starting points
   # lda.load_vocabulary("data/vocab.txt")
   # lda.print_topics(2)  