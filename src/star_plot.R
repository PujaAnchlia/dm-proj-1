star_plot <- function(label)
{
  banknoteData <- read.csv("data/data_banknote_authentication.txt",header=F)
  counter <- 0
  output <- matrix(nrow=20, ncol=4)
  for (i in 1:nrow(banknoteData)) {
    if (banknoteData[i, "V5"] == label) {
      output[counter + 1, 1] <- banknoteData[i,1]
      output[counter + 1, 2] <- banknoteData[i,2]
      output[counter + 1, 3] <- banknoteData[i,3]
      output[counter + 1, 4] <- banknoteData[i,4]
      counter = counter + 1
    }
    if (counter == 20)
      break
  }
  stars(output)
}