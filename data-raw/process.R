## code to prepare raw datasets

#base list

BIlist = read.csv("data-raw/BI_MAIN.csv")

BIlist$StaceIV_nativity = as.factor(BIlist$StaceIV_nativity)



#Chromosome counts

Chrom_num = read.csv("data-raw/Chrom_raw.csv")

Chrom_num = dplyr::select(Chrom_num, LIST, TAXONCITED, chromosome_count, notes, unambiguous_match, matched_by_cit., match_to_subsp_etc.)

Chrom_num = dplyr::rename(Chrom_num, taxon_name = LIST, cited_name = TAXONCITED ) 


#Genome size
#Kew

GS_Kew = read.csv("data-raw/GS_Kew.csv")

GS_Kew = dplyr::select(GS_Kew, taxon_name, taxon_name_Stace, authors_Stace, Institute, ID.Number, Standard, Buffer, GS_2C, GS_1C, Mbp_2C, Mbp_1C, matched_by_synonym)

GS_Kew = dplyr::rename(GS_Kew, authors = authors_Stace, GS_2C_pg = GS_2C, GS_1C_pg = GS_1C, GS_2C_Mbp = Mbp_2C, GS_1C_Mbp = Mbp_1C) 

GS_Kew$from.GB.material = "y"

GS_Kew$Data.source = "Kew"

GS_Kew$ID = "1"


#Genome size
#Smarda 2019

GS_Smarda_2019 = read.csv("data-raw/GS_Smarda_2019.csv")

GS_Smarda_2019 = dplyr::select(GS_Smarda_2019, taxon_name_auth, taxon_name_Stace, authors_Stace, pg_2C, pg_1C, Mbp_2C, Mbp_1C, from.GB.material, Data.source)

GS_Smarda_2019 = dplyr::rename(GS_Smarda_2019, taxon_name = taxon_name_auth, authors = authors_Stace, GS_2C_pg = pg_2C, GS_1C_pg = pg_1C, GS_2C_Mbp = Mbp_2C, GS_1C_Mbp = Mbp_1C) 

GS_Smarda_2019$ID = "2"


#Genome size
#Zonneveld 2019

GS_Zonneveld_2019 = read.csv("data-raw/GS_Zonneveld_2019.csv")

GS_Zonneveld_2019 = dplyr::select(GS_Zonneveld_2019, taxon_name, taxon_name_Stace, authors_Stace, pg_2C, pg_1C, Mbp_2C, Mbp_1C, from.GB.material, DB)

GS_Zonneveld_2019 = dplyr::rename(GS_Zonneveld_2019, authors = authors_Stace, GS_2C_pg = pg_2C, GS_1C_pg = pg_1C, GS_2C_Mbp = Mbp_2C, GS_1C_Mbp = Mbp_1C, Data.source = DB) 

GS_Zonneveld_2019$ID = "3"


#Genome size
#CvalueDB

GS_CValueDB = read.csv("data-raw/GS_CValueDB.csv")

GS_CValueDB = dplyr::select(GS_CValueDB, taxon_name, taxon_name_Stace, authors_Stace, pg_2C, pg_1C, Mbp_2C, Mbp_1C, from.GB.material, Reference, DB)

GS_CValueDB = dplyr::rename(GS_CValueDB, authors = authors_Stace, GS_2C_pg = pg_2C, GS_1C_pg = pg_1C, GS_2C_Mbp = Mbp_2C, GS_1C_Mbp = Mbp_1C, Data.source = DB) 

GS_CValueDB$ID = "4"


#Genome size full

GS_BI = dplyr::bind_rows(GS_Kew, )



#Add final datafiles to project
usethis::use_data(BIlist, overwrite = TRUE)

usethis::use_data(Chrom_num, overwrite = TRUE)

usethis::use_data(GS_Kew, overwrite = TRUE)

usethis::use_data(GS_Smarda_2019, overwrite = TRUE)

usethis::use_data(GS_Zonneveld_2019, overwrite = TRUE)

usethis::use_data(GS_CValueDB, overwrite = TRUE)
