#!/bin/bash

#downloading datasets using wget
wget https://github.com/HackBio- Internship/public_datasets/blob/main/Global_genome_structur e_project/complete_1000_genomes_sample_list_.tsv?raw=true  - O complete_1000_genomes_sample_list_tsv 
wget wget https://github.com/HackBio- Internship/public_datasets/blob/main/Global_genome_structur e_project/binary_plink_files/1_1-150000.bed?raw=true -O sample.bed
wget https://github.com/HackBio- Internship/public_datasets/blob/main/Global_genome_structur e_project/binary_plink_files/1_1-150000.bim?raw=true –O sample.bim 
wget https://github.com/HackBio- Internship/public_datasets/blob/main/Global_genome_structur e_project/binary_plink_files/1_1-150000.fam?raw=true –O sample.fam 

#to generate eigenvalues using plink
plink --bed sample.bed - -bim sample.bim --fam sample.fam –pca  
