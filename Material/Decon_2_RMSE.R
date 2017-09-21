# Function to compute root-mean-square error (RMSE) between estimated and true cell fractions
getrmse<-function(ytrue, yest) {
  
  rmse<-sqrt(mean((yest-ytrue)^2, na.rm = TRUE))
  return(rmse)
  
}