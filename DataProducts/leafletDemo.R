##Leaflet App for Week2 assignment...
##
##
library(leaflet)
m <- leaflet() %>% addTiles() %>% addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
##Nasa Map
##
m <- leaflet() %>% 
        setView(lng=-71.0589, lat=42.3601, zoom = 6) %>%
        addProviderTiles("CartoDB.Positron") %>% 
        addProviderTiles("NASAGIBS.ModisTerraTrueColorCR",
                         options = providerTileOptions(time = "2015-08-31", opacity = 0.5)) %>%
        addMarkers(lng=-71.0589, lat=42.3601, popup="Some Place")
m