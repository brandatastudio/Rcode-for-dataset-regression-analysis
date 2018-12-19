
# this will apply the qqnorm and qqline functions to the standarized residuals of a regresion model.
# the only argument is the regression model itself, it has to have been created with lm()

residualnormalitygraph <- function(regresionaevaluar) {

residuos <-  rstandard(regresionaevaluar)

qqnorm(residuos)
qqline(residuos)

}

# This will calculate ratios like the skewness , kurtosis coeficient,  and shapiro wilks test to the standarized residuals of a regression model
# the only argument is a regression created with lm() function. 

residualnormalityratios <- function(regresionaevaluar) {
  library(e1071)
  
residuos <- rstandard(regresionaevaluar)
  
c( "skewness" = skewness(residuos), "kurtosis" = kurtosis(residuos) ,"shapiro test"  = shapiro.test(residuos))

}
  
  

    