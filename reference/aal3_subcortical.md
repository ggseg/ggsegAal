# AAL3 Subcortical (Basal Ganglia) Atlas

Subcortical parcellation from AAL3 (Rolls et al. 2020) covering basal
ganglia and thalamic nuclei with 22 regions. Contains both 2D polygon
geometry for
[`ggseg::geom_brain()`](https://ggsegverse.github.io/ggseg/reference/ggbrain.html)
and 3D meshes for
[`ggseg3d::ggseg3d()`](https://ggsegverse.github.io/ggseg3d/reference/ggseg3d.html).

## Usage

``` r
aal3_subcortical()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (subcortical).

## References

Rolls, E. T., Huang, C. C., Lin, C. P., Feng, J., & Joliot, M. (2020).
Automated anatomical labelling atlas 3. Neuroimage, 206, 116189.
([PubMed](https://pubmed.ncbi.nlm.nih.gov/31521825/))

## See also

Other ggseg_atlases:
[`aal()`](https://ggsegverse.github.io/ggsegAal/reference/aal.md),
[`aal2()`](https://ggsegverse.github.io/ggsegAal/reference/aal2.md),
[`aal3_cerebellum()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cerebellum.md),
[`aal3_cortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cortical.md)

## Examples

``` r
aal3_subcortical()
#> 
#> ── aal3_subcortical ggseg atlas ────────────────────────────────────────────────
#> Type: subcortical
#> Regions: 22
#> Hemispheres: left, right
#> Views: coronal, axial
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (meshes)
#> ────────────────────────────────────────────────────────────────────────────────
#>     hemi   region          label
#> 1   left  caudate   Caudate_left
#> 2  right  caudate  Caudate_right
#> 3   left  putamen   Putamen_left
#> 4  right  putamen  Putamen_right
#> 5   left  thal lp   Thal_LP_left
#> 6   left thal vpl  Thal_VPL_left
#> 7  right thal vpl Thal_VPL_right
#> 8   left  thal il   Thal_IL_left
#> 9  right  thal il  Thal_IL_right
#> 10  left thal mdm  Thal_MDm_left
#> ... with 33 more rows
if (FALSE) plot(aal3_subcortical()) # \dontrun{}
```
