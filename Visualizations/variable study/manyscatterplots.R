# this allows to calculate, in a loop  scatterplots for an interval of variables in 
# a dataframe for one particular dependent variable, all represented on one same screen
# with one function. 

allscatterplot <- function(dataorigin, interval, yvalue, screendist) {
  # data origin will be a dataframe object, interval a vector c() formed by numbers
  # indicating what colums we are interested in to calculate histograms for. 
  # screendist goes for screen distribution, how many rows we want those graphs presented in. 
  
  
  # yvalue will determine of all the variables in the dataframe, which one will be the dependent
  # variable in the scatterplots, the rest of variables will be treated as independent when
  # defining the scatterplots. 

  
  library(ggplot2)
  library(gridExtra)

basicscatterplot <- function(dataset,k,v) {
 
  
  g1 <- ggplot(dataset,aes(x = dataset[[v]], y = dataset[[k]] )) + geom_point() +
    ggtitle("Basic relation plot") + 
    xlab(colnames(dataset[v])) +  
    ylab(colnames(dataset[k])) }

# this is important: if you want more than the default 7 , you need to create
# new variables after h4, you just need to copy the code and add one more number on the interval
#subsetting. For example, if we want to create 5 histograms, we would add one more variable here
# like    sc9 <- basicscatterplot(dataorigin,yvalue,interval[9])
#  sc10 <- basicscatterplot(dataorigin,yvalue,interval[10])) and so on. After adding , you need to 
# add the new created variable to the grid arrange, adding a new coma before the nrow argument
# grid.arrange(sc1,sc2,sc3,sc4,sc5,sc6,sc7,sc8,nrow = 3 )}

sc1 <- basicscatterplot(dataorigin,yvalue,interval[1])
sc2 <- basicscatterplot(dataorigin,yvalue,interval[2])
sc3  <- basicscatterplot(dataorigin,yvalue,interval[3])
sc4  <- basicscatterplot(dataorigin,yvalue,interval[4])
sc5  <- basicscatterplot(dataorigin,yvalue,interval[5])
sc6  <- basicscatterplot(dataorigin,yvalue,interval[6])
sc7  <- basicscatterplot(dataorigin,yvalue,interval[7])
sc8  <- basicscatterplot(dataorigin,yvalue,interval[8])


grid.arrange(sc1,sc2,sc3,sc4,sc5,sc6,sc7,sc8,nrow = 3 )}




# example code : allscatterplot(datoprueba,c(1,3,4,5,6,7,8,9),8,3)  
