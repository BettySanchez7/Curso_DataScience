library(dplyr)
library(reshape2)
library(ggplot2)


url1 <- "https://www.football-data.co.uk/mmz4281/1718/SP1.csv"
url2 <- "https://www.football-data.co.uk/mmz4281/1819/SP1.csv"
url3 <- "https://www.football-data.co.uk/mmz4281/1920/SP1.csv"
data1718 <- read.csv(file = url1) 
data1819 <- read.csv(file = url2)
data1920 <- read.csv(file = url3)

data1<- select(data1718, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
data2<- select(data1819, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
data3<- select(data1920, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
data1<- mutate(data1, Date = as.Date(Date, "%d/%m/%y"))
data2 <- mutate(data2, Date = as.Date(Date, "%d/%m/%Y"))
data3 <- mutate(data3, Date = as.Date(Date, "%d/%m/%Y"))
lista <- list(data1,data2,data3)
data <- do.call(rbind, lista)

names(data)
str(data)
View(data)
####################################################################
###EJERCICIO 1
encasa <- data$FTHG
visitante <- data$FTAG
probab_encasa <- (table(encasa)/dim(data)[1])
probab_visitante <- (table(visitante)/dim(data)[1])

p_conjunta <- (table(encasa, visitante)/dim(data)[1])

###EJERCICIO 2

encasa1 <- as.data.frame(probab_encasa)
str(encasa1)


p <- ggplot(encasa1, aes(x = encasa, y = Freq)) + 
  geom_bar (stat="identity", fill = 'black')+
  ggtitle('Goles en casa')
p

visitantes <- as.data.frame(probab_visitante)
str(visitantes)


p2 <- ggplot(visitantes, aes(x = visitante, y = Freq)) + 
  geom_bar (stat="identity", fill = 'black')+
  ggtitle('Goles de visitante')
p2

conjunta <- as.data.frame(p_conjunta)
str(conjunta)
conjunta<- mutate(conjunta, encasa = as.numeric(encasa))
conjunta<- mutate(conjunta, visitante = as.numeric(visitante))
heatmap(as.matrix(conjunta[, -3]))
