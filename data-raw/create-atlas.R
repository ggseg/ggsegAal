library(ggsegExtra)
devtools::load_all("../ggsegExtra/")
library(ggseg)
library(ggseg3d)
library(dplyr) # for cleaning the atlas data efficiently
library(tidyr) # for cleaning the atlas data efficiently

# The unique name of the atlas annot, without hemisphere in filename
annot_name <- "aal"

# You might need to convert the annotation file
# convert atlas to fsaverage5
mri_surf2surf_rereg(subject = "fsaverage",
                    annot = annot_name,
                    hemi = "lh",
                    output_dir = here::here("data-raw/fsaverage5/"))

mri_surf2surf_rereg(subject = "fsaverage",
                    annot = annot_name,
                    hemi = "rh",
                    output_dir = here::here("data-raw/fsaverage5/"))


# Make  3d ----
aal_3d <- make_aparc_2_3datlas(annot = annot_name,
                               annot_dir =  here::here("data-raw/fsaverage5/"),
                               output_dir = here::here("data-raw/"))
ggseg3d(atlas  = aal_3d)

## fix atlas ----
# you might need to do some alteration of the atlas data,
# like cleaning up the region names so they do not contain
# hemisphere information, and any unknown region should be NA
aal_n <- aal_3d
aal_n <- unnest(aal_n, ggseg_3d)
aal_n <- mutate(aal_n,
                region = gsub("^LH_|^RH_|region_", "", region),
                region = ifelse(grepl("\\?", region), NA, region),
                atlas = "aal_3d"
)
aal_3d <- as_ggseg3d_atlas(aal_n)
ggseg3d(atlas  = aal_3d)


# Make palette ----
brain_pals <- make_palette_ggseg(aal_3d)
usethis::use_data(brain_pals, internal = TRUE, overwrite = TRUE)
devtools::load_all(".")


# Make 2d polygon ----
aal <- make_ggseg3d_2_ggseg(aal_3d, 
                            steps = 3:7,
                            tolerance = .5,
                            output_dir = here::here("data-raw/"))

plot(aal)

aal %>%
  ggseg(atlas = ., show.legend = TRUE,
        colour = "black",
        mapping = aes(fill=region)) +
  scale_fill_brain("aal", package = "ggsegAal", na.value = "black")


usethis::use_data(aal, aal_3d,
                  internal = FALSE,
                  overwrite = TRUE,
                  compress = "xz")


# make hex ----
atlas <- aal

p <- ggseg(atlas = atlas,
           hemi = "left",
           view = "lateral",
           show.legend = FALSE,
           colour = "grey30",
           size = .2,
           mapping = aes(fill =  region)) +
  scale_fill_brain2(palette = atlas$palette) +
  theme_void() +
  hexSticker::theme_transparent()

lapply(c("png", "svg"), function(x){
  hexSticker::sticker(p,
                      package = "ggsegAal",
                      filename = sprintf("man/figures/logo.%s", x),
                      s_y = 1.2,
                      s_x = 1,
                      s_width = 1.5,
                      s_height = 1.5,
                      p_family = "mono",
                      p_size = 10,
                      p_color = "grey30",
                      p_y = .6,
                      h_fill = "white",
                      h_color = "grey30"
  )
  
})

pkgdown::build_favicons(overwrite = TRUE)
