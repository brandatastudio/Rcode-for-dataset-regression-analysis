# this will create a scatterplot, compring the predicted values of a dependent variable in
# a regression model, and the standarized residuals of that regression model.
# arguments, data origin is a dataframe object, regresionaevaluar is the regression itsel, 
# explicaday is the dependent variable�s index inside the dataorigin, and explicativax is the 
# independent variables index. This functions will only work with linear models with only one variable
# if you want to use a multiple regression, or interaction models, use 
#"residuexpredicction scatterplot two or more variables" script.




residuoxpredictonscatterplot <- function(dataorigin,regresionaevaluar,explicaday,explicativaX) {
library(ggplot2)
library(stats)


dataforpredict <- data.frame(columna = dataorigin[[explicativaX]])
yprediction <- predict(regresionaevaluar , newdata = dataforpredict)
residuos <-  rstandard(regresionaevaluar)

scatterplottest <- function(k,v) {
  # notas: k normalmente representará residuos, mientras que  v la yprediction
  
  g1 <- ggplot(data = NULL ,aes(x = v, y = k )) + geom_point() +
    ggtitle("Comparación normalidad de regresión vs residuos") +
    xlab("valores predichos para variable explicada") + 
    ylab("residuos estandarizados")
 
  
  g1} 
 
scatterplottest(residuos,yprediction) }