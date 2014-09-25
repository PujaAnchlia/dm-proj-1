draw_Histogram <- function(bnd_frame,attr_name){
    
  hist(bnd_frame[,attr_name], ylim=range(seq(0,120,by=5)), breaks=seq(-10, 20, by=.5),
       col="sienna1", xlab=attr_name, main=paste("Histogram - ",attr_name))
  #hist(bnd_frame[,attr_name], ylim=range(seq(0,100,by=5)),breaks="FD",
   # col="sienna1", xlab=attr_name, main=paste("Histogram - ",attr_name))
}