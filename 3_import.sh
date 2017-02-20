mongoimport -d "new_york" -c "subways" --type json --file "projet_nicollet/data/subways.geojson" --jsonArray


mongoimport -d "new_york" -c "parks" --type json --file "projet_nicollet/data/parks.geojson" --jsonArray

mongoimport -d "new_york" -c "censusBlocks" --type json --file "projet_nicollet/data/censusBlocks.geojson" --jsonArray

