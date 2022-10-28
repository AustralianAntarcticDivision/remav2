utils::globalVariables("remav2_mosaic_index")

#' REMA v2 Mosaic Index
#'
#' Data frame with relevant tile identifiers, source url, and COG urls for REMA v2 2m tiles.
#'
#' The data frame [remav2_mosaic_index] has the following structure.
#'
#' The 'cog_*' urls are directly useable by [GDAL](https://gdal.org).
#'
#' \tabular{rlll}{
#'  \tab dem_id   \tab character \tab dem_id\cr
#'  \tab tile   \tab character \tab tile\cr
#'  \tab xmin   \tab numeric \tab xmin\cr
#'  \tab xmax   \tab numeric \tab xmax\cr
#'  \tab ymin   \tab numeric \tab ymin\cr
#'  \tab ymax   \tab numeric \tab ymax\cr
#'  \tab s3url   \tab character \tab s3url\cr
#'  \tab data_percent   \tab numeric \tab data_percent\cr
#'  \tab num_components   \tab numeric \tab num_components\cr
#'  \tab cog_browse   \tab character \tab cog url of browse image \cr
#'  \tab cog_dem   \tab character \tab cog url of dem\cr
#'  \tab cog_count   \tab character \tab cog url of count\cr
#'  \tab cog_countmt   \tab character \tab cog url of countmt\cr
#'  \tab cog_mad   \tab character \tab cog url of mad\cr
#'  \tab cog_maxdate   \tab character \tab cog url of maxdate\cr
#'  \tab cog_mindate   \tab character \tab cog url of mindate\cr
#' }
#'
#'
#'
#' @return data frame with mosaic index details
#' @export
#'
#' @examples
#' remav2_index()
remav2_index <- function() {
  remav2_mosaic_index
}
