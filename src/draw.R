#draw_ <- function(x1, x2, x3) {
draw_classification_Scatter <- function(bnd_frame) {
  #banknoteData <- read.csv("data/data_banknote_authentication.txt",header=F)
  #class_ <-banknoteData$V5
  #print(class_)
  #temp_data <- banknoteData[c(-5)]
  temp_data <- class
  #f_class <- factor(class_)
  f_class <- factor(class)
  #print(f_class)
  #banknoteData["V5"] <- f_class
  class  <- f_class
  #print(banknoteData)
  #plot(banknoteData[,x1], banknoteData[,x2],col=c("red","green")[banknoteData$V5])
  plot(kurtosis, skewness,col=c("red","green")[class])
}