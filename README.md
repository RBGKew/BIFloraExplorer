
<!-- README.md is generated from README.Rmd. Please edit that file -->

# BIFloraExplorer

<!-- badges: start -->

[![Travis build
status](https://travis-ci.com/mariehenniges/BIFloraExplorer.svg?branch=master)](https://travis-ci.com/mariehenniges/BIFloraExplorer)
<!-- badges: end -->

The goal of BIFloraExplorer is to present an up to date species list for
all vascular plants currently extant on the British Isles.

## Installation

You can install the released version of BIFloraExplorer from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("BIFloraExplorer")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mariehenniges/BIFloraExplorer")
```

## Example

The data allows a new insights into current species trends.

``` r
library(BIFloraExplorer)

summary(BIlist$StaceIV_nativity)
#>                          ?N Arch-colonist    Arch-cultd  Arch-denizen 
#>            51            63            63            40            79 
#>             N    Neo-casual      Neo-natd      Neo-surv     Neonative 
#>          1407           260           937           310             4
```

This allows a closer look at how the flora is developing.

    #> Loading required package: dplyr
    #> 
    #> Attaching package: 'dplyr'
    #> The following objects are masked from 'package:stats':
    #> 
    #>     filter, lag
    #> The following objects are masked from 'package:base':
    #> 
    #>     intersect, setdiff, setequal, union
    #> Loading required package: ggplot2

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

# Native status <img src="man/figures/README-unnamed-chunk-2-1.png" align="left" width="100"/>
