#' aal atlas
#'
#' FreeSurfer annot files for this parcellation
#' was obtained from (\href{https://github.com/faskowit/multiAtlasTT}{faskowit/multiAtlasTT})
#' From the source repo: "We transformed the Arslan data, which is fs_LR 32k space, to fsaverage 
#' space, and then made .annot files in this space. For these data, we created arbitrary parcel 
#' names and LUT files. The LUT files here seem to have some weirdness in them regarding 
#' hemisphere assignments. Thus, these atlases are provided as a means to slice up the cortex. 
#' The names and correspondences of the LUT should be determined independently; not based on 
#' the LUT files provided here."
#'
#' @docType data
#' @name aal
#' @keywords datasets
#' @family ggseg_atlases ggseg3d_atlases
#' @references Rolls, E. T., Joliot, M., & Tzourio-Mazoyer, N. (2015). 
#'     Implementation of a new parcellation of the orbitofrontal cortex in the automated anatomical labeling atlas. 
#'     Neuroimage, 122, 1-5.
#'     (\href{https://pubmed.ncbi.nlm.nih.gov/xxxxx/}{PubMed})
#'     
#' \itemize{
#'  \item{aal}{ - aal atlas}
#'  \item{aal_3d}{ - aal 3d mesh atlas}
#'}
#'
#' @import ggseg
#' @import ggseg3d
#' 
#' @examples
#' data(aal)
#' data(aal_3d)
"aal"

#' @rdname aal
"aal_3d"

