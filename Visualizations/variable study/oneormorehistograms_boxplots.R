# This function calculates a boxplot and a histogram, for one or more variables of a dataset
#through a loop and represents them in one single screen 

#Arguments: dataorigin is the dataset, interval will be a vector formed by concatenated
# numbers like c(), representing the index of the variable colums inside the dataframe
# that we want to calculate the box plot and histogram for. Screendist represents
# how many rows  in the screen we want when calculating the graphs. ideally, you should
# have one row per variable, so each variable has a boxplot and histogram per row. 

histogramandboxplot <- function(dataorigin, interval, screendist) {
 
  
  basichistogram <- function(dataset,v) {
    # the function that calculates the histogram for the variable
   
    library(ggplot2)
    library(gridExtra)
    g1 <- ggplot(dataset,aes(x = dataset[[v]])) 
    g1histogram <-  g1 + geom_histogram( color = "darkseagreen1") + geom_freqpoly(size = 1, color = "dodgerblue") +
      ggtitle("Distribucion de frecuencia de valores en Histograma")+xlab(colnames(dataset[v])) + ylab("frecuencia")
    g1histogram }
  
  basicboxplot <- function(dataset,v) {
    # the functions that calculates the boxplot
    
    library(ggplot2)
    g1 <- ggplot(dataset,aes(y = dataset[[v]])) 
    g1boxpt <-  g1 + geom_boxplot( color = "dodgerblue3")  +
      ggtitle("Intervalo de cuartiles ") + ylab(colnames(dataset[v]))
    g1boxpt
  }
  
  

  h1<-  basichistogram(dataorigin,interval[1])
  b1 <- basicboxplot(dataorigin,interval[1])
  

  # this is important: if you want more than the default 2 histograms, you need to create
  # new variables after h1, you just need to copy the code and add one more number on the interval
  #subsetting. For example, if we want to create 2 histograms, we would add one more variable here
  # like  h2<-  basichistogram(dataorigin,interval[2]), another boxplot, would be 
  #  b2<-  basichistogram(dataorigin,interval[2]) and so on. After adding , you need to 
  # add the new created variable to the grid arrange, adding a new coma before the nrow argument
  # grid.arrange(h1,b1,h2,b2, nrow = screendist) 
  
  
  
  
  grid.arrange(h1,b1 ,nrow = screendist)}

# example histogramandboxplot(datoprueba,c(1),1)


