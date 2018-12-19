library("ggpubr")
library(ggplot2)
library(gridExtra)

#this is a boxplot to compare groups of variables for one particular variable, inside the same
# data frame, ( for example, to compare sales between two different locations, or, anything between categories)
#dataorigin needs to be the dataframe object, k will be the column name inside " " of the group variable,
# and v will be the column name of the analized variable

populationcomparison <- function(dataorigin,k,v) {

  
  
 g1 <- ggboxplot(dataorigin,x = k, y = v,
               color = k , palette = c("#00AFBB", "#E7B800"),
               ylab = v, xlab = "Groups")
 

 
g1
 
}
 




# example code: populationcomparison(datostotalesmybvertical,"PROVINCIA","VENTAS")