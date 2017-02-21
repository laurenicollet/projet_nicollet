mongoimport -d "new_york" -c "subways" --type json --file "data/subways.geojson" --jsonArray

mongoimport -d "new_york" -c "parks" --type json --file "data/parks.geojson" --jsonArray

mongoimport -d "new_york" -c "censusBlocks" --type json --file "data/censusBlocks.geojson" --jsonArray
