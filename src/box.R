box <- function(col_name)
{
  banknoteData <- read.csv("data/data_banknote_authentication.txt",header=F)
  boxplot(banknoteData[,col_name])
  boxplot(banknoteData[,col_name]~banknoteData$V5)
  #boxplot(banknoteData[,col_name])
}