
library(ggplot2)
library(dplyr)
getwd()
setwd("C:/Users/bety-/Documents/CURSOS/DATA SCIENCE/FundamentosR/sesion3/")
altura_alumnos <- read.csv("BD_Altura_Alunos.csv", sep = ";")
names(altura_alumnos)

hist(altura_alumnos$Altura, 
     breaks = 10,
     main = " Histograma de alturas",
     ylab = "Frecuencia",
     xlab = "Altura")

ggplot(altura_alumnos, aes(Altura))+ 
  geom_histogram(binwidth = 10, col="white", fill = "red") + 
  ggtitle("Histograma de Mediciones") +
  ylab("Frecuencia") +
  xlab("Alturas") + 
  theme_gray()