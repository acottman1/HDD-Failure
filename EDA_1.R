# inital EDA for predicitve maintinance project.
#install.packages('bit64')
library(data.table)
library(tidyverse)

path <- "~/CDS/CDS_492/HDD-Failure"
dataPath <- paste0(path,"/data")

file_names <- list.files(dataPath, recursive = TRUE)
setwd(dataPath)

df <- do.call(rbind,lapply(file_names,fread))
setwd(path)

df_raw <- df %>% select(c(1:5,ends_with("raw") ))
#df_norm<- df %>% select(c(1:5,ends_with("normalized") ))

#rescale the data between 0-1 
rescale <- function(x) (x-min(x, na.rm = TRUE))/(max(x, na.rm = TRUE) - min(x,na.rm = TRUE))
idInfo <- df %>% select(1:5)
datCols <- df %>% select(ends_with("raw"))
normData10 <- normData5
rm(normData5)
normData45 <- rescale(datCols[,36:45])
normData <- cbind(normData10,normData20,normData35,normData45)
rm(normData10,normData20,normData35,normData45, datCols)
df_norm <- cbind(idInfo,normData)

d <- df_norm %>% select(date:smart_4_raw)
d<- cbind(d,df_norm$smart_255_raw)
d[115:120]

fail <- df_norm %>% group_by(serial_number) %>% filter(failure ==1)

t<- df_norm %>% filter(serial_number == "Z3015LED")
g<- df_norm %>% filter(serial_number =="Z302BPKE")
