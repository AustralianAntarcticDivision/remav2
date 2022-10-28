library(vapour)
## the REMA v2 2m index
src <- "/vsicurl/https://data.pgc.umn.edu/elev/dem/setsm/REMA/indexes/REMA_Mosaic_Index_v2_gpkg.gpkg"
layers <- vapour_layer_info(src)
layers$layer_names

## 2m REMA_Mosaic_Index_v2_2m
layer <- grep("_2m$", layers$layer_names, value = TRUE)
index <- tibble::as_tibble(vapour_read_fields(src, layer = layer))

REMA_Mosaic_Index_v2_2m = index
usethis::use_data(REMA_Mosaic_Index_v2_2m,  compress = "xz")
#index <- REMA_Mosaic_Index_v2_2m
## drop useless stuff
ex <- vapour_read_extent(src, layer)
index[c("xmin", "xmax", "ymin", "ymax")] <- setNames(as.data.frame(do.call(rbind, ex)), c("xmin", "xmax", "ymin", "ymax"))
index <- dplyr::select(index, dem_id, supertile, xmin, xmax, ymin, ymax, s3url, data_percent, num_components)
index <- dplyr::rename(index, tile = supertile)
##https://pgc-opendata-dems.s3.us-west-2.amazonaws.com/rema/mosaics/v2.0/2m/09_39/09_39_2_1_2m_v2.0_dem.tif

tifvars <- c("browse", "dem", "count", "countmt", "mad", "maxdate", "mindate")
for (i in seq_along(tifvars)) {
  cogvar <- sprintf("cog_%s", tifvars[i])
  index[[cogvar]] <- file.path("/vsicurl/https://pgc-opendata-dems.s3.us-west-2.amazonaws.com/rema/mosaics/v2.0/2m", index$tile,
                           sprintf("%s_%s.tif", index$dem_id, tifvars[i]))

}


## check it
# str(vapour_raster_info(index$cog_browse[1]))
# str(vapour_raster_info(index$cog_dem[1]))
# str(vapour_raster_info(index$cog_count[1]))
# str(vapour_raster_info(index$cog_countmt[1]))
# str(vapour_raster_info(index$cog_mad[1]))
# str(vapour_raster_info(index$cog_maxdate[1]))
# str(vapour_raster_info(index$cog_mindate[1]))

remav2_mosaic_index <- index
usethis::use_data(remav2_mosaic_index,  compress = "xz")



## 32m
layer <- grep("_32m$", layers$layer_names, value = TRUE)
index <- tibble::as_tibble(vapour_read_fields(src, layer = layer))

ex <- vapour_read_extent(src, layer)
index[c("xmin", "xmax", "ymin", "ymax")] <- setNames(as.data.frame(do.call(rbind, ex)), c("xmin", "xmax", "ymin", "ymax"))
index <- dplyr::select(index, dem_id, supertile, xmin, xmax, ymin, ymax, s3url, data_percent, num_components)
index <- dplyr::rename(index, tile = supertile)
##https://pgc-opendata-dems.s3.us-west-2.amazonaws.com/rema/mosaics/v2.0/2m/09_39/09_39_2_1_2m_v2.0_dem.tif

tifvars <- c("browse", "dem", "count", "countmt", "mad", "maxdate", "mindate")
for (i in seq_along(tifvars)) {
  cogvar <- sprintf("cog_%s", tifvars[i])
  index[[cogvar]] <- file.path("/vsicurl/https://pgc-opendata-dems.s3.us-west-2.amazonaws.com/rema/mosaics/v2.0/32m", index$tile,
                               sprintf("%s_%s.tif", index$dem_id, tifvars[i]))

}

remav2_32m_mosaic_index = index
usethis::use_data(remav2_32m_mosaic_index,  compress = "xz")
