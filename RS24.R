
# importar csv ------------------------------------------------------------

csvdt <- read.csv(file = "CSV/LA MOLINA 2014 POTATO WUE (FB) - info.csv")

# importar tsv ------------------------------------------------------------

tsvdt <- read.delim(file = "CSV/LA MOLINA 2014 POTATO WUE (FB) - fb.tsv", sep = "\t", header = TRUE)

dtxlsx <- read.xlsx(xlsxFile = "CSV/LA MOLINA 2014 POTATO WUE (FB) (1).xlsx", sheet = "fb")
