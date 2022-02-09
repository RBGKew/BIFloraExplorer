## code to prepare raw datasets

#base list

BI_main = read.csv("data-raw/BI_MAIN.csv")

checklist = dplyr::select(BI_main, 
                          kew_id, 
                          unclear_species_marker,
                          extinct_species_marker,
                          taxon_name,
                          taxon_name_binom, 
                          authors, 
                          taxon_name_WCVP,
                          authors_WCVP,
                          order, 
                          family, 
                          genus, 
                          subgenus, 
                          section, 
                          subsection, 
                          series, 
                          species, 
                          group, 
                          aggregate, 
                          members_of_agg., 
                          taxonomic_status, 
                          accepted_kew_id,
                          accepted_name,
                          accepted_authors,
                          imperfect_match_with_Stace_IV,
                          WCVP_URL, 
                          POWO_URL, 
                          IPNI_URL, 
                          accepted_WCVP_URL)

checklist$taxonomic_status = as.factor(checklist$taxonomic_status)



BI_main = dplyr::select(BI_main, 
                     kew_id, 
                     unclear_species_marker,
                     extinct_species_marker,
                     taxon_name,
                     taxon_name_binom, 
                     authors, 
                     taxon_name_WCVP,
                     authors_WCVP,
                     order, 
                     family, 
                     genus, 
                     subgenus, 
                     section, 
                     subsection, 
                     series, 
                     species, 
                     group, 
                     aggregate, 
                     members_of_agg., 
                     taxonomic_status, 
                     accepted_kew_id,
                     accepted_name,
                     accepted_authors,
                     imperfect_match_with_Stace_IV,
                     WCVP_URL, 
                     POWO_URL, 
                     IPNI_URL, 
                     accepted_WCVP_URL,
                     StaceIV_nativity,
                     Atlas_nativity_viaALIENATT_PLANTATT,
                     Stace_Crawley_nativity_aliens,
                     SLA,
                     LDMC,
                     seed_mass,
                     leaf_area,
                     mean_veg_height,
                     max_veg_height,
                     L_PLANTATT,
                     F_PLANTATT,
                     R_PLANTATT,
                     N_PLANTATT,
                     S_PLANTATT,
                     L_Doring,
                     F_Doring,
                     R_Doring,
                     N_Doring,
                     S_Doring,
                     T_Doring,
                     ECPE_CSR,
                     predicted_CSR,
                     growth_form,
                     succulence,
                     life_form,
                     biome,
                     origin,
                     TDWG_level_1_code,
                     GB_Man_hectads_post2000,
                     Ire_hectads_post2000,
                     CI_hectads_post2000,
                     GB_Man_hectads_1987_1999,
                     Ire_hectads_1987_1999,
                     CI_hectads_1987_1999,
                     GB_Man_hectads_2000_2009,
                     Ire_hectads_2000_2009,
                     CI_hectads_2000_2009,
                     GB_Man_hectads_2010_2019,
                     Ire_hectads_2010_2019,
                     CI_hectads_2010_2019,
                     hybrid_propensity,
                     scaled_hybrid_propensity,
                     BOLD_link1,
                     BOLD_link2,
                     BOLD_link3)
                     
                     
                     
                     
BI_main$taxonomic_status = as.factor(BI_main$taxonomic_status)
BI_main$StaceIV_nativity = as.factor(BI_main$StaceIV_nativity)
BI_main$Atlas_nativity_viaALIENATT_PLANTATT = as.factor(BI_main$Atlas_nativity_viaALIENATT_PLANTATT)
BI_main$Stace_Crawley_nativity_aliens = as.factor(BI_main$Stace_Crawley_nativity_aliens)
BI_main$life_form = as.factor(BI_main$life_form)
BI_main$biome = as.factor(BI_main$biome)
BI_main$growth_form = as.factor(BI_main$growth_form)

#Chromosome numbers
chrom_num_BI = read.csv("data-raw/chrom_num_BI.csv")
chrom_num_BI = dplyr::select(chrom_num_BI, kew_id, taxon_name, cited_name, sporophytic_chromosome_number, notes, unambiguous_match, number_identical_observations)

