# Basic boplot created with ggplot for  a dataframe variable

# Arguments: dataset is a dataframe object, "v" is a number, the variables index number
#of that dataframe .

basicboxplot <- function(dataset,v) {
  
  library(ggplot2)
  g1 <- ggplot(dataset,aes(y = dataset[[v]])) 
  g1boxpt <-  g1 + geom_boxplot( color = "dodgerblue3")  +
    ggtitle("Intervalo de cuartiles ") + ylab(colnames(dataset[v]))
  g1boxpt
  
}

# example code: basicboxplot(datoprueba,3)
