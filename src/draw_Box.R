draw_Box <- function(bnd_frame,attr_name)
{
  # This function creates box plots
  
  # Convert the numerical "class" attribute to categorical.
  f_class <- factor(Class)
  Class  <- f_class
  
  op <- par(oma=c(0,0,2,0),mfcol=c(1,2))  
   
  boxplot(bnd_frame[,attr_name],main="Whole dataset",
          col="darkseagreen1",cex.main=1.25,col.main="violetred1")
  
  boxplot(bnd_frame[,attr_name]~Class,main="Class Specific",
          col=c("thistle2","wheat")[Class],cex.main=1.25,col.main="violetred1",hoizontal=FALSE)
  
  par(op)
  mtext(paste("Box Plot of ",attr_name),line=2,font=2,cex=1,col="blue")
  
    
}