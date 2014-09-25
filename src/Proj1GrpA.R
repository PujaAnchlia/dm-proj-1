Proj1GrpA <- function()
{
### Project1 COSC 6335 Data Mining Fall 2014
### Exploratory Data Analysis for a Banknote Authentication Dataset


# Read the Banknote Authentication Data Set
banknoteData <- read.csv("data/data_banknote_authentication.txt",header=F)

bnd_frame <- data.frame(Variance = banknoteData[,1],Skewness = banknoteData[,2],
                        Kurtosis = banknoteData[,3],Entropy  = banknoteData[,4],
                        Class    = banknoteData[,5])
attach(bnd_frame)
on.exit(detach(bnd_frame),add = TRUE)

# Compute the means 
mean_var      <- mean(Variance)
mean_skewness <- mean(Skewness)
mean_curtosis <- mean(Kurtosis)
mean_entropy  <- mean(Entropy)

cat("mean, variance: ", mean_var, "\n")
cat("mean, skewness: ", mean_skewness, "\n")
cat("mean, curtosis: ", mean_curtosis, "\n")
cat("mean, entropy : ", mean_entropy, "\n\n")

# Compute the Standard Deviations 
sd_var      <- sd(Variance)
sd_skewness <- sd(Skewness)
sd_curtosis <- sd(Kurtosis)
sd_entropy  <- sd(Entropy)


cat("standard deviation, variance: ", sd_var, "\n")
cat("standard deviation, skewness: ", sd_skewness, "\n")
cat("standard deviation, curtosis: ", sd_curtosis, "\n")
cat("standard deviation, entropy : ", sd_entropy, "\n\n")

# Compute covariance matrix
cov_mat <- cov(bnd_frame[c(1,2,3,4)])
print(cov_mat)
cat("\n")

# Compute correlation matrix
corr_mat <- cor(bnd_frame[c(1,2,3,4)])
print(corr_mat)

# mode
d_Kur <- density(Kurtosis)
mode_Kur <- d_Kur$x[which.max(d_Kur$y)]
cat("Mode: ",mode_Kur)

require("lattice")                               # Install the "lattice" package

# Classification scatter plots
draw_Classification_Scatter(bnd_frame,"Variance","Skewness")
draw_Classification_Scatter(bnd_frame,"Variance","Kurtosis")
draw_Classification_Scatter(bnd_frame,"Variance","Entropy")
draw_Classification_Scatter(bnd_frame,"Skewness","Kurtosis")
draw_Classification_Scatter(bnd_frame,"Skewness","Entropy")
draw_Classification_Scatter(bnd_frame,"Kurtosis","Entropy")

#Scatter plots
draw_Scatter(bnd_frame,"Variance","Skewness")    
draw_Scatter(bnd_frame,"Kurtosis","Entropy")    

# Histogram
draw_Histogram(bnd_frame,"Kurtosis")     

# Box plots
draw_Box(bnd_frame,"Skewness")                  
draw_Box(bnd_frame,"Kurtosis")                 

# Star plots
draw_Star(bnd_frame,0)
draw_Star(bnd_frame,1)

# Linear model
linear(bnd_frame)

# Decision Tree
tree(bnd_frame)

}