#' REMA v2 Mosaic Index
#'
#' Data frame with relevant tile identifiers, source url, and COG urls for REMA v2 2m tiles.
#'
#' \tabular{rlll}
#' #' [,1] \tab dem_id   \tab character \tab dem_id\cr
#' [,2] \tab tile   \tab character \tab tile\cr
#' [,3] \tab xmin   \tab numeric \tab xmin\cr
#' [,4] \tab xmax   \tab numeric \tab xmax\cr
#' [,5] \tab ymin   \tab numeric \tab ymin\cr
#' [,6] \tab ymax   \tab numeric \tab ymax\cr
#' [,7] \tab s3url   \tab character \tab s3url\cr
#' [,8] \tab data_percent   \tab numeric \tab data_percent\cr
#' [,9] \tab num_components   \tab numeric \tab num_components\cr
#' [,10] \tab cog_browse   \tab character \tab cog_browse\cr
#' [,11] \tab cog_dem   \tab character \tab cog_dem\cr
#' [,12] \tab cog_count   \tab character \tab cog_count\cr
#' [,13] \tab cog_countmt   \tab character \tab cog_countmt\cr
#' [,14] \tab cog_mad   \tab character \tab cog_mad\cr
#' [,15] \tab cog_maxdate   \tab character \tab cog_maxdate\cr
#' [,16] \tab cog_mindate   \tab character \tab cog_mindate\cr
#' }
#'
#' @return
#' @export
#'
#' @examples
remav2_index <- function() {
  remav2_mosaic_index
}
