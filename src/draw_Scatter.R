
draw_Scatter <- function(bnd_frame,attr1_name,attr2_name) {
# This function creates scatter plots.
  
  plot(bnd_frame[,attr2_name]~bnd_frame[,attr1_name],pch=1,col="blue",
       main=paste("Scatter plot - ",attr1_name,", ",attr2_name),
       xlab = attr1_name, ylab = attr2_name,cex=0.5)
    
}