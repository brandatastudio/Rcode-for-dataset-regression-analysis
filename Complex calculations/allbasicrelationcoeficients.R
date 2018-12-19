#this script calculates all the correlations of an interval of variables through a loop
#in a dataframe object
# for a particular Y, dependent variable, printing it on a list. It will automatically ignore
# non numeric variables, dataorigin is a dataframe object, yvalue is the dependent variable ( 
#it should be delivered as just the number from the index of de data frame) , interval is a vector
# of numbers containing the indexes of the variables of the dataframe we want to correlate to y.

allbasicorcofs <- function(dataorigin, yvalue, interval) {
  library(ineq)
  library(e1071)
  
  # yvalue will be the variable that will be dependent, we will study relation
  # of all other variables, to this variable.
  
  basicstats <- function(dataset, yval, k) {
    library(e1071)
    
    c(
      "correlation coef" = cor(k, yval),
      "Rsquare" = cor(k, yval) ^ 2 ,
      "covariance" = cov(k, yval),
      "gini index" = Gini(x = k , n = yval)
    )

  }
  
  
 
  
  print(c("dependent variable", colnames(dataorigin[yvalue])))
  
  for (i in interval) {
   
    
    if (is.numeric(dataorigin[[i]]) == 'TRUE') {
      name_of_variable_x <- colnames(dataorigin[i])
      print(c("independent variable ", name_of_variable_x))
      print(basicstats(dataorigin, yval = dataorigin[[yvalue]],
                       k = dataorigin[[i]]))
    }
    
    else if (is.numeric(dataorigin[[i]]) == 'FALSE') {
      name_of_variable <- colnames(dataorigin[i])
      
      print(c(name_of_variable, "not numerical"))
      }
  } 
}

# example call : allbasicorcofs(datoprueba,8,c(1:18))  


