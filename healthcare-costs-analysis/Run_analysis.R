try(dir.create("./data"))
file.url <- "https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/NationalHealthExpendData/Downloads/Tables.zip"
data.downloaded <- Sys.Date()
setwd("./data")
download.file(file.url,"NHETables.zip")
unzip("NHETables.zip",exdir="./tables")
setwd("..")
