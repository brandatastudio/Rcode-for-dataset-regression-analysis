# This script is meant to calculate, through a loop, a corr test between and yvalue dependent variable
# and an interval of variables from a dataframe object, to see if their correlation is different
# than cero by less than a 0.05 significance. The results are printed on a list. 
# data origin is a dataframe object, yvalue is a dependent variable, should be added as a number
# indicating the index of that variables colum, in the dataframe. Interval should be a vector
# formed by numbers, indicating those variables indexes. Like c(1,2,3) or c(1:18). It will
# automatically ignore not numeric variables in the loop.

allcortest <- function(dataorigin, yvalue, interval) {
  library(ineq)
  library(e1071)
  
  # yvalue will be the variable that will be dependent, we will study relation
  # of all other variables, to this variable.
  
  basicstats <- function(dataset, yval, k) {
  
    
    cor.test(k,yval)
    
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

# example call : allcortest(datoprueba,8,c(1:18))