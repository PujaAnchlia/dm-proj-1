Proj1GrpA <- function()
{
### Project1 COSC 6335 ?Data Mining? Fall 2014
### Exploratory Data Analysis for a Banknote Authentication Dataset


# Read the Banknote Authentication Data Set
banknoteData <- read.csv("data_banknote_authentication.txt",header=F)

# Extract the different attributes
var_WTI 	   <- banknoteData$V1
skewness_WTI <- banknoteData$V2
curtosis_WTI <- banknoteData$V3
entropy_WTI  <- banknoteData$V4

# Compute the mean 
mean_var      <- mean(var_WTI)
mean_skewness <- mean(skewness_WTI)
mean_curtosis <- mean(curtosis_WTI)
mean_entropy  <- mean(entropy_WTI)

cat("mean, variance: ", mean_var, "\n")
cat("mean, skewness: ", mean_skewness, "\n")
cat("mean, curtosis: ", mean_curtosis, "\n")
cat("mean, entropy: ", mean_entropy, "\n\n")

# Compute the Standard Deviation 
sd_var      <- sd(var_WTI)
sd_skewness <- sd(skewness_WTI)
sd_curtosis <- sd(curtosis_WTI)
sd_entropy  <- sd(entropy_WTI)

cat("standard deviation, variance: ", sd_var, "\n")
cat("standard deviation, skewness: ", sd_skewness, "\n")
cat("standard deviation, curtosis: ", sd_curtosis, "\n")
cat("standard deviation, entropy: ", sd_entropy, "\n\n")

# Compute cov ariance matrix
cov_mat <- cov(banknoteData[c(1,2,3,4)])
print(cov_mat)
cat("\n")
# Compute correlation matrix
corr_mat <- cor(banknoteData[c(1,2,3,4)])
print(corr_mat)
}