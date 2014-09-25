draw_Star <- function(bnd_frame,label)
{
  # This function creates star plots.
  
  # z-score the data set and shift the means of each of the first four attributes
  # to avoid negative numbers.
  bnd_z   <- scale(bnd_frame[1:4],center=TRUE,scale=TRUE)
  
  bnd_z_t <- data.frame(scale(bnd_z,center=c(min(bnd_z[,1]),min(bnd_z[,2]),
                               min(bnd_z[,3]),min(bnd_z[,4])),scale=FALSE))
  
  # Add back the Class attribute
  bnd_z_t <- cbind(bnd_z_t,Class1=bnd_frame[,5])
    
  # selecting instances of input class label only
  bnd_z_class <- bnd_z_t[bnd_z_t$Class1 == label,]
  
  counter <- 1
  output  <- matrix(nrow=20, ncol=4)
  labels <- vector()
  locations <- matrix(nrow=20, ncol=2)
  x = -20
  y = 0
  for (i in 1:5) {
    for (j in 1:4) {
      locations[counter, 1] <- x
      locations[counter, 2] <- y
      x = x + 10
      counter = counter + 1
    }
    x = x - 40
    y = y + 10
  }
  
  counter <- 1
  for (i in 1:20) {
      output[counter, 1] <- bnd_z_class[i,1]
      output[counter, 2] <- bnd_z_class[i,2]
      output[counter, 3] <- bnd_z_class[i,3]
      output[counter, 4] <- bnd_z_class[i,4]
      labels[i] <- counter
      counter = counter + 1
  }
  
  stars(output,main=paste("Star Plot - Class", label), scale=FALSE, locations=locations, labels=labels)
  
}