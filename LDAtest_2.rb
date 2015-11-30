require 'lda-ruby'
corpus = Lda::DataCorpus.new("data/Data_song.dat")
    lda = Lda::Lda.new(corpus)    # create an Lda object for training
               # run EM algorithm using random starting points0
    lda.load_vocabulary("data/vocab.txt")
    lda.verbose = false
    lda.num_topics = 500
    lda.em('random')
    topics = lda.top_words(5)
    lda.print_topics(10) 