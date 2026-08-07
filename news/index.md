# Changelog

## ggsegAal 2.0.3

- Atlas 2D geometry migrated to the sf-optional `brain_polygons` format
  (`ggseg.formats` 0.0.3). The atlases now render without `sf` and its
  GDAL/GEOS/PROJ system libraries, enabling wasm and air-gapped
  installs. Plots are unchanged.

## ggsegAal 2.0.0

### Breaking changes

- `aal` is now a `ggseg_atlas` object (from ggseg.formats) containing
  both 2D and 3D data. The separate `aal_3d` object has been removed.

- Use `ggplot() + ggseg::geom_brain(atlas = aal)` for 2D plots and
  `ggseg3d::ggseg3d(atlas = aal)` for 3D plots – both from the same
  object.

- `ggseg.formats` is now a hard dependency (in Depends).

- Package URLs updated from `LCBC-UiO` to `ggseg` GitHub organisation.

- Atlas recreated from scratch using
  `ggsegExtra::create_cortical_atlas()` from the bundled fsaverage5
  annotation files.
