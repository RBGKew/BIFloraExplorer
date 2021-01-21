## code to prepare raw datasets

#base list

main = read.csv("data-raw/BI_MAIN.csv")

checklist = dplyr::select(main, 
                          kew_id, 
                          taxon_name,
                          taxon_name_binom, 
                          authors, 
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
                          WCVP_URL, 
                          POWO_URL, 
                          IPNI_URL, 
                          accepted_WCVP_URL)

checklist$taxonomic_status = as.factor(checklist$taxonomic_status)



main = dplyr::select(main, 
                     kew_id, 
                     unclear_species_marker, 
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
                     ecoflora_life_form,
                     Christenhusz_life_form,
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
                     IUCN_assessmentId,
                     IUCN_interlTaxonId,
                     IUCN_redlistCategory,
                     IUCN_redlistCriteria,
                     IUCN_criteriaVersion,
                     IUCN_populationTrend,
                     IUCN_scopes)
                     
                     
                     
                     

main$StaceIV_nativity = as.factor(main$StaceIV_nativity)
main$Atlas_nativity_viaALIENATT_PLANTATT = as.factor(main$Atlas_nativity_viaALIENATT_PLANTATT)
main$Stace_Crawley_nativity_aliens = as.factor(main$Stace_Crawley_nativity_aliens)
main$ecoflora_life_form = as.factor(main$ecoflora_life_form)
main$Christenhusz_life_form = as.factor(main$Christenhusz_life_form)
main$biome = as.factor(main$biome)
main$growth_form = as.factor(main$growth_form)

#Chromosome counts

chrom_num = read.csv("data-raw/Chrom_raw.csv")

chrom_num = dplyr::select(chrom_num, kew_id, LIST, TAXONCITED, chromosome_count_2n, notes, unambiguous_match, matched_by_cit., match_to_subsp_etc.)

chrom_num = dplyr::rename(chrom_num, taxon_name = LIST, cited_name = TAXONCITED ) 



#Chromosome number minimal list
chrom_num_small = chrom_num
chrom_num_small = dplyr::group_by(chrom_num_small, taxon_name)
chrom_num_small = dplyr::slice(chrom_num_small, which.min(chromosome_count_2n))
  
#GS_small = GS_BI
#GS_small = dplyr::group_by(GS_small, taxon_name)
#GS_small = dplyr::slice(GS_small, which.min(GS_2C_pg))




#Genome size
#Kew

GS_Kew = read.csv("data-raw/GS_Kew.csv")

GS_Kew = dplyr::select(GS_Kew, kew_id, taxon_name, taxon_name_binom, authors, Institute, ID.Number, Standard, Buffer, GS_2C, GS_1C, Mbp_2C, Mbp_1C, matched_by_synonym)

GS_Kew = dplyr::rename(GS_Kew, GS_2C_pg = GS_2C, GS_1C_pg = GS_1C, GS_2C_Mbp = Mbp_2C, GS_1C_Mbp = Mbp_1C) 

GS_Kew$from_GB_material = "y"

GS_Kew$Data_source = "Kew"

GS_Kew$ID = "1"


#presentation of new measurements from Kew

GS_Kew_measurements = read.csv("data-raw/GS_Kew.csv")

GS_Kew_measurements = dplyr::select(GS_Kew_measurements, kew_id, taxon_name, taxon_name_binom, authors, Institute, ID.Number, Standard, Buffer, GS_2C, GS_1C, Mbp_2C, Mbp_1C, matched_by_synonym)

GS_Kew_measurements = dplyr::rename(GS_Kew_measurements, GS_2C_pg = GS_2C, GS_1C_pg = GS_1C, GS_2C_Mbp = Mbp_2C, GS_1C_Mbp = Mbp_1C) 


#Genome size
#Smarda 2019

GS_Smarda_2019 = read.csv("data-raw/GS_Smarda_2019.csv")

GS_Smarda_2019 = dplyr::select(GS_Smarda_2019, kew_id, taxon_name_auth, taxon_name_binom, authors, pg_2C, pg_1C, Mbp_2C, Mbp_1C, from.GB.material, Data.source)

GS_Smarda_2019 = dplyr::rename(GS_Smarda_2019, taxon_name = taxon_name_auth, GS_2C_pg = pg_2C, GS_1C_pg = pg_1C, GS_2C_Mbp = Mbp_2C, GS_1C_Mbp = Mbp_1C, from_GB_material = from.GB.material, Data_source = Data.source) 

GS_Smarda_2019$ID = "2"


#Genome size
#Zonneveld 2019

GS_Zonneveld_2019 = read.csv("data-raw/GS_Zonneveld_2019.csv")

GS_Zonneveld_2019 = dplyr::select(GS_Zonneveld_2019, kew_id, taxon_name, taxon_name_binom, authors, pg_2C, pg_1C, Mbp_2C, Mbp_1C, from.GB.material, DB)

GS_Zonneveld_2019 = dplyr::rename(GS_Zonneveld_2019, GS_2C_pg = pg_2C, GS_1C_pg = pg_1C, GS_2C_Mbp = Mbp_2C, GS_1C_Mbp = Mbp_1C, from_GB_material = from.GB.material, Data_source = DB) 

GS_Zonneveld_2019$ID = "3"


#Genome size
#CvalueDB

GS_CValueDB = read.csv("data-raw/GS_CValueDB.csv")

GS_CValueDB = dplyr::select(GS_CValueDB, kew_id, taxon_name, taxon_name_binom, authors, pg_2C, pg_1C, Mbp_2C, Mbp_1C, from.GB.material, Reference, DB)

GS_CValueDB = dplyr::rename(GS_CValueDB, GS_2C_pg = pg_2C, GS_1C_pg = pg_1C, GS_2C_Mbp = Mbp_2C, GS_1C_Mbp = Mbp_1C, Data_source = DB, from_GB_material = from.GB.material) 

GS_CValueDB$ID = "4"


#Genome size full (all genome size measurements)

GS_BI = dplyr::bind_rows(GS_Kew, GS_Smarda_2019, GS_Zonneveld_2019, GS_CValueDB)

GS_BI = dplyr::select(GS_BI, kew_id, taxon_name, taxon_name_binom, authors, GS_2C_pg, GS_1C_pg, GS_2C_Mbp, GS_1C_Mbp, from_GB_material, Data_source, ID)


#Genome size minimal list (smallest measurement)
GS_small = GS_BI
GS_small = dplyr::group_by(GS_small, taxon_name)
GS_small = dplyr::slice(GS_small, which.min(GS_2C_pg))




#Add final datafiles to project
usethis::use_data(main, overwrite = TRUE)

usethis::use_data(checklist, overwrite = TRUE)

usethis::use_data(chrom_num, overwrite = TRUE)

usethis::use_data(chrom_num_small, overwrite = TRUE)

usethis::use_data(GS_Kew, overwrite = TRUE)

usethis::use_data(GS_Smarda_2019, overwrite = TRUE)

usethis::use_data(GS_Zonneveld_2019, overwrite = TRUE)

usethis::use_data(GS_CValueDB, overwrite = TRUE)

usethis::use_data(GS_BI, overwrite = TRUE)

usethis::use_data(GS_small, overwrite = TRUE)


