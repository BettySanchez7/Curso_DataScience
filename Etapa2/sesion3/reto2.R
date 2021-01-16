library(ggplot2)
library(dplyr)
getwd()
setwd("C:/Users/bety-/Documents/CURSOS/DATA SCIENCE/FundamentosR/sesion3/")
altura_alumnos <- read.csv("BD_Altura_Alunos.csv", sep = ";")
 
nba <- read.csv("players_stats.csv")
names(nba)


media <-mean(nba$MIN)
ggplot(nba, aes(MIN))+ 
  geom_histogram(binwidth = 30, col="black", fill = "red") + 
  ggtitle("Histograma de Minutos por jugador") +
  ylab("Frecuencia") +
  xlab("Minutos") +
  geom_vline(xintercept = media)+
  theme_light()

media_nba <-mean(na.omit(nba$Age))

ggplot(nba, aes(Age))+ 
  geom_histogram(binwidth = 2, col="black", fill = "blue") + 
  ggtitle("Histograma de Edad") +
  ylab("Frecuencia") +
  xlab("Edad") +
  geom_vline(xintercept =  media_nba)+
  theme_light()


p <- ggplot(nba, aes(Weight, Height)) +
  geom_point()
p

####
mas_alto <- which.max(nba$Height)
paste("El jugador más alto es:", nba$Name[mas_alto],"con una altura de:" ,nba$Height[mas_alto]/100, "m")

####
(mas_bajo <- which.min(nba$Height))
paste("El jugador más bajito es:", nba$Name[mas_bajo],"con una altura de:" ,nba$Height[mas_bajo]/100, "m")

###
(altura.m <- mean(na.omit(nba$Height)))
paste("La altura promedio es:", altura.m/100,"m")

# 7. Scatterplot de Asistencias totales vs Puntos, con un face wrap por posición.
nba %>% ggplot( aes(AST.TOV, PTS )) +
  geom_point() + 
  facet_wrap("Pos")
