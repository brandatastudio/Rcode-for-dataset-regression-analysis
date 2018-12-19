#this calculates one histogram with ggplot, the arguments are dataset, being a dataframe object
# and v, being the index number of the variable you want to calculate the histogram for. 

basichistogram <- function(dataset,v) {

  
   library(ggplot2)
  g1 <- ggplot(dataset,aes(x = dataset[[v]])) 
 g1histogram <-  g1 + geom_histogram( color = "darkseagreen1") + geom_freqpoly(size = 1, color = "dodgerblue") +
   ggtitle("Distribucion de frecuencia de valores en Histograma")+xlab(colnames(dataset[v])) + ylab("frecuencia")
g1histogram
}


# example code: basichistogram(datoprueba,8)
