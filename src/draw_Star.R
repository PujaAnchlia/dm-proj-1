#draw_Star <- function(bnd_frame,label)
draw_Star <- function(label)
{
  banknoteData <- read.csv("data/data_banknote_authentication.txt",header=F)
  #print(label)
  #bnd_class_spl <- bnd_frame[Class == label,]           # selecting instances of input class label only
  
  counter <- 0
  output  <- matrix(nrow=20, ncol=4)
  for (i in 1:nrow(banknoteData)) {
  #for (i in 1:20) {
      #print(bnd_frame[i,])
    if (banknoteData[i, "V5"] == label) {
      output[counter + 1, 1] <- banknoteData[i,1]
      output[counter + 1, 2] <- banknoteData[i,2]
      output[counter + 1, 3] <- banknoteData[i,3]
      output[counter + 1, 4] <- banknoteData[i,4]
      #output[counter, 1] <- bnd_class_spl[i,1]
      #output[counter, 2] <- bnd_class_spl[i,2]
      #output[counter, 3] <- bnd_class_spl[i,3]
      #output[counter, 4] <- bnd_class_spl[i,4]
      
      counter = counter + 1
    }
    if (counter == 20)
      break
  }
  
  stars(output)
}