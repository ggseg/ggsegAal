library(ggseg)
library(ggseg3d)
library(ggplot2)

# ggseg ----
context("test-palettes")
test_that("check new palettes work", {
  expect_equal(length(brain_pal("aal", package = "ggsegAal")), 83)

  expect_error(brain_pal("aal"), "not a valid")

  expect_true(all(brain_regions(aal) %in% names(brain_pal("aal", package = "ggsegAal"))))
})

context("test-ggseg-atlas")
test_that("atlases are true ggseg atlases", {

  expect_true(is_brain_atlas(aal))

})

context("test-ggseg")
test_that("Check that polygon atlases are working", {
  expect_is(ggseg(atlas = aal),c("gg","ggplot"))

  expect_is(ggseg(atlas = aal, mapping = aes(fill = region)),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = aal, mapping = aes(fill = region)) +
              scale_fill_brain("aal", package = "ggsegAal"),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = aal, mapping = aes(fill = region)) +
              scale_fill_brain("aal", package = "ggsegAal"),
            c("gg","ggplot"))

  expect_is(ggseg(atlas = aal, mapping=aes(fill=region), adapt_scales = FALSE ),c("gg","ggplot"))

})


# ggseg3d ----
context("test-ggseg3d")
test_that("Check that mesh atlases are working", {
  expect_is(
    ggseg3d(atlas=aal_3d),
    c("plotly", "htmlwidget")
  )
})



context("test-ggseg3d-atlas")
test_that("atlases are true ggseg3d atlases", {

  expect_true(is_ggseg3d_atlas(aal_3d))

})
