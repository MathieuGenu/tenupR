
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tenupR <img src="man/Figures/hex_logo.png" align="right" width="120" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/MathieuGenu/tenupR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/MathieuGenu/tenupR/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

{tenupR} is an R package allowing to compute ranking of a tennis player,
playing in the french league. This is possible by giving :

- matches records of a player with a specific format
- ranking to test
- date of simulation

Note : Ranking is possible from NC to -15

## Installation

You can install the development version of tenupR like so:

``` r
install.packages("remotes")
remotes::install_github("MathieuGenu/tenupR")
```

## Get your match records from [tenup](https://tenup.fft.fr/)

IN PREP. :construction:

## Example

IN PREP. :construction:

## TO DO

- [x] Hex logo
- [ ] Handle doubles matches while importing + bonus for double wins
- [x] V-E-2I-5G doesn’t count coef
- [ ] Add the fact that you should at least win against one opponent of
  the same / over ranking you are testing
- [ ] Down-ranking occurs once per year-on-year if not enough points to
  validate current ranking
- [ ] Add bonus for no loses (50pts)
- [ ] in 2nd series (negative an positive), if V-E-2I-5G \<= -100
  down-ranking
- [ ] tutorial in readme
- [ ] create vignettes
- [ ] Add NEWS file
