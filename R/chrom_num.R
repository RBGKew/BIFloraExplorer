#' @title Chromosome numbers of vascular plants species in Britain and Ireland
#' @description Full list of chromosome numbers associated with vascular plant species of Britain and Ireland. All counts were made on British or Irish material.
#' @format A data frame with 2558 rows and 7 variables:
#' \describe{
#'   \item{\code{kew_id}}{character The Kew identification number associated with the main taxon name used in this dataset}
#'   \item{\code{taxon_name}}{character Species binomen and authority according to Stace, 2019}
#'   \item{\code{cited_name}}{character Species binomen and authority the chromosome number was attributed to. Names were curated to most recent synonyms by R.J.G. Subspecies level counts were attributed to the species level taxon (e.g. Armeria maritima ssp. elongata -> Armeria maritima)}
#'   \item{\code{sporophytic_chromosome_number}}{integer Chromosome number, derived from counts on material from Britain and Ireland.}
#'   \item{\code{notes}}{character Chromosome number information when chromosome count is not a simple number. Counts that are approximate in some way or have additional data, e.g. supernumerary chromosomes (suffix 's') or fragments (suffix 'f'), are listed here. Approximate counts are cited with the prefix 'c.' or given as a range (sometimes with an indication of the mode). In a few cases reports from flow cytometry studies have been included and these are indicated using the format '4x(2n=68)' for example. Where different counts have been obtained from different cells from the same individual plant , the alternatives are separated by |, often with an indication that the plant is mixoploid where this is certain; occasionally it is unclear from the original work whether different chromosome numbers were recorded from different plants or from different cells within a plant.}
#'   \item{\code{unambiguous_match}}{character Binary information on type of match between cited name and taxon name. “y”: binomial and authority used when count was performed are identical to taxon name and authority in our database; “n”: originally used binomial has either been matched to a currently accepted synonymous taxon name or a lower level taxon (subsp., var.) was matched to species level taxon name}
#'   \item{\code{number_identical_observations}}{integer Number of identical observations (where both the name the count was recorded under and the count recorded were identical)}
#'}
#' @source \url{https://doi.org/10.5285/9f097d82-7560-4ed2-af13-604a9110cf6d}
"chrom_num"