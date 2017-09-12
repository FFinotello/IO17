# Detailed program


## September 19<sup>th</sup>, 2017
**16:00-18:30**
* Optional extra session to check on familiarity with minimal computer usage operation in Linux and R


## September 20<sup>th</sup>, 2017
**09:30-11:30** 
* Introduction of participants and expectations
* [Bioinformatics for Cancer Immunology and Immuno-Oncology](Material/1_1_Intro.pptx)
* [Prediction of tumor neoantigens](Material/1_2_Prediction_of_tumor_neoantigens.pptx)
* [HLA typing](Material/1_3_HLA_typing.pptx)
* [Exercise 1 and questions: HLA typing](Material/Deconvolution_ex_1.pptx)
  * [*Patient_1_RNAseq.fastq*](Input_data/Patient_1_RNAseq.fastq)

**11:00-11:30**
*Coffee Break*

**11:30-12:30**
* [Solution: exercise 1 and questions](Material/Neoantigen_ex_1_sol.pptx)
  * [*Patient_1_HLA_typing.txt*](Material/Patient_1_HLA_typing.txt)
  * [*Patient_1_HLA_typing_coverage_plot.pdf*](Material/Patient_1_HLA_typing_coverage_plot.pdf)
* [Variant annotation](Material/1_4_Variant_annotation.pptx)
* [Exercise 2 and questions: variant annotation](Material/Neoantigen_ex_2.pptx)
  * [*Patient_1_mutations.vcf*](Input_data/Patient_1_mutations.vcf)

**12:30-14:00**
*Lunch Break*

**14:00-16:00**
* [Solution: exercise 2 and questions](Material/Neoantigen_ex_2_sol.pptx)
  * [*Patient_1_VEP_37_mutations.txt*](Material/Patient_1_VEP_37_mutations.txt)
  * [*Patient_1_VEP_37_proteins.txt*](Material/Patient_1_VEP_37_proteins.txt)
* [Peptide-MHC binding prediction](Material/1_5_Peptide-MHC_binding_prediction.pptx)
* [Exercise 3 and questions: peptide-MHC binding prediction](Material/Neoantigen_ex_3.pptx)

**16:00-16:30**
*Tea Break*

**16:30-18:00**
* [Solution: exercise 3 and questions](Material/Neoantigen_ex_3_sol.pptx)
  * [*Patient_1_NetMHCpan_binders.txt*](Material/Patient_1_NetMHCpan_binders.txt)
* Wrap-up and questions
* [Exercise 4: neoantigen prioritization](Material/Neoantigen_ex_4.pptx)
  * [*Patient_1_normalized_expression.txt*](Input_data/Patient_1_normalized_expression.txt)
* Brainstorming: strategies for neoantigen prioritization


## September 21<sup>st</sup>, 2017

**09:30-11:30** 
* Morning wrap-up
* [Solution: exercise 4 and questions](Material/Neoantigen_ex_4_sol.pptx)
  * [*Patient_1_candidate_neoantigens.txt*](Material/Patient_1_candidate_neoantigens.txt)
* [Discussion about neoantigen prioritization](Material/Discussion_neoantigen_prioritization.pptx)
* [Tumor-infiltrating immune cells](Material/2_1_Tumor-infiltrating_immune_cells.pptx)
* [Computational quantification of tumor-infiltrating immune cells](Material/2_2_Computational_quantification_of_tumor_infiltrating_immune_cells.pptx)
* [Exercise 1: SVR deconvolution of PBMC data](Material/Deconvolution_ex_1.pptx)
  * [*Mixture_Newman_PBMC.txt*](Input_data/Mixture_Newman_PBMC.txt)
  * [*Signature_CIBERSORT_LM22.txt*](Input_data/Signature_CIBERSORT_LM22.txt)

**11:00-11:30**
*Coffee Break*

**11:30-12:30**
* [Assessing deconvolution performance](Material/2_3_Assessing_deconvolution_performance.pptx)
* [Exercise 1: SVR deconvolution of PBMC data (continued…)](Material/Deconvolution_ex_1.pptx)
* [Exercise 2: RMSE](Material/Deconvolution_ex_2.pptx)
* [Exercise 3: deconvolution performance (optional)](Material/Deconvolution_ex_3.pptx)

**12:30-14:00**
*Lunch Break*

**14:00-16:00**
Solution: exercise 1
 * [*Decon_1_Deconvolution_SVM_PBMC.R*](Material/Decon_1_Deconvolution_SVM_PBMC.R)
 * [*Decon_SVR_PBMC_cell_fractions.txt*](Material/Decon_SVR_PBMC_cell_fractions.R)
