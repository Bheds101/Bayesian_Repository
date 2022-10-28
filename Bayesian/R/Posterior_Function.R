#' Posterior Function 
#'
#' This function plots a posterior curve with Base R
#'@param input 1) A numeric weight (0-1) for the Prior
#'@param input 2) vector of data from Prior 
#'@param input 3) A numeric weight (0-1) for Sampling Data 
#'@param input 4) A vector of frequencies for sampling data
#'@keywords Posterior, Bayesian
#'@export
#'@examples
#'Posterior_Function




#Prior_Weight <- .2
#Sampling_Weight <- .8

#Weighted_Prior <- vector(mode= "numeric", length = NumbTrials)
#Weighted_Sample <- vector(mode= "numeric", length = NumbTrials)
#Posterior_Data <- vector(mode= "numeric", length = NumbTrials)
#Posterior <- vector(mode= "numeric", length = NumbTrials)

Posterior_Function<- function(Prior_Weight,prior,Sampling_Weight, FrequencyVector){
  Weighted_Prior <- Prior_Weight * prior
  Weighted_Sample <- Sampling_Weight * FrequencyVector
  Posterior_Data <- Weighted_Prior + Weighted_Sample
  Posterior <- dnorm(Posterior_Data, mean = mean(Posterior_Data), sd = sd(Posterior_Data))
  plot(prior_data, Posterior, type = "l", col = "green")
  
}