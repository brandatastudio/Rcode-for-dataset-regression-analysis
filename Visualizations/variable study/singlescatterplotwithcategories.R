#this will calculate a scatterplot for a k dependent variable, a v independent variable, 
#and differentiate by j categories for a dataframe object, specified as the dataset argument
# k,v and j, are numbers indicating the index of each respective variable colum inside the dataframe.


scatterplotwithfacetgrid <- function(dataset,k,v,j) {
 
  
  g1 <- ggplot(dataset,aes(x = dataset[[v]], y = dataset[[k]] )) + geom_point() +
    facet_grid(.~dataset[[j]]) +
    ggtitle("Basic relation plot") + 
    xlab(colnames(dataset[v])) +  
    ylab(colnames(dataset[k]))
  
  g1
}

#example
#scatterplotwithfacetgrid(datospracticawithcut,8,9,19)

