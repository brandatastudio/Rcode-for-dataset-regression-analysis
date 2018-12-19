#This code calculates histograms for an interval of variables inside a dataframe, allowing to 
# present the histograms of many variables on the same screen, with just one function. 

library(ggplot2)
library(gridExtra)

allhistogram <- function(dataorigin, interval, screendist) {
# data origin will be a dataframe object, interval a vector c() formed by numbers
  # indicating what colums we are interested in to calculate histograms for. 
# screendist goes for screen distribution, how many rows we want those graphs presented in. 

basichistogram <- function(dataset,v) {
 
  g1 <- ggplot(dataset,aes(x = dataset[[v]])) 
  g1histogram <-  g1 + geom_histogram( color = "darkseagreen1") + geom_freqpoly(size = 1, color = "dodgerblue") +
    ggtitle("Distribucion de frecuencia de valores en Histograma")+xlab(colnames(dataset[v])) + ylab("frecuencia")
  g1histogram }

# this is important: if you want more than the default 4 histograms, you need to create
# new variables after h4, you just need to copy the code and add one more number on the interval
#subsetting. For example, if we want to create 5 histograms, we would add one more variable here
# like  h5<-  basichistogram(dataorigin,interval[5]), another one, would be 
#  h6<-  basichistogram(dataorigin,interval[6]) and so on. After adding , you need to 
# add the new created variable to the grid arrange, adding a new coma before the nrow argument
# grid.arrange(h1,h2,h3,h4,h5,h6 nrow = screendist)


 h1<-  basichistogram(dataorigin,interval[1])
 h2 <- basichistogram(dataorigin,interval[2])
 h3 <- basichistogram(dataorigin,interval[3])
 h4 <- basichistogram(dataorigin,interval[4])
 
 

grid.arrange(h1,h2,h3,h4, nrow = screendist)}
  
# example code : allhistogram(datoprueba,c(1,3,4,5),2)   , the c() vector needs to be equal to the
# number of graph calls you include in the code. 
  