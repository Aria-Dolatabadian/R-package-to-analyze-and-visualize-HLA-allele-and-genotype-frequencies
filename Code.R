# Load required libraries and dataset
library(HLAinTCGA)

# Read the data back from the CSV file
data_from_csv <- read.csv("hla_data.csv")

# Example 1: Analyze all genotypes containing the allele "A*01:01" across all TCGA projects
result_all_projects <- genotype_freq(allele1 = "A*01:01", data = data_from_csv)

# Example 2: Analyze all genotypes containing the allele "A*01:01" within the "TCGA-BRCA" project
result_filtered_project <- genotype_freq(allele1 = "A*01:01", data = data_from_csv, project_filter = "TCGA-BRCA")

# Example 3: Analyze the genotype frequency for a specific pair of alleles ("A*01:01" and "A*03:03") across all TCGA projects
result_specific_genotype_all <- genotype_freq(allele1 = "A*01:01", allele2 = "A*03:03", data = data_from_csv)

# Example 4: Analyze the genotype frequency for the same pair of alleles ("A*01:01" and "A*03:03") within the "TCGA-BRCA" project
result_specific_genotype_filtered <- genotype_freq(allele1 = "A*01:01", allele2 = "A*03:03", data = data_from_csv, project_filter = "TCGA-BRCA")

# View results: Display the results tables for analysis
cat("\nResults Across All Projects:\n")
print(result_all_projects$results_table)

cat("\nResults for TCGA-BRCA Project:\n")
print(result_filtered_project$results_table)

# Plot results: Visualize the analysis
cat("\nPlot for Results Across All Projects:\n")
print(result_all_projects$plot)

cat("\nPlot for Results in TCGA-BRCA Project:\n")
print(result_filtered_project$plot)
