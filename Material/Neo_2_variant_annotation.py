from TIminer import TIminerAPI

TIminerAPI.executeVep(inputFile="../Input/Patient_1_mutations.vcf",
	subject="Patient_1", 
	outputFile="../Output/Patient_1_VEP_37_mutations.txt", 
	mutatedSeqOutputFile="../Output/Patient_1_VEP_37_proteins.txt", 
	cacheDir="/ader/databases/vep",
	genomeVersion=37)
