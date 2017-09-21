# Load functions to assess deconvolution results
source("Decon_3_Assess_Performance.R")

# Load cell fractions computed with CIBERSORT
cell.est<-read.csv("../Output/Decon_CIBERSORT_PBMC_cell_fractions.txt", 
                    row.names=1, header=TRUE, sep="\t", stringsAsFactors=FALSE)

# Load cell fractions from flow cytometry
cell.true<-read.csv("../Input/FlowCytometry_Newman_PBMC.txt", 
                    row.names=1, header=TRUE, sep="\t", stringsAsFactors=FALSE)

# Sum resting and activated NK cells
cell.est$NK.cells<-cell.est$NK.cells.resting + cell.est$NK.cells.activated

# Assess and plot results
pdf("../Output/Decon_CIBERSORT_PBMC_performance.pdf")
plotRes(cell.true, cell.est)
dev.off()