* Solution: exercise 2
  * [*Decon_2_RMSE.R*](Material/Decon_2_RMSE.R)
* Solution: exercise 3
  * [*Decon_3_Assess_Performance.R*](Material/Decon_3_Assess_Performance.R)
* [Deconvolution Methods](Material/2_4_Deconvolution_methods.pptx)
* [Exercise 4: assess SVR performance on PBMC data](Material/Deconvolution_ex_4.pptx)
  * [*CellFractions_Newman_PBMC.txt*](Input_data/CellFractions_Newman_PBMC.txt)
* [Exercise 5: Run and assess DeconRNASeq on PBMC data](Material/Deconvolution_ex_5.pptx)
* [Questions: deconvolution](Material/Deconvolution_questions.pptx)
* Brainstorming: deconvolution challenges

**16:00-16:30**
*Tea Break*

**16:30-18:00**
* [Solution: exercise 4](Material/Deconvolution_ex_4_sol.pptx)
  * [*Decon_4_Assess_Deconvolution_SVR_PBMC.R*](Material/Decon_4_Assess_Deconvolution_SVR_PBMC.R)
  * [*Decon_SVR_PBMC_cell_fractions.pdf*](Material/Decon_SVR_PBMC_cell_fractions.pdf)
* [Solution: exercise 5](Material/Deconvolution_ex_5_sol.pptx)
  * [*Decon_5_Assess_Deconvolution_DeconRNASeq_PBMC.R*](Material/Decon_5_Assess_Deconvolution_DeconRNASeq_PBMC.R)
  * [*Decon_DeconRNASeq_PBMC_cell_fractions.txt*](Material/Decon_DeconRNASeq_PBMC_cell_fractions.txt)
  * [*Decon_DeconRNASeq_PBMC_cell_fractions.pdf*](Material/Decon_DeconRNASeq_PBMC_cell_fractions.pdf)
  * [*Decon_DeconRNASeq_PBMC_noBnaive_cell_fractions.txt*](Material/Decon_DeconRNASeq_PBMC_noBnaive_cell_fractions.txt)
  * [*Decon_DeconRNASeq_PBMC_noBnaive_cell_fractions.pdf*](Material/Decon_DeconRNASeq_PBMC_noBnaive_cell_fractions.pdf)
* [Solution: deconvolution questions](Material/Deconvolution_questions_sol.pptx)
* [Discussion about deconvolution challenges](Material/Discussion_deconvolution_challenges.pptx)
* [Exercises 6 and 7 (at your choice)](Material/Deconvolution_ex_6-7.pptx)
  * [*TCGA_CRC_TPM.zip*](Input_data/TCGA_CRC_TPM.zip)
  * [*TCGA_CRC_MSI_status.zip*](Input_data/TCGA_CRC_MSI_status.zip)
* Wrap-up and questions
 

## September 22<sup>nd</sup>, 2017

**09:30-11:30** 
* Morning wrap-up
* [Solution: exercise 6](Material/Deconvolution_ex_6_sol.pptx)
  * [*Decon_7_Deconvolution_DeconRNASeq_CRC.R*](Material/Decon_7_Deconvolution_DeconRNASeq_CRC.R)
  * [*Decon_DeconRNASeq_CRC_cell_fractions.txt*](Material/Decon_DeconRNASeq_CRC_cell_fractions.txt)
  * [*Decon_DeconRNASeq_CRC_CD8_fractions_vs_MSI_status.pdf*](Material/Decon_DeconRNASeq_CRC_CD8_fractions_vs_MSI_status.pdf)
* Signaling pathways in cancer and immune cells
* Exercise 1: pathways analysis with Omnipath
  * *Ex1_Omnipath.pdf*
  * *Ex1_Omnipath.R*

**11:00-11:30**
*Coffee Break*

**11:30-12:30**
* Solution: Excercise 1
  * *Ex1_Omnipath_solution.R*
* Modeling framework and Boolean logic models
* Excercise 2: Modeling signaling pathways with Cytocopter (Cytoscape plugin)

**12:30-14:00**
*Lunch Break*

**14:00-16:00**
* Other logic formalism
* Excercise 3: Comparing different logic formalisms with CellNOptR
  * *Ex3_tutorialCellNOptR.R*
* Excercise 4: Modeling context specific pathways with CNORode
  * *Ex4_tutorialCNORode.R*
  * *PKN.sif*
  * *data_group1.csv*
  * *data_group2.csv*
 

**16:00-16:30**
*Tea Break*

**16:30-18:00**
* TBA...
* Final wrap-up

