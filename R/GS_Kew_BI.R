#' @title New genome size measurements performed at RBG Kew
#' @description Genome size measurements performed at RBG Kew on British or Irish material. The data also details buffers used for measurements and cv values obtained.
#' @format A data frame with 333 rows and 18 variables:
#' \describe{
#'   \item{\code{kew_id}}{character The Kew identification number associated with the main taxon name used in this dataset}
#'   \item{\code{taxon_name}}{character Species binomen and authority according to Stace, 2019}
#'   \item{\code{taxon_name_binom}}{character Species binomen according to Stace, 2019}
#'   \item{\code{authors}}{character Authority associated with the species binomen}
#'   \item{\code{MSB_number}}{character ID number at MSB if material was sourced from there}
#'   \item{\code{standard_species}}{character Reference standard species used for measurement.}
#'   \item{\code{standard_2C_pg}}{character Genome size of standard species used for measurement, 2C, in pg}
#'   \item{\code{buffer}}{character Buffer used for flow cytometry}
#'   \item{\code{buffer_composition}}{character Composition of buffer used for flow cytometry}
#'   \item{\code{buffer_origin}}{character Original publication that established the buffer or distributor the buffer was obtained from}
#'   \item{\code{GS_2C_pg}}{double Diploid genome size in picograms}
#'   \item{\code{GS_1C_pg}}{double Haploid genome size in picograms}
#'   \item{\code{GS_2C_Mbp}}{double Diploid genome size in megabasepairs}
#'   \item{\code{GS_1C_Mbp}}{double Haploid genome size in megabasepairs}
#'   \item{\code{cv_sample}}{double Coefficient of variation for mean channel position of the peak, quality assessment of sample flow cytometry}
#'   \item{\code{cv_standard}}{double Coefficient of variation for mean channel position of the peak, quality assessment of standard flow cytometry}
#'   \item{\code{matched_by_synonym}}{character “y” denotes species that were measured from tissue labeled as a different but synonymous name of the name used for this database. "y", blank}
#'   \item{\code{cited_name}}{character Species binomen that was recorded when the measurement was first made. Curated to match latest StaceIV nomenclature.}
#'}
#' @source \url{https://doi.org/10.5285/9f097d82-7560-4ed2-af13-604a9110cf6d}
"GS_Kew"