# -- Install libraries
# source('http://bioconductor.org/biocLite.R')
# biocLite('CellNOptR')
# biocLite('CNORdt')
# biocLite('CNORfuzzy')
# biocLite('CNORode')


# -- Load libraries
library('CellNOptR')
library('CNORdt')
library('CNORfuzzy')
library('CNORode')


# -- Load network and data
modelPB<-readSIF("ToyModelPB.sif")
plotModel(modelPB)

dataPB<-readMIDAS(MIDASfile="ToyModelPB.csv") 
CNOlistPB<-makeCNOlist(dataPB, subfield=F) 
plotCNOlist(CNOlistPB)

# alternative way to load the example data
# data(modelPB, package='CNORdt')
# data(CNOlistPB, package='CNORdt')


# preprocessing
model = preprocessing(CNOlistPB, modelPB)
plotModel(model)
plotModel(modelPB, CNOlist = CNOlistPB, compressed = model$speciesCompressed)


# -- 1. Boolean Steady-state

#data preparation
t = 10
CNOlistSS = CNOlistPB
tIndex = which(CNOlistSS$timeSignals == t)
CNOlistSS$timeSignals = c(0, t)
CNOlistSS$valueSignals = list(t0 = CNOlistPB$valueSignals[[1]], CNOlistPB$valueSignals[[tIndex]])

# optimisation
opt1 <- gaBinaryT1(CNOlist = CNOlistSS, model = model, verbose = FALSE, maxTime = 60)

# plot results
cutAndPlot(CNOlistSS, model, bStrings = list(opt1$bString))


# -- 2. Boolean Two time points (or additional steady state)
t = c(10, 30)
CNOlistSS2 = CNOlistPB
tIndex = which(CNOlistSS2$timeSignals == t[1])
tIndex[2] = which(CNOlistSS2$timeSignals == t[2])

# make a new CNOlist with 2 time points
CNOlistSS2$timeSignals = c(0, t)
CNOlistSS2$valueSignals = list(t0 = CNOlistPB$valueSignals[[1]],
                               CNOlistPB$valueSignals[[tIndex[1]]], CNOlistPB$valueSignals[[tIndex[2]]])

# optimise T1
opt2a <- gaBinaryT1(CNOlist = CNOlistSS2, model = model, maxTime = 60, verbose = FALSE)

# optimise T2
opt2b <- gaBinaryT2(CNOlist = CNOlistSS2, bStringT1 = opt2a$bString, model = model, maxTime = 60, verbose = FALSE)

# plot results
cutAndPlot(CNOlistSS2, model, list(opt2a$bString, opt2b$bString))


# -- 3. Synchronous multiple time point simulation with CNORdt
opt3 <- gaBinaryDT(CNOlist = CNOlistPB, model = model, boolUpdates = 30, maxTime = 60, lowerB = 0.8, upperB = 10)

# plot results
cutAndPlotResultsDT(CNOlist = CNOlistPB, bString = opt3$bString, model = model, boolUpdates = 30, lowerB = 0.8, upperB = 10)


# -- 4. Constrained fuzzy logic with CNORfuzzy
optCFL = CNORwrapFuzzy(data = CNOlistSS, model = model)
summary = compileMultiRes(list(optCFL), show = TRUE)

# plot results
plotMeanFuzzyFit(0.001, summary$allFinalMSEs, list(optCFL))