#Chromosome numbers and variation for main list
chrom_var = read.csv("data-raw/chrom_var.csv")



#Genome size
#Kew

GS_Kew = read.csv("data-raw/GS_Kew.csv")
GS_Kew = dplyr::select(GS_Kew, kew_id, taxon_name, taxon_name_binom, authors, MSB_number, standard_species, standard_2C_pg, buffer, buffer_composition, buffer_origin, GS_2C_pg, GS_1C_pg, GS_2C_Mbp, GS_1C_Mbp, cv_sample, cv_standard, matched_by_synonym, cited_name)
GS_Kew_BI = GS_Kew
GS_Kew = dplyr::select(GS_Kew, kew_id, taxon_name, taxon_name_binom, authors, GS_2C_pg, GS_1C_pg, GS_2C_Mbp, GS_1C_Mbp)
GS_Kew$from_BI_material = "y"
GS_Kew$data_source = "Kew"
GS_Kew$ID = "1"


#Genome size
#Smarda 2019

GS_Smarda_2019 = read.csv("data-raw/GS_Smarda_2019.csv")
GS_Smarda_2019 = dplyr::select(GS_Smarda_2019, kew_id, taxon_name, taxon_name_binom, authors, GS_2C_pg, GS_1C_pg, GS_2C_Mbp, GS_1C_Mbp, from_BI_material, data_source)
GS_Smarda_2019$ID = "2"


#Genome size
#Zonneveld 2019

GS_Zonneveld_2019 = read.csv("data-raw/GS_Zonneveld_2019.csv")
GS_Zonneveld_2019 = dplyr::select(GS_Zonneveld_2019, kew_id, taxon_name, taxon_name_binom, authors, GS_2C_pg, GS_1C_pg, GS_2C_Mbp, GS_1C_Mbp, from_BI_material, data_source)
GS_Zonneveld_2019$ID = "3"


#Genome size
#CvalueDB

GS_CValueDB = read.csv("data-raw/GS_CValueDB.csv")
GS_CValueDB = dplyr::select(GS_CValueDB, kew_id, taxon_name, taxon_name_binom, authors, GS_2C_pg, GS_1C_pg, GS_2C_Mbp, GS_1C_Mbp, Reference, from_BI_material, data_source)
GS_CValueDB$ID = "4"



#Genome size full (all genome size measurements)

GS_BI = dplyr::bind_rows(GS_Kew, GS_Smarda_2019, GS_Zonneveld_2019, GS_CValueDB)
GS_BI = dplyr::select(GS_BI, kew_id, taxon_name, taxon_name_binom, authors, GS_2C_pg, GS_1C_pg, GS_2C_Mbp, GS_1C_Mbp, from_BI_material, data_source, ID)


#Genome size minimal list (smallest measurement)
GS_small = GS_BI
GS_small = dplyr::group_by(GS_small, kew_id)
GS_small = dplyr::slice(GS_small, which.min(GS_2C_pg))


#add both genome size and chromosome counts into the main table (min lists, smallest measurement per species)
#create GS_small_match and chrom_num_small_match to add into main table
GS_small_match = dplyr::select(GS_small, kew_id, GS_1C_pg, GS_2C_pg, GS_1C_Mbp, GS_2C_Mbp,from_BI_material, data_source)
chrom_var_match = dplyr::select(chrom_var, kew_id, sporophytic_chromosome_number, infraspecific_variation_chrom_number, other_reported_sporophytic_chromosome_number, source_of_other_chrom_num)

BI_main = dplyr::left_join(BI_main, GS_small_match, by = "kew_id")
BI_main = dplyr::left_join(BI_main, chrom_var_match, by = "kew_id")



#Add final datafiles to project
usethis::use_data(BI_main, overwrite = TRUE)

usethis::use_data(checklist, overwrite = TRUE)

usethis::use_data(chrom_num_BI, overwrite = TRUE)

usethis::use_data(GS_Kew_BI, overwrite = TRUE)

usethis::use_data(GS_BI, overwrite = TRUE)


