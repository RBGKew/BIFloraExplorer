## code to prepare `DATASET` dataset goes here

library(readr)

BIlist <- read.csv("data-raw/BI_MAIN.csv")

usethis::use_data(DATASET, overwrite = TRUE)
