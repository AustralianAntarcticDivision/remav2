files <- remav2::remav2_32m_mosaic_index
files$cog_dem[1]
library(vapour)
library(furrr)
plan(multicore)
infos <- future_map(files$cog_dem, vapour_raster_info)
saveRDS(infos, "data-raw/remav2_32m_mosaic_infos.rds")
plan(sequential)

