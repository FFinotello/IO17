# Detailed program


## September 19<sup>th</sup>, 2017
**16:00-18:30**
* Optional extra session to check on familiarity with minimal computer usage operation in Linux and R


## September 20<sup>th</sup>, 2017
**09:30-11:00** 
* Introduction of participants
* [Bioinformatics for Cancer Immunology and Immuno-Oncology](Material/1_1_Intro.pdf)
* [Prediction of tumor neoantigens](Material/1_2_Prediction_of_tumor_neoantigens.pdf)
* [HLA typing](Material/1_3_HLA_typing.pdf)
* [Exercise 1 and questions: HLA typing](Material/Neoantigen_ex_1.pdf)
  * [*Patient_1_RNAseq.fastq*](Input_data/Patient_1_RNAseq.fastq)

**11:00-11:30**
*Coffee Break*

**11:30-12:30**
* [Solution: exercise 1 and questions](Material/Neoantigen_ex_1_sol.pdf)
  * [*Patient_1_HLA_typing.txt*](Material/Patient_1_HLA_typing.txt)
  * [*Patient_1_HLA_typing_coverage_plot.pdf*](Material/Patient_1_HLA_typing_coverage_plot.pdf)
* [Variant annotation](Material/1_4_Variant_annotation.pdf)
* [Exercise 2 and questions: variant annotation](Material/Neoantigen_ex_2.pdf)
  * [*Patient_1_mutations.vcf*](Input_data/Patient_1_mutations.vcf)

**12:30-14:00**
*Lunch Break*

**14:00-16:00**
* [Solution: exercise 2 and questions](Material/Neoantigen_ex_2_sol.pdf)
  * [*Patient_1_VEP_37_mutations.txt*](Material/Patient_1_VEP_37_mutations.txt)
  * [*Patient_1_VEP_37_proteins.txt*](Material/Patient_1_VEP_37_proteins.txt)
* [Peptide-MHC binding prediction](Material/1_5_Peptide-MHC_binding_prediction.pdf)
* [Exercise 3 and questions: peptide-MHC binding prediction](Material/Neoantigen_ex_3.pdf)
  * [*Patient_1_HLA-A.txt*](Input_data/Patient_1_HLA-A.txt)

**16:00-16:30**
*Tea Break*

**16:30-18:00**
* [Solution: exercise 3 and questions](Material/Neoantigen_ex_3_sol.pdf)
  * [*Patient_1_NetMHCpan_binders.txt*](Material/Patient_1_NetMHCpan_binders.txt)
* Wrap-up and questions
* [Exercise 4: neoantigen prioritization](Material/Neoantigen_ex_4.pdf)
  * [*Patient_1_normalized_expression.txt*](Input_data/Patient_1_normalized_expression.txt)
* Brainstorming: strategies for neoantigen prioritization


## September 21<sup>st</sup>, 2017

**09:30-11:00** 
* Morning wrap-up
* [Solution: exercise 4 and questions](Material/Neoantigen_ex_4_sol.pdf)
  * [*Patient_1_candidate_neoantigens.txt*](Material/Patient_1_candidate_neoantigens.txt)
* [Discussion about neoantigen prioritization](Material/Discussion_neoantigen_prioritization.pdf)
* [Tumor-infiltrating immune cells](Material/2_1_Tumor-infiltrating_immune_cells.pdf)
* [Computational quantification of tumor-infiltrating immune cells](Material/2_2_Computational_quantification_of_tumor_infiltrating_immune_cells.pdf)
* [Exercise 1: deconvolution of PBMC data with CIBERSORT](Material/Deconvolution_ex_1.pdf)
  * [*Mixture_Newman_PBMC.txt*](Input_data/Mixture_Newman_PBMC.txt)
  * [*Signature_CIBERSORT_LM22.txt*](Input_data/Signature_CIBERSORT_LM22.txt)

**11:00-11:30**
*Coffee Break*

**11:30-12:30**
* [Assessing deconvolution performance](Material/2_3_Assessing_deconvolution_performance.pdf)
* [Exercise 2: RMSE](Material/Deconvolution_ex_2.pdf)
* [Exercise 3: deconvolution performance (optional)](Material/Deconvolution_ex_3.pdf)

**12:30-14:00**
*Lunch Break*

