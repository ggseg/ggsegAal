
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggsegAal <img src='man/figures/logo.png' align="right" height="138.5" />

<!-- badges: start -->

[![R-CMD-check](https://github.com/ggseg/ggsegAal/workflows/R-CMD-check/badge.svg)](https://github.com/ggseg/ggsegAal/actions)
<!-- badges: end -->

This package contains dataset for plotting the
[aal](https://www.sciencedirect.com/science/article/abs/pii/S1053811915006953?via%3Dihub)
atlas ggseg and ggseg3d.

Rolls, E. T., Joliot, M., & Tzourio-Mazoyer, N. (2015). Implementation
of a new parcellation of the orbitofrontal cortex in the automated
anatomical labeling atlas. Neuroimage, 122, 1-5.

To learn how to use these atlases, please look at the documentation for
[ggseg](https://ggseg.github.io/ggseg/) and
[ggseg3d](https://ggseg.github.io/ggseg3d)

## Installation

We recommend installing the ggseg-atlases through the ggseg
[r-universe](https://ggseg.r-universe.dev/ui#builds):

``` r
# Enable this universe
options(repos = c(
    ggseg = 'https://ggseg.r-universe.dev',
    CRAN = 'https://cloud.r-project.org'))

# Install some packages
install.packages('ggsegAal')
```

You can install the released version of ggsegAal from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("ggseg/ggsegAal")
```

``` r
library(ggseg)
#> Loading required package: ggplot2
library(ggseg3d)
library(ggsegAal)

plot(aal) +
  theme(legend.position = "bottom", 
        legend.text = element_text(size = 9)) +
  guides(fill = guide_legend(ncol = 6))
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

``` r
library(dplyr)
ggseg3d(atlas = aal_3d) %>% 
  add_glassbrain() %>% 
  pan_camera("right lateral")
```

<img src="man/figures/README-3d-plot.png" width="100%" />

Please note that the ‘ggsegAal’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
