from TIminer import TIminerAPI

TIminerAPI.filterNeoantigenFile(neoantigenInputFile="../Output/Patient_1_NetMHCpan_binders.txt", 
	geneExpressionInputFile="../Input/Patient_1_normalized_expression.txt",
	filteredNeoantigenOutputFile="../Output/Patient_1_candidate_neoantigens.txt", 
	expressionThreshold=1)

