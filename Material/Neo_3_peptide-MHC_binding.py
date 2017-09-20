from TIminer import TIminerAPI

TIminerAPI.executeNetmhcpan(inputFile="../Output/Patient_1_VEP_37_mutations.txt",
	mutatedProteinsInputFile="../Output/Patient_1_VEP_37_proteins.txt", 
	hlaInputFile="../Input/Patient_1_HLA-A.txt",
	outputFile="../Output/Patient_1_NetMHCpan_binders.txt", 
	threadCount=8, 
	minPeptideLength=8, 
	maxPeptideLength=11, 
	affinityThresh=500)
