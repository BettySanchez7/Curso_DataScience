

library(dplyr)

###EJERCICIO 1
url1 <- "https://www.football-data.co.uk/mmz4281/1718/SP1.csv"
url2 <- "https://www.football-data.co.uk/mmz4281/1819/SP1.csv"
url3 <- "https://www.football-data.co.uk/mmz4281/1920/SP1.csv"
data1718 <- read.csv(file = url1) 
data1819 <- read.csv(file = url2)
data1920 <- read.csv(file = url3)

###EJERCICIO 2
str(data1718)
str(data1819)
str(data1920)
head(data1718)
head(data1819)
head(data1920)
View(data1718) 
View(data1819)
View(data1920)
summary(data1718)
summary(data1819)
summary(data1920)

###EJERCICIO 3

data1<- select(data1718, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
data2<- select(data1819, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
data3<- select(data1920, Date, HomeTeam, AwayTeam, FTHG, FTAG, FTR)
data1

###EJERCICIO 4
data1<- mutate(data1, Date = as.Date(Date, "%d/%m/%y"))
data2 <- mutate(data2, Date = as.Date(Date, "%d/%m/%Y"))
data3 <- mutate(data3, Date = as.Date(Date, "%d/%m/%Y"))


###
lista <- list(data1,data2,data3)
data <- do.call(rbind, lista)

names(data)
str(data)
View(data)