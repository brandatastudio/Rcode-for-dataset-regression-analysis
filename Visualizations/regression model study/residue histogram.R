
#this will represent in a histogram, the distribution of the standarized residuals of a regression model
# the only argument is the regression itself, it nees to have been created with the lm() function


residuehistogram <- function(regresionaevaluar) {
 
  residuos <- rstandard(regresionaevaluar)
  
  library(ggplot2)
  g1 <- ggplot(data = NULL ,aes(x = residuos)) 
  g1histogram <-  g1 + geom_histogram( color = "darkseagreen1") + geom_freqpoly(size = 1, color = "dodgerblue") +
    ggtitle("Distribucion de frecuencia de valores en Histograma")+xlab("Residuos") + ylab("frecuencia")
  g1histogram
}