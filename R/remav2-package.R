#' @keywords internal
"_PACKAGE"

## usethis namespace: start
## usethis namespace: end
NULL



#' The REMA v2 Mosaic Index (2m)
#'
#' The Reference Elevation Model of Antarctica v2, this index is a set of tile identifiers and geographic extents
#' with links to the s3 STAC ('s3url'), the tarball sources ('fileurl'), and the polygon of the tile and other information.
#'
#' This is preserved as provided in the mosaic index Geopackage 'REMA_Mosaic_Index_v2_2m', but we also augment this with
#' the various cog sources (layers provided in the tarballs, also available at these COG urls) and the extent of each in 'remav2_mosaic_index'.
#'
#' The function [remav2_index()] returns the remav2_mosaic_index as a convenience.
#'
#' @docType data
#' @name remav2_mosaic_index
#' @seealso remav2_index
#' @aliases REMA_Mosaic_Index_v2_2m
NULL
