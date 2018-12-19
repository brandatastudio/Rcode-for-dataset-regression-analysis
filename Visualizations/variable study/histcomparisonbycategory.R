# this compares the freuency distribution for a variable based on categories of the same
# dataframe  , for visualization porpuses the idea is for it to be to values in the cateogoric
# variable, meaning the dataframe only has two categories. Even so if there are more, the 
# graph will plot it nonetheless. Arguments: dataorigin is a dataframeobject, k is the index 
# of the categorical variable in the dataframe, v is the index of the numeric variable to plot

populationcomparisonhist <- function(dataorigin,k,v) {

g2 <- ggplot(dataorigin,aes(x = dataorigin[[v]]))

histcomp1 <-  g2 + geom_histogram(color = "darkseagreen1") + 
  geom_freqpoly(size = 1, color = "dodgerblue") + facet_grid(aes(color = dataorigin[[k]])) +
  ggtitle("Distribucion de frecuencia de valores en Histograma")+ xlab(colnames(v)) +
  ylab("frecuencia")

histcomp1
}


# example populationcomparisonhist(datostotalesmybvertical,2,8)