histogram <- function(col_name)
{
  banknoteData <- read.csv("data/data_banknote_authentication.txt",header=F)
  hist(banknoteData[,col_name])
}