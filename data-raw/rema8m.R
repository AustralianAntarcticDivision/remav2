## rema 8m polygons  (was called "rema_tiles_polygons" in raadfiles)
file <- raadfiles::rema_tile_files()$fullname
rema8m_tiles_polygons <- dplyr::mutate(tibble::as_tibble(vapour::vapour_read_fields(file)),
                                       geom = wk::wkb(vapour::vapour_read_geometry(file)))

usethis::use_data(rema8m_tiles_polygons)
