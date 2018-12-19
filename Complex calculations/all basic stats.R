#this scripts is desgined to calculate all the basic stats of an interval of vairables of
# a data set through a for loop, and delivering the results in vectors, on a same list.
#it calculates the mean, the median, the max value , the variance, the typical deviation
# and the mode. It will automatically only take in consideration numerical variables, non numerica
# will be ignored with a " not numerical" print
# data origin is a dataframe object, interval is a vector of numbers formed by c(), example
#c(2,3,4) or c(1:4)
allbasicstats <- function(dataorigin, interval) {
  
  basicstats <-
    function(dataset) {
      c(
        "mean" = mean(dataset),
        "median" = median(dataset),
        "maximun" = max(dataset),
        "minimal" = min(dataset),
        "Typical deviation" = sd(dataset),
        "var" = var(dataset),
        "mode" = as.numeric(names(sort(-table(dataset)))[1])
      )
    }
  
 
  
  
  for (i in interval) {
    if (is.numeric(dataorigin[[i]]) == 'TRUE') {
      name_of_variable <- colnames(dataorigin[i])
      print(name_of_variable)
      print(basicstats(dataorigin[[i]]))
    }
    
    else if (is.numeric(dataorigin[[i]]) == 'FALSE') {
      name_of_variable <- colnames(dataorigin[i])
      print(name_of_variable)
      print("Not a numeric variable")
    }
  }
}


# example call : allbasicstats(datoprueba,c(1:18))
