# this will calculate a ggcor graph of a particular dataset , a graph representing
# with colors the correlations of all the vaiables included on the specified dataset
# dataorigin is a dataframe objetct. its important, the dataframe must only have numeric variable


library(ggplot2)
library(GGally)
library(stats)

corrmatrixgraph <- function(dataorigin) {

p <- cor(dataorigin)

 ggcorr(p) + ggtitle("Correlation matriz")

}

#example : corrmatrixgraph(datoprueba[-2])  , the [-2] was to eliminate a categorical variable