**14:00-16:00**
* Solution: exercise 1
  * [*Decon_CIBERSORT_PBMC_output.txt*](Material/Decon_CIBERSORT_PBMC_output.txt)
  * [*Decon_CIBERSORT_PBMC_output_cell_fractions.txt*](Material/Decon_CIBERSORT_PBMC_output_cell_fractions.txt)
* Solution: exercise 2
  * [*Decon_2_RMSE.R*](Material/Decon_2_RMSE.R)
* Solution: exercise 3
  * [*Decon_3_Assess_Performance.R*](Material/Decon_3_Assess_Performance.R)
* [Exercise 4: assess CIBERSORT performance on PBMC data](Material/Deconvolution_ex_4.pdf)
  * [*CellFractions_Newman_PBMC.txt*](Input_data/CellFractions_Newman_PBMC.txt)

**16:00-16:30**
*Tea Break*

**16:30-18:00**
* Solution: exercise 4
  * [*Decon_4_Assess_Deconvolution_SVR_PBMC.R*](Material/Decon_4_Assess_Deconvolution_SVR_PBMC.R)
  * [*Decon_SVR_PBMC_cell_fractions.pdf*](Material/Decon_SVR_PBMC_cell_fractions.pdf)
  * [Deconvolution Methods](Material/2_4_Deconvolution_methods.pdf)
* [Exercise 5: Run and assess DeconRNASeq on PBMC data](Material/Deconvolution_ex_5.pdf)
* [Questions: deconvolution](Material/Deconvolution_questions.pdf)
* Brainstorming: deconvolution challenges
* Wrap-up and questions
 

## September 22<sup>nd</sup>, 2017

**09:30-11:00** 
* Morning wrap-up
* Solution: exercise 5
  * [*Decon_5_Assess_Deconvolution_DeconRNASeq_PBMC.R*](Material/Decon_5_Assess_Deconvolution_DeconRNASeq_PBMC.R)
  * [*Decon_DeconRNASeq_PBMC_cell_fractions.txt*](Material/Decon_DeconRNASeq_PBMC_cell_fractions.txt)
  * [*Decon_DeconRNASeq_PBMC_cell_fractions.pdf*](Material/Decon_DeconRNASeq_PBMC_cell_fractions.pdf)
  * [*Decon_DeconRNASeq_PBMC_noBnaive_cell_fractions.txt*](Material/Decon_DeconRNASeq_PBMC_noBnaive_cell_fractions.txt)
  * [*Decon_DeconRNASeq_PBMC_noBnaive_cell_fractions.pdf*](Material/Decon_DeconRNASeq_PBMC_noBnaive_cell_fractions.pdf)
* [Solution: deconvolution questions](Material/Deconvolution_questions_sol.pdf)
* [Discussion about deconvolution challenges](Material/Discussion_deconvolution_challenges.pdf)
* Signaling pathways in cancer and immune cells
* Exercise 1: pathways analysis with Omnipath
  * [*Ex1_Omnipath.R*](Material/Ex1_Omnipath.R)
  * [*Ex1_Omnipath.pdf*](Material/Ex1_Omnipath.pdf)

**11:00-11:30**
*Coffee Break*

**11:30-12:30**
* Solution: Excercise 1
  * [*Ex1_Omnipath_solution.R*](Material/Ex1_Omnipath_solution.R)
  * [*Ex1_Omnipath_solution.pdf*](Material/Ex1_Omnipath_solution.pdf)
* [Modeling framework and introduction to Boolean models](Material/3_2_Modeling_framework_and_introduction_to_Boolean_models.pdf)
* Excercise 2: Modeling signaling pathways with Cytocopter (Cytoscape plugin)

**12:30-14:00**
*Lunch Break*

**14:00-16:00**
* Model optimisation and introduction to other logic formalisms
* Excercise 3: Comparing different logic formalisms with CellNOptR
  * [*Ex3_tutorialCellNOptR.R*](Material/Ex3_tutorialCellNOptR.R)
  * [*ToyModelPB.sif*](Input_data/ToyModelPB.sif)
  * [*ToyModelPB.csv*](Input_data/ToyModelPB.csv)
* Excercise 4: Modeling context specific pathways with CNORode
  * *Ex4_tutorialCNORode.R*
  * *PKN.sif*
  * *data_group1.csv*
  * *data_group2.csv*
 

**16:00-16:30**
*Tea Break*

**16:30-18:00**
* Final wrap-up

