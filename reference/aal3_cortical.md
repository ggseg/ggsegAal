# AAL3 Cortical Atlas

Cortical parcellation from AAL3 (Rolls et al. 2020) with 45 regions per
hemisphere. Contains 2D polygon geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html).

## Usage

``` r
aal3_cortical()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M. (2020).
Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
([PubMed](https://pubmed.ncbi.nlm.nih.gov/31521825/))

## See also

Other ggseg_atlases:
[`aal()`](https://ggsegverse.github.io/ggsegAal/reference/aal.md),
[`aal2()`](https://ggsegverse.github.io/ggsegAal/reference/aal2.md),
[`aal3_cerebellum()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cerebellum.md),
[`aal3_subcortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_subcortical.md)

Other cortical_atlases:
[`aal()`](https://ggsegverse.github.io/ggsegAal/reference/aal.md),
[`aal2()`](https://ggsegverse.github.io/ggsegAal/reference/aal2.md)

## Examples

``` r
aal3_cortical()
#> 
#> ── aal3_cortical ggseg atlas ───────────────────────────────────────────────────
#> Type: cortical
#> Regions: 45
#> Hemispheres: left, right
#> Views: lateral, medial
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✖ ggseg3d (none)
#> ────────────────────────────────────────────────────────────────────────────────
#>    hemi            region                label
#> 1  left        Precentral        lh_Precentral
#> 2  left     Frontal_Sup_2     lh_Frontal_Sup_2
#> 3  left     Frontal_Mid_2     lh_Frontal_Mid_2
#> 4  left  Frontal_Inf_Oper  lh_Frontal_Inf_Oper
#> 5  left   Frontal_Inf_Tri   lh_Frontal_Inf_Tri
#> 6  left Frontal_Inf_Orb_2 lh_Frontal_Inf_Orb_2
#> 7  left     Rolandic_Oper     lh_Rolandic_Oper
#> 8  left   Supp_Motor_Area   lh_Supp_Motor_Area
#> 9  left         Olfactory         lh_Olfactory
#> 10 left            Rectus            lh_Rectus
#> ... with 82 more rows
if (FALSE) plot(aal3_cortical()) # \dontrun{}
```
