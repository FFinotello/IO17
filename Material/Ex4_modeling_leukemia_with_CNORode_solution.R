# 1. source the required packages and settings
library(CellNOptR)
library(MEIGOR)
library(CNORode2017)
load("optimisation_parameters.RData")

# 2. load the prior knowledge network (PKN) and plot it
pknmodel<-readSIF("PKN_Lymphocyte.sif") # ONLY FOR SOLUTION
plotModel(pknmodel) # ONLY FOR SOLUTION


#####
## leukemia (T_LGL) cells
# 3. load the data for the leukemia (T_LGL) cells and plot them
data_T_LGL<-readMIDAS(MIDASfile="MIDAS_T_LGL.csv") # ONLY FOR SOLUTION
cnolist_T_LGL<-makeCNOlist(data_T_LGL, subfield=F) # ONLY FOR SOLUTION
plotCNOlist(cnolist_T_LGL) # ONLY FOR SOLUTION

# 4. plot the simulated data using the initial parameters guess
simulated_data_T_LGL_initial_parameters=plotLBodeFitness(cnolist = cnolist_T_LGL, model = pknmodel, transfer_function=paramsSSm$transfer_function, ode_parameters=initial_parameters)

# 5. optimize the model
optimized_parameters_T_LGL=parEstimationLBode(cnolist_T_LGL, pknmodel, method="essm", ode_parameters=initial_parameters, paramsSSm=paramsSSm)

# 6. plot the fitted data using the optimised models 
simulated_data_T_LGL_optimized=plotLBodeFitness(cnolist_T_LGL, pknmodel, transfer_function=paramsSSm$transfer_function, ode_parameters=optimized_parameters_T_LGL)  # ONLY FOR SOLUTION


#####
## healthy (CTL) cells

# 7. Repeat points 3-6 using data for CTL cells

# load the data for the healthy cells
data_CTL<-readMIDAS(MIDASfile="MIDAS_CTL.csv")  # ONLY FOR SOLUTION
cnolist_CTL<-makeCNOlist(data_CTL, subfield=F)  # ONLY FOR SOLUTION
plotCNOlist(cnolist_CTL)  # ONLY FOR SOLUTION

# plot the fit with initial parameters guess
simulated_data_CTL_initial_parameters=plotLBodeFitness(cnolist_CTL, pknmodel, transfer_function=paramsSSm$transfer_function, ode_parameters=initial_parameters)  # ONLY FOR SOLUTION

# optimize the model
optimized_parameters_CTL=parEstimationLBode(cnolist_CTL, pknmodel, method="essm", ode_parameters=initial_parameters, paramsSSm=paramsSSm)  # ONLY FOR SOLUTION
simulated_data_CTL_optimized=plotLBodeFitness(cnolist_CTL, pknmodel, transfer_function=paramsSSm$transfer_function, ode_parameters=optimized_parameters_CTL)  # ONLY FOR SOLUTION

#####
## predictions

# 8. Load and plot the scaffold for the data to predict 
data_predictions<-readMIDAS(MIDASfile="MIDAS_predictions.csv")
cnolist_predictions<-makeCNOlist(data_predictions, subfield=F)
plotCNOlist(cnolist_predictions)

# 9. Simulate data using the optimised parameters both for T_LGL and CTL
predictions_T_LGL_optimized=plotLBodeFitness(cnolist_predictions, pknmodel, transfer_function=paramsSSm$transfer_function, ode_parameters=optimized_parameters_T_LGL)  # ONLY FOR SOLUTION
predictions_CTL_optimized=plotLBodeFitness(cnolist_predictions, pknmodel, transfer_function=paramsSSm$transfer_function, ode_parameters=optimized_parameters_CTL)  # ONLY FOR SOLUTION


