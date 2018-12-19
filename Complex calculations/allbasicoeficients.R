
# This code intends to calculate the most important coeficients to understand the distribution
# of a variable. Basically it interacts through a 
# loop with a dataset, calculating Kurtosis , Pearson Variation, Gini_ Index ,quantiles, lower
# and upper whisker of the dataset.  

# The arguments are: dataorigin ( a dataframe object) , interval, as a vector of numbers
# concatenated through c(), for example c(3,5,10) or c(1:19) indicating how many colums of the 
# dataframe we want. 


allbasiccofs <- function(dataorigin, interval) {
  
  library(e1071)
  install.packages("ineq")
  library(ineq)
  

  
  
  basicstats <- function(dataset) { 
  
    
    c(" Kurtosis cof" = kurtosis(dataset), "Fishers skewness" = skewness(dataset) ,
      "Pearson variation cof" = sd(dataset)/abs(mean(dataset)),"gini_index" = ineq(dataset,type ="Gini") 
      ,"quantiles" = quantile(dataset), "Lower whisker" = 
        boxplot(dataset)$stats[c(1)], 
      "Upper whisker" = boxplot(dataset)$stats[c(5)] )
    
    }
  
  
  
  for (i in interval) { 
    if (is.numeric(dataorigin[[i]]) =='TRUE') {
      name_of_variable <- colnames(dataorigin[i])
      print(name_of_variable)
      print(basicstats(dataorigin[[i]]))}
    
    else if (is.numeric(dataorigin[[i]]) == 'FALSE') {
      name_of_variable <- colnames(dataorigin[i])
      print(name_of_variable)
      print("la variable no es numerica")}
  } }

# example call : allbasiccofs(datoprueba,c(1:18)) 