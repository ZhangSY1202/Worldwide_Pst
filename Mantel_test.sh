library(vegan)
library(ggplot2)
library(dplyr)

virdistancematrix <- read.table("virdistance.txt", header = TRUE) %>% as.matrix
virFst <- read.table("16virfst.txt", header = TRUE) %>% as.matrix

mantel_result <- mantel(virdistancematrix, virFst)
print(mantel_result)  
