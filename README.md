
<!-- README.md is generated from README.Rmd. Please edit that file -->

# BIFloraExplorer

<!-- badges: start -->

[![Travis build
status](https://travis-ci.com/mariehenniges/BIFloraExplorer.svg?branch=master)](https://travis-ci.com/mariehenniges/BIFloraExplorer)

<p align="right">
<img src="images/sticker.png" width="350" title="hover text">
</p>
<!-- badges: end -->

The goal of BIFloraExplorer is to present an up to date trait repository
and species list for all vascular plants currently extant in Britain and
Ireland.

## Information about the dataset

The dataset can also be downloaded from the EIDC
(<https://catalogue.ceh.ac.uk/documents/9f097d82-7560-4ed2-af13-604a9110cf6d>).
The EIDC hosted version is static and will not be updated. All updates
will be contained within the development version on this GitHub page.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mariehenniges/BIFloraExplorer")
```

## Example

The data allows a new insights into current species trends.

``` r
library(BIFloraExplorer)

summary(main$StaceIV_nativity)
```

    ##                          ?N Arch-colonist    Arch-cultd  Arch-denizen 
    ##            69            61            61            40            80 
    ##             N    Neo-casual      Neo-natd      Neo-surv     Neonative 
    ##          1407           260           936           309             4

This allows a closer look at how the flora is developing.

![Native status](images/native_status.png)
