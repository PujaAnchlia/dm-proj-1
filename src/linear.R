linear <- function()
{
  banknoteData <- read.csv("data/data_banknote_authentication.txt",header=F)
  lm(banknoteData$V5~banknoteData$V1 + banknoteData$V2 + banknoteData$V3 + banknoteData$V4)
}