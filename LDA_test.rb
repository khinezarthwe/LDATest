require 'lda-ruby'

#op = File.open("data/Data_song.dat", "w+") 
#IO.foreach("data/mxm.txt") do|a|
 # ary = a.split(",")
  #sum = ary.size  - 2
  #ary = ary[2..ary.size]
  #ary.unshift sum
  #str = ary.join(" ")
  #op << str
#end

    corpus = Lda::DataCorpus.new("data/Data_song.dat")
    lda = Lda::Lda.new(corpus)    # create an Lda object for training
               # run EM algorithm using random starting points0
    lda.load_vocabulary("data/vocab.txt")
    lda.verbose = false
    lda.num_topics = 100
    lda.em('random')
    topics = lda.top_words(5)
    lda.print_topics(10) 
  

# first open a file to write the result
#op = File.open("data/cleaned2.dat", "w+") 
# read each line of dataset
#IO.foreach("data/mxm_dataset_test.txt") do|a|
  # split the line by comma
 # ary = a.split(",")
  # get total count of previous array minus 2 for track information
 # sum = ary.size  - 2
  # get only the necessary data omitting first 2 track information
 # ary = ary[2..ary.size]
  # then add the previously computed sum at the start of the array
 # ary.unshift sum
  # converts array to string by using space as delimeter
 # str = ary.join(" ")
  # append the string to file
 # op<< str
#end 
# nout ka htae yih push