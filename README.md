
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Treggae

<!-- badges: start -->

[![R-CMD-check](https://github.com/imbeimainz/Treggae/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/imbeimainz/Treggae/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`Treggae` is your dancing companion for exploring gene signatures in the
context of T-regs (T regulatory cells) - and not only

## Installation

You can install the development version of Treggae like so:

``` r
remotes::install_github("imbeimainz/Treggae")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library("Treggae")

Treggae::get_signature("Core_Signature")
#>  [1] "Foxp3"    "Ikzf2"    "Tnfrsf4"  "Izumo1r"  "Ighm"     "Ctla4"   
#>  [7] "Tnfrsf18" "Cd74"     "Ltb"      "Ifi27l2a"

Treggae::list_signatures()
#> Treggae signatures: 
#> ------
#>   Providing a total of 11 signatures: 
#> Skin_Tregs_signature --- 19 members
#> Colon_tTregs_signature --- 10 members
#> Colon_pTregs_signature --- 17 members
#> SLE_signature --- 14 members
#> SLE_tisTregs_signature --- 18 members
#> SLE_new_signature --- 194 members
#> SLE_naive_signature --- 24 members
#> Skin_Colon_Signature --- 200 members
#> Regenerative_Signature --- 21 members
#> SLE_NLT_like_signature --- 29 members
#> Core_Signature --- 10 members
#> 
#> You can access the individual signatures by using the `get_signatures()` or `get_signature()` functions
```

## Code of Conduct

Please note that the Treggae project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
