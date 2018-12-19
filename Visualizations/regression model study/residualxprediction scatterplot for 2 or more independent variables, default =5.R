# this will create a scatterplot, comparing the predicted values of a dependent variable in
# a regression model, and the standarized residuals of that regression model.
# arguments, data origin is a dataframe object, regresionaevaluar is the regression itsel, 
# explicaday is the dependent variable�s index inside the dataorigin, and explicativas is a
# vector formed by numbers, indicating the various indexes of the variables on the dataframe
#that form the regression model
# This functions will require you to adjust the code to your needs as indicated below


residuoxpredictionscatterplotF <- function(dataorigin,regresionaevaluar,explicaday,explicativas) {
  library(ggplot2)
  library(stats)
  
  
  # here is where you have to adjust the code, by default this code is written to support 5 variables
  # in the regression , you can make it with more, or less, by adding or removing arguments
  # to dataforpredict, and colnames. if you want a sixth variable, just add a coma after 
  # dataorigin[[explicativas[5]]], like dataorigin[[explicativas[6]]], and do  the same
  # on colanmes, as.character(colnames(dataorigin[explicativas[6]])). If your model uses
  # less than 5, just delete arguments accordingly. 
  
  dataforpredict <- data.frame(dataorigin[[explicativas[1]]], dataorigin[[explicativas[2]]],
                                dataorigin[[explicativas[3]]], dataorigin[[explicativas[4]]],
                                dataorigin[[explicativas[5]]])
  
  colnames(dataforpredict) <- c(as.character(colnames(dataorigin[explicativas[1]])),
                                as.character(colnames(dataorigin[explicativas[2]])),
                                as.character(colnames(dataorigin[explicativas[3]])),
                                as.character(colnames(dataorigin[explicativas[4]])),
                                as.character(colnames(dataorigin[explicativas[5]])))
                                
  
  yprediction <- predict(regresionaevaluar , newdata = dataforpredict)
  residuos <-  rstandard(regresionaevaluar)
  
  scatterplottest <- function(k,v) {
   
    g1 <- ggplot(data = NULL ,aes(x = v, y = k )) + geom_point() +
      ggtitle("Comparación normalidad de regresión vs residuos") +
      xlab("valores predichos para variable explicada") + 
      ylab("residuos estandarizados")
    
    
    g1} 
  
  scatterplottest(residuos,yprediction) }