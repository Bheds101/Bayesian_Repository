#' Prior Function 
#'
#' This function plots a normal curve of data 
#'@param input the vector of data to be plotted; mean and standard deviation can be varied within the function 
#'@keywords prior, density curve
#'@export
#'@example
#'Prior_Function()


#prior_data <- seq(from = 0.1, to = 10, by = .1)
#prior <- vector(mode= "numeric", length = NumbTrials)

Prior_Function<-function(prior_data){
  prior <- dnorm(prior_data, mean = 5.05, sd = 1)
  plot(prior_data, prior, type = "l", col = "red")
}


