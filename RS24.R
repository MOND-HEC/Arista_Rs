
# importar csv ------------------------------------------------------------

csvdt <- read.csv(file = "CSV/LA MOLINA 2014 POTATO WUE (FB) - info.csv")

# importar tsv ------------------------------------------------------------

tsvdt <- read.delim(file = "CSV/LA MOLINA 2014 POTATO WUE (FB) - fb.tsv", sep = "\t", header = TRUE)

dtxlsx <- read.xlsx(xlsxFile = "CSV/LA MOLINA 2014 POTATO WUE (FB) (1).xlsx", sheet = "fb")

library(inti)
library(googlesheets4)

url <- "https://docs.google.com/spreadsheets/d/15r7ZwcZZHbEgltlF6gSFvCTFA-CFzVBWwg3mFlRyKPs/edit?gid=172957346#gid=172957346"
gs <- as_sheets_id(url)
fb <- googlesheets4::range_read(ss= gs ,  sheet =  "fb")
