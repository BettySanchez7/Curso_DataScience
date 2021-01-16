library(dplyr)
getwd()
##EJERCICIO 1
setwd("C:/Users/bety-/Documents/CURSOS/DATA SCIENCE/FundamentosR/sesion1/")
data <- read.csv("SP1.csv")
head(data)
names(data)
str(data)

##EJERCICIO 2
encasa <- data$FTHG
visitante <- data$FTAG
encasa
visitante

?table
dim(data)
##EJERCICIO 3 PROBABILIDADES
(table(encasa)/dim(data)[1])
(table(visitante)/dim(data)[1])

##EJERCICIO 4
(table(encasa, visitante)/dim(data)[1])