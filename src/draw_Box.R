draw_Box <- function(bnd_frame,attr_name)
{
  # Convert the numerical "class" attribute to categorical.
  f_class <- factor(Class)
  Class  <- f_class
  
  op <- par(oma=c(0,0,3,0),mfcol=c(1,3))
  
  boxplot(bnd_frame[,attr_name],main="Whole dataset",
          col="darkseagreen1",cex.main=1.25,col.main="violetred1")
  
  bnd_frame_class0 <- bnd_frame[Class == 0,]           # Class 0 data only
  
  bnd_frame_class1 <- bnd_frame[Class == 1,]           # Class 1 data only
  
  boxplot(bnd_frame_class0[,attr_name],main="Class 0",
          col="thistle2",cex.main=1.25,col.main="violetred1")
  
  boxplot(bnd_frame_class1[,attr_name],main="Class 1",
          col="wheat",cex.main=1.25,col.main="violetred1")
  
  par(op)
  mtext(paste("Box Plot of ",attr_name),line=2,font=2,cex=1,col="blue")
  
    
}