install.packages("rjson", repos='http://cran.us.r-project.org')
library("rjson")

dir.create("data")

#mise en forme des donnees subway
extractDataSubways <- function(l){
  x <- list(id= l$properties$objectid, name=l$properties$name, lines = l$properties$line, geometry=l$geometry)
}
geojson <- fromJSON(file="https://data.cityofnewyork.us/api/geospatial/arq3-7z49?method=export&format=GeoJSON")
geojson <- geojson$features
geojson <- lapply(geojson, extractDataSubways)
subways <- toJSON(geojson)
write(x=subways, file = "data/subways.geojson")
rm(subways, extractDataSubways)


#mise en forme des donnees parks
extractDataParks <- function(l){
  x <- list(id= l$properties$gispropnum, name=l$properties$signname, acres= l$properties$acres, geometry=l$geometry)
}
geojson <- fromJSON(file="https://data.cityofnewyork.us/api/geospatial/rjaj-zgq7?method=export&format=GeoJSON")
geojson <- geojson$features
geojson <- lapply(geojson, extractDataParks)
parks <- toJSON(geojson)
write(x=parks, file = "data/parks.geojson")
rm(parks, extractDataParks)


#mise en forme des donnees censusBlock
extractDataCB <- function(l){
  x <- list(id= l$properties$bctcb_2010, geometry=l$geometry)
}
geojson <- fromJSON(file="https://data.cityofnewyork.us/api/geospatial/v2h8-6mxf?method=export&format=GeoJSON")
geojson <- geojson$features
geojson <- lapply(geojson, extractDataCB)
cb <- toJSON(geojson)
write(x=cb, file = "data/censusBlocks.geojson")
rm(cb, extractDataCB, geojson)

