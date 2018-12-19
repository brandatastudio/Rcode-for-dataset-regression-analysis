# this will calculate a ggplot based scatterplot between a k dependent variable, 
#and a v independent variable. dataset is a dataframe object.
  
  library(ggplot2)
  
  
  basicscatterplot <- function(dataset,k,v) {
    # notas: data set deberia ser un data set, y v será un numero esto permitira que
    # para especificar aes, solo tengamos que poner [[]] y con xlab solo []
    
    g1 <- ggplot(dataset,aes(x = dataset[[v]], y = dataset[[k]] )) + geom_point() +
      ggtitle("Basic relation plot") + 
      xlab(colnames(dataset[v])) +  
      ylab(colnames(dataset[k]))
    
    g1
  }
  
  # example code: basicscatterplot(datoprueba,8,9) 
  