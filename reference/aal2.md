# AAL2 Cortical Atlas

Brain atlas for the AAL2 parcellation (Rolls et al. 2015) with 41
cortical regions per hemisphere. Contains both 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D vertex indices for
[`ggseg3d::ggseg3d()`](https://ggsegverse.github.io/ggseg3d/reference/ggseg3d.html).

## Usage

``` r
aal2()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## Details

Region names confirmed by Herve Lemaitre (AAL2 co-author), mapping the
original generic annotation labels to anatomical AAL2 names.

## References

Rolls, E. T., Joliot, M., & Tzourio-Mazoyer, N. (2015). Implementation
of a new parcellation of the orbitofrontal cortex in the automated
anatomical labeling atlas. Neuroimage, 122, 1-5.
([PubMed](https://pubmed.ncbi.nlm.nih.gov/26241684/))

## See also

Other ggseg_atlases:
[`aal()`](https://ggsegverse.github.io/ggsegAal/reference/aal.md),
[`aal3_cerebellum()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cerebellum.md),
[`aal3_cortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cortical.md),
[`aal3_subcortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_subcortical.md)

Other cortical_atlases:
[`aal()`](https://ggsegverse.github.io/ggsegAal/reference/aal.md),
[`aal3_cortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cortical.md)

## Examples

``` r
aal2()
#> 
#> ── aal2 ggseg atlas ────────────────────────────────────────────────────────────
#> Type: cortical
#> Regions: 41
#> Hemispheres: left, right
#> Views: inferior, lateral, medial, superior
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#>    hemi             region                 label
#> 1  left         Precentral         lh_Precentral
#> 2  left      Frontal_Sup_2      lh_Frontal_Sup_2
#> 3  left      Frontal_Mid_2      lh_Frontal_Mid_2
#> 4  left   Frontal_Inf_Oper   lh_Frontal_Inf_Oper
#> 5  left    Frontal_Inf_Tri    lh_Frontal_Inf_Tri
#> 6  left  Frontal_Inf_Orb_2  lh_Frontal_Inf_Orb_2
#> 7  left      Rolandic_Oper      lh_Rolandic_Oper
#> 8  left    Supp_Motor_Area    lh_Supp_Motor_Area
#> 9  left Frontal_Sup_Medial lh_Frontal_Sup_Medial
#> 10 left    Frontal_Med_Orb    lh_Frontal_Med_Orb
#> ... with 72 more rows
if (FALSE) plot(aal2()) # \dontrun{}
```
