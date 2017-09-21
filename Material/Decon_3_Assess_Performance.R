# Function to compute root-mean-square error (RMSE) between estimated and true cell fractions
getrmse<-function(ytrue, yest) {
  
  rmse<-sqrt(mean((yest-ytrue)^2, na.rm = TRUE))
  return(rmse)
  
}

# Function to plot estimated versus true cell fractions
# and to estimate RMSE and Pearson's correlation
plotRes<-function(cell.true, cell.est){
  
  # Select common column and row names
  celltypes<-intersect(colnames(cell.true),colnames(cell.est))
  samples<-intersect(rownames(cell.true),rownames(cell.est))
  cell.true<-cell.true[samples,celltypes]
  cell.est<-cell.est[samples,celltypes]
  ncells<-length(celltypes)
  
  palette<-c("#451C87",
    "#b3b300",
    "#CE0648",
    "#2363C5",
    "#efd22b",
    "#AB4CA1",
    "#0A839B",
    "#DD8C24",
    "#24A9DD",
    "#ED6D42",
    "#5dc174",
    "#808A8D",
    "#FA8072",
    "#6fc0e2",
    "#FF4500",
    "#A0522D",
    "#FFA500",
    "#FFD700",
    "#9ACD32",
    "#AD4B4E",
    "#F4EA06",
    "#B4BCD2")
  palette<-palette[1:ncells]
  
  # Vector of colors for all cell types together
  allcol<-c()
  
  # Iterate across all cell type
  # and consider also all cell types together
  for (i in 1:(ncells+1)) {
    
    # Cell type i
    if (i<=ncells) {
      x<-cell.true[,i]
      y<-cell.est[,i]
      main<-celltypes[i]
      col<-rep(palette[i], nrow(cell.true))
      allcol<-c(allcol, col)
      
    # All cell types together
    } else {
      x<-as.vector(as.matrix(cell.true))
      y<-as.vector(as.matrix(cell.est))
      main<-"All cell types"
      col<-allcol
    }
    
    # Compute RMSE
    res.rmse<-round(getrmse(x,y), digits=2)
    
    # Compute Pearson's correlation
    res.corr<-round(cor(x,y), digits=2)
    
    # Plot estimated and true cell fractions
    plot(x, y,
         pch=19,
         xlab="True cell fractions",
         ylab="Deconvoluted fractions",
         main=main,
         col=col,
         sub=paste0("r=", res.corr, ", RMSE=", res.rmse))
    
    # Plot x=y line (i.e. estimated=true)
    abline(0,1,lty=2)
    
    # Print results
    cat(paste(main, res.corr, res.rmse, sep="\t"), "\n")
    

    
  }
  
}