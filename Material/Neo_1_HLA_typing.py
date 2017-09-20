from TIminer import TIminerAPI

TIminerAPI.executeOptitype(inputtype="rna", 
	inputFile1="../Input/Patient_1_RNAseq.fastq",
	outputFile="../Output/Patient_1_HLA_typing.txt", 
	subjectId='Patient_1', 
	threadCount=8)

