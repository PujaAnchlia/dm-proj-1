draw_ <- function() {
  banknoteData <- read.csv("data_banknote_authentication.txt",header=F)
  class_ <-banknoteData$V5
  print(class_)
  temp_data <- banknoteData[c(-5)]
  f_class <- factor(class_)
  print(f_class)
  banknoteData["V5"] <- f_class
  #print(banknoteData)
  plot(banknoteData$V1, banknoteData$V2,col=c("red","green")[banknoteData$V5])
}