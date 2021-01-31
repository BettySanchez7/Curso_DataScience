library(dplyr)
install.packages("fbRanks")
library(fbRanks)
library(ggplot2)


url1 <- "https://www.football-data.co.uk/mmz4281/1718/SP1.csv"
url2 <- "https://www.football-data.co.uk/mmz4281/1819/SP1.csv"
url3 <- "https://www.football-data.co.uk/mmz4281/1920/SP1.csv"
data1718 <- read.csv(file = url1) 
data1819 <- read.csv(file = url2)
data1920 <- read.csv(file = url3)
lista <- list(data1718, data1819, data1920)
lista2 <- lapply(lista, select, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)

data <- lapply(lista2, mutate,  Date = as.Date(Date, "%d/%m/%y"))

dataf <- do.call(rbind, data)

str(dataf)
View(dataf)
##Ejercicio 1
SmallData <- select(dataf, date = Date, home.team = HomeTeam, 
                    home.score = FTHG, away.team = AwayTeam, 
                    away.score = FTAG)
setwd("C:/Users/bety-/Documents/CURSOS/DATA SCIENCE/FundamentosR/sesion5/Postwork")
write.csv(x= SmallData, file = "soccer.csv", row.names= FALSE)

##Ejercicio2

listasoccer <- create.fbRanks.dataframes(scores.file = "soccer.csv")

anotacioes <- listasoccer$scores
equipos <- listasoccer$teams

##Ejercicio3

fecha <- unique( x= anotacioes$date)
class(fecha)
n <- length(fecha)
ranking <- rank.teams(scores = anotacioes, teams = equipos, min.date = fecha[1], max.date = fecha[n-1])

##Ejercicio4

prediccion <- predict(ranking,date = fecha[n])
