linear <- function(bnd_frame)
{
  # Normalize the bank note dataset, excluding the class attribute
  sbnd <- data.frame(Var1=bnd_frame[,1],Skew1=bnd_frame[,2],
                     Kur1=bnd_frame[,3],Ent1=bnd_frame[,4])
  normal_bnd <- scale(sbnd)
  
  # Add back the class attribute
  norm_bnd_final <- data.frame(Var2=normal_bnd[,1],Skew2=normal_bnd[,2],
                  Kur2=normal_bnd[,3],Ent2=normal_bnd[,4],Class2=bnd_frame[,5])
  
  # Fit a linear model, to predict class attribute using the other 4 attributes
  # as the dependent variables.
  lm_model <- lm(norm_bnd_final$Class2 ~ norm_bnd_final$Var2 + norm_bnd_final$Skew2 + 
                   norm_bnd_final$Kur2 + norm_bnd_final$Ent2)

  print(summary(lm_model))
  
  #par(mfrow=c(2,2))
  #plot(lm_model)
  #par(mfrow=c(1,1))
}
