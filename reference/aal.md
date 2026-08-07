# AAL Cortical Atlas

Brain atlas for the original Automated Anatomical Labeling parcellation
(Tzourio-Mazoyer et al. 2002).

## Usage

``` r
aal()
```

## Value

A
[ggseg.formats::ggseg_atlas](https://ggsegverse.github.io/ggseg.formats/reference/ggseg_atlas.html)
object (cortical).

## References

Tzourio-Mazoyer N, Landeau B, Papathanassiou D, et al. (2002). Automated
Anatomical Labeling of Activations in SPM Using a Macroscopic Anatomical
Parcellation of the MNI MRI Single-Subject Brain. *NeuroImage*,
15(1):273-289.
[doi:10.1006/nimg.2001.0978](https://doi.org/10.1006/nimg.2001.0978)

## See also

Other ggseg_atlases:
[`aal2()`](https://ggsegverse.github.io/ggsegAal/reference/aal2.md),
[`aal3_cerebellum()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cerebellum.md),
[`aal3_cortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cortical.md),
[`aal3_subcortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_subcortical.md)

Other cortical_atlases:
[`aal2()`](https://ggsegverse.github.io/ggsegAal/reference/aal2.md),
[`aal3_cortical()`](https://ggsegverse.github.io/ggsegAal/reference/aal3_cortical.md)

## Examples

``` r
aal()
#> 
#> ── aal ggseg atlas ─────────────────────────────────────────────────────────────
#> Type: cortical
#> Regions: 82
#> Hemispheres: left, right
#> Views: inferior, lateral, superior, medial
#> Palette: ✔
#> Rendering: ✔ ggseg
#> ✔ ggseg3d (vertices)
#> ────────────────────────────────────────────────────────────────────────────────
#>    hemi       region           label
#> 1  left  LH_region_1  lh_LH_region_1
#> 2  left  LH_region_2  lh_LH_region_2
#> 3  left  LH_region_3  lh_LH_region_3
#> 4  left  LH_region_4  lh_LH_region_4
#> 5  left  LH_region_5  lh_LH_region_5
#> 6  left  LH_region_6  lh_LH_region_6
#> 7  left  LH_region_7  lh_LH_region_7
#> 8  left  LH_region_8  lh_LH_region_8
#> 9  left  LH_region_9  lh_LH_region_9
#> 10 left LH_region_10 lh_LH_region_10
#> ... with 72 more rows
if (FALSE) plot(aal()) # \dontrun{}
```
