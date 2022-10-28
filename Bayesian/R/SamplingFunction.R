#'Sampling Function 
#'
#' This function plots a probability density function of binary data options
#'@param input a data frame of binary data
#'@param input the number of trials
#'@keywords probability, density 
#'@export 
#'@example 
#'SamplingFunction()
#SampleData <-read.csv("SampleData.csv")

#NumbTrials <- ncol(SampleData)
#FrequencyVector <- vector(mode= "numeric", length = NumbTrials)


#ggplot(data = FrequencyVector) +
# geom_density(color = "midnightblue", fill = "skyblue", alpha.f = 0.5)
# ggplot requires a data frame, not a vector

SamplingFunction<-function(SampleData, NumbTrials){
  
  for (i in 1:NumbTrials){
    FrequencyVector[i]<- sum(SampleData[1:nrow(SampleData), i])
  }
  #making plot
  plot(density(FrequencyVector), col = "Blue")
  return(FrequencyVector)
}