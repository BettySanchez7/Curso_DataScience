library(dplyr)
library(ggplot2)

setwd("C:/Users/bety-/Documents/CURSOS/DATA SCIENCE/FundamentosR/sesion6/Postwork")
data <- read.csv("match.data.csv")
View(data)

##Ejercicio1
data <- mutate(data, date= as.Date(date, "%Y-%m-%d"), sumagoles = home.score + away.score)
data <- mutate(data, mes= format(date,"%Y-%m"))
##wEjercicio2
dataf <- group_by(data,mes)##agrupamos datos por mes
dataf <- summarise(dataf, promedio = mean(sumagoles)) #se realiza el promedio con función summarise https://rsanchezs.gitbooks.io/rprogramming/content/chapter9/groupby.html

##Ejercicio3
#creo serie de tiempo con frecuencia de 12 entre cada año para ver el promedio por mes
serietiempo <- ts(dataf$promedio,start = 2010, end = 2019, frequency = 12)
#grafico
ts.plot(serietiempo)

