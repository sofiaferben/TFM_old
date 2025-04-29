DRUG COMBINATIONS - NETWORK MEDICINE FEATURES
------------------------------------------------

General information:

- dname_drug1: drug1 name
- chembl_id_drug1: drug1 CHEMBL ID
- dname_drug2: drug2 name
- chembl_id_drug2: drug2 CHEMBL ID
- cell_line_name: cell line name 
- NCI_thesaurus_code: NCIt disease code
- disease_cui: disease CUI code
- drug1_target_count: drug1 number of protein targets in the interactome
- drug2_target_count: drug2 number of protein targets in the interactome
- proteins_in_LCC: disease number of disease proteins in the interactome (Largest Connected Component)

Similarity metrics:

- oc_drug1_drug2: overlap coefficient between drug1 and drug2 protein targets
- oc_dis_drug1: overlap coefficient between disease LCC proteins and drug1 protein targets
- oc_dis_drug2: overlap coefficient between disease LCC proteins and drug2 protein targets
- ji_drug1_drug2: jaccard index between drug1 and drug2 protein targets
- ji_dis_drug1: jaccard index between disease LCC proteins and drug1 protein targets
- ji_dis_drug2: jaccard index between disease LCC proteins and drug2 protein targets

Network medicien metrics:

- min_spl_dis_dru1: minimum shortest path length between disease LCC proteins and drug1 protein targets
- Closest_distance_dis_dru1: closest distance between disease LCC proteins and drug1 protein targets
- Dc_mean_dis_dru1: mean of the closest distance between each disease-drug1 pair, obtained in comparison with 1,000 disease modules and sets of target proteins of each drug obtained randomly while degree preserving
- Dc_std_dis_dru1: standard deviation of the closest distance between each disease-drug1 pair, obtained in comparison with 1,000 disease modules and sets of target proteins of each drug obtained randomly while degree preserving
- Dc_zscore_dis_dru1: proximity value of each disease-drug1 pair, obtained using the closest distance, the mean and the standard deviation
- min_spl_dis_dru2: minimum shortest path length between disease LCC proteins and drug2 protein targets
- Closest_distance_dis_dru2: closest distance between disease LCC proteins and drug2 protein targets
- Dc_mean_dis_dru2: mean of the closest distance between each disease-drug2 pair, obtained in comparison with 1,000 disease modules and sets of target proteins of each drug obtained randomly while degree preserving
- Dc_std_dis_dru2: standard deviation of the closest distance between each disease-drug2 pair, obtained in comparison with 1,000 disease modules and sets of target proteins of each drug obtained randomly while degree preserving
- Dc_zscore_dis_dru2: proximity value of each disease-drug2 pair, obtained using the closest distance, the mean and the standard deviation
- min_spl_dru1_dru2: minimum shortest path length between drug1 and drug2 protein targets
- obs_sep_dru1_dru2: observed separation value between drug1 and drug2 protein targets
- sep_mean_dru1_dru2: meam of the observed separation value between drug1 and drug2 protein targets, obtained in comparison with 1,000 sets of target proteins of each drug obtained randomly while degree preserving
- sep_std_dru1_dru2: standard deviation of the observed separation value between drug1 and drug2 protein targets, obtained in comparison with 1,000 sets of target proteins of each drug obtained randomly while degree preserving
- zscore_dru1_dru2: z-score of the separation value of each drug1-drug2 pair, obtained using the closest distance, the mean and the standard deviation
- pvalue_dru1_dru2: p-value of the separation value of each drug1-drug2 pair, obtained using the closest distance, the mean and the standard deviation
- ratio_links_dis_dru1: fraction of links that stem from the targets of drug1 that directly bind to the disease LCC in the interactome
- ratio_links_dis_dru2: fraction of links that stem from the targets of drug2 that directly bind to the disease LCC in the interactome