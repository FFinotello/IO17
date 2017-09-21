# -------------------------
# Load data and functions

# Load functions to assess deconvolution results
source("Decon_3_Assess_Performance.R")

# Load R packages
library("DeconRNASeq")

# Load mixture
mix.mat<-read.csv("../Input/Mixture_Newman_PBMC.txt", 
                  row.names=1, header=TRUE, sep="\t", stringsAsFactors=FALSE)

# Load signature
sig.mat<-read.csv("../Input/Signature_CIBERSORT_LM22.txt",
  row.names=1, header=TRUE, sep="\t", stringsAsFactors=FALSE)

# Load cell fractions from flow cytometry
cell.true<-read.csv("../Input/FlowCytometry_Newman_PBMC.txt", 
  row.names=1, header=TRUE, sep="\t", stringsAsFactors=FALSE)


# -------------------------
# Perform deconvolution with DeconRNASeq

cell.est<-DeconRNASeq(mix.mat, sig.mat)
cell.est<-as.data.frame(cell.est$out.all)
rownames(cell.est)<-colnames(mix.mat)

# Save results
fileout<-"../Output/Decon_DeconRNASeq_PBMC_cell_fractions.txt"
write.table(cell.est, quote=FALSE, sep="\t",
            col.names=TRUE, row.names=TRUE, file=fileout)


# Sum resting and activated NK cells
cell.est$NK.cells<-cell.est$NK.cells.resting + cell.est$NK.cells.activated

# Assess and plot results
pdf("../Output/Decon_DeconRNASeq_PBMC_performance.pdf")
plotRes(cell.true, cell.est)
dev.off()


# -------------------------
# Perform deconvolution with DeconRNASeq
# but excluding naive B cells

sig.mat.noBnaive<-sig.mat[,setdiff(colnames(sig.mat),"B.cells.naive")]
cell.est<-DeconRNASeq(mix.mat, sig.mat.noBnaive)
cell.est<-as.data.frame(cell.est$out.all)
rownames(cell.est)<-colnames(mix.mat)

# Save results
fileout<-"../Output/Decon_DeconRNASeq_PBMC_noBnaive_cell_fractions.txt"
write.table(cell.est, quote=FALSE, sep="\t",
  col.names=TRUE, row.names=TRUE, file=fileout)

# Sum resting and activated NK cells
cell.est$NK.cells<-cell.est$NK.cells.resting + cell.est$NK.cells.activated

# Assess and plot results
pdf("../Output/Decon_DeconRNASeq_PBMC_noBnaive_performance.pdf")
plotRes(cell.true, cell.est)
dev.off()

