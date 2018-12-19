
# This will calculate our original scatterplot between an independent variable, and a dependent variable
# but will also add to it the predicted values of the dependent variable on a regression model
# to it. Arguments needed are a dataframe object (dataorigin), the regresion we will use (regresionaevaluar)
# explicada y, as the index  of the colum inside the dataframe for the dependent variable
# explicada x, as the index of the colum inside the dataframe for the independent variable

# this will only work for regressions with one independent variable 

predictioxvariablescatterplot <- function(dataorigin,regresionaevaluar,explicaday,explicativaX) {
  
    dataforpredict <- data.frame(columna = dataorigin[[explicativaX]])
    yprediction <- predict(regresionaevaluar , newdata = dataforpredict)
  
  


   basicscatterplotandreg <- function(dataset,k,v,yprediction) {
  # notas: data set deberia ser un data set, y v serÃ¡ un numero esto permitira que
  # para especificar aes, solo tengamos que poner [[]] y con xlab solo []
  
   g1 <- ggplot(dataset,aes(x = dataset[[v]], y = dataset[[k]] )) + geom_point() +
     geom_line(aes( y = yprediction), color = "deepskyblue1") + 
     ggtitle("Basic relation plot with regression model") + 
     xlab(colnames(dataset[v])) +  
     ylab(colnames(dataset[k])) 
  
  g1}

 basicscatterplotandreg(dataorigin, explicaday, explicativaX, yprediction)

}







