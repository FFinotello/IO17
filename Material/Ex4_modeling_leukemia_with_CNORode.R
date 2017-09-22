# 1. source the required packages and settings
library(CellNOptR)
library(MEIGOR)
library(CNORode2017)
load("optimisation_parameters.RData")

# 2. load the prior knowledge network (PKN) and plot it
pknmodel<-

  
#####
## leukemia (T_LGL) cells
# 3. load the data for the leukemia (T_LGL) cells and plot them
data_T_LGL <-
cnolist_T_LGL <-

  
# 4. plot the simulated data using the initial parameters guess
simulated_data_T_LGL_initial_parameters=plotLBodeFitness(cnolist = cnolist_T_LGL, model = pknmodel, transfer_function=paramsSSm$transfer_function, ode_parameters=initial_parameters)

# 5. optimize the model
optimized_parameters_T_LGL=parEstimationLBode(cnolist_T_LGL, pknmodel, method="essm", ode_parameters=initial_parameters, paramsSSm=paramsSSm)

# 6. plot the fitted data using the optimised models 
simulated_data_T_LGL_optimized <-

#####
## healthy (CTL) cells

# 7. Repeat points 3-6 using data for CTL cells

# load the data for the healthy cells
data_CTL <-
cnolist_CTL <-

# plot the fit with initial parameters guess
simulated_data_CTL_initial_parameters <-

# optimize the model
optimized_parameters_CTL <-
simulated_data_CTL_optimized <-

#####
## predictions

# 8. Load and plot the scaffold for the data to predict 
data_predictions<-readMIDAS(MIDASfile="MIDAS_predictions.csv")
cnolist_predictions<-makeCNOlist(data_predictions, subfield=F)
plotCNOlist(cnolist_predictions)

# 9. Simulate data using the optimised parameters both for T_LGL and CTL
predictions_T_LGL_optimized <-
predictions_CTL_optimized <-


