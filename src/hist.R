histogram <- function(col_name)
{
  banknoteData <- read.csv("data/data_banknote_authentication.txt",header=F)
  hist(banknoteData[,col_name], ylim=range(seq(0,200,by=10)), breaks=seq(-10, 20, by=1), col="blue", xlab="Kurtosis", main="Banknote Data Kurtosis")
}