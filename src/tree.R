tree <- function(bnd_frame)
{
  # This function creates a decision tree.
  
  library(rpart)
  library(rpart.plot)
  library(cvTools)
  
  # Normalize the bank note dataset, excluding the class attribute
  sbnd <- data.frame(Var1=bnd_frame[,1],Skew1=bnd_frame[,2],
                     Kur1=bnd_frame[,3],Ent1=bnd_frame[,4])
  normal_bnd <- scale(sbnd)
  
  # Add back the class attribute
  norm_bnd_final <- data.frame(NormalVariance=normal_bnd[,1],NormalSkewness=normal_bnd[,2],
                               NormalKurtosis=normal_bnd[,3],NormalEntropy=normal_bnd[,4],Class1=bnd_frame[,5])
  attach(norm_bnd_final)
  on.exit(detach(norm_bnd_final),add = TRUE)
  
  # Fit a tree model, to predict class attribute using the other 4 attributes
  # as the dependent variables.
  model <- rpart(Class1 ~ NormalVariance + NormalSkewness + NormalKurtosis + NormalEntropy,method="class",
                   control=rpart.control(cp=0.02,maxdepth=3))
  
  prp(model, type=0, extra=2)
  summary(model)
  
  set.seed(6)
  cvFit(rpart, Class1 ~ NormalVariance + NormalSkewness + NormalKurtosis + NormalEntropy,
        K=10)
}
