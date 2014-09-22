
draw_Classification_Scatter <- function(bnd_frame,attr1_name,attr2_name) {
# This function creates classification scatter plots.  
  
  # Convert the numerical "class" attribute to categorical.
  f_class <- factor(Class)
  Class  <- f_class
  
  par(mar=c(5,4,4,4),xpd=TRUE)            # Making space on the right for the legend.
  
  plot(bnd_frame[,attr2_name]~bnd_frame[,attr1_name],pch=c(1,4)[Class],
       col=c("red","green")[Class],
       main=paste("Classification scatter plot - ",attr1_name,", ",attr2_name),
       xlab = attr1_name, ylab = attr2_name,cex=0.5)
  
  legend("bottomright",inset=c(-0.175,0),c("Class 0","Class 1"),pch=c(1,4),col=c("red","green"),cex=.75)
    
}