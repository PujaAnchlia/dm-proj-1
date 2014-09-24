tree <- function(bnd_frame)
{
  library(rpart)
  library(rpart.plot)
  # Normalize the bank note dataset, excluding the class attribute
  sbnd <- data.frame(Var1=bnd_frame[,1],Skew1=bnd_frame[,2],
                     Kur1=bnd_frame[,3],Ent1=bnd_frame[,4])
  normal_bnd <- scale(sbnd)
  
  # Add back the class attribute
  norm_bnd_final <- data.frame(NormalVariance=normal_bnd[,1],NormalSkewness=normal_bnd[,2],
                               NormalKurtosis=normal_bnd[,3],NormalEntropy=normal_bnd[,4],Class=bnd_frame[,5])
  attach(norm_bnd_final)
  on.exit(detach(norm_bnd_final),add = TRUE)
  # Fit a tree model, to predict class attribute using the other 4 attributes
  # as the dependent variables.
  model <- rpart(Class ~ NormalVariance + NormalSkewness + NormalKurtosis + NormalEntropy,method="class",
                   control=rpart.control(cp=0.03, maxdepth=4))
  
  prp(model)
}