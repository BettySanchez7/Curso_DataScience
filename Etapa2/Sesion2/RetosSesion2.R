

set.seed(134)

x <- round(rnorm(1000, 175, 6), 1)


library(DescTools)

mean(x)
median(x) 
Mode(x)

quantile(x, probs = seq(0.1, 0.9, 0.1))

IQR(x)
sd(x) 
var(x)


######RETO 2

str(mtcars)
summary(mtcars)
head(mtcars)
View(mtcars)








# 

setwd("C:/Users/bety-/Documents/CURSOS/DATA SCIENCE/FundamentosR/sesion2/reto3")
dir()
library(dplyr)


d_2021 <- "https://www.football-data.co.uk/mmz4281/2021/D1.csv"
d_1920 <- "https://www.football-data.co.uk/mmz4281/1920/D1.csv"
d_1829 <- "https://www.football-data.co.uk/mmz4281/1819/D1.csv"
d_1718 <- "https://www.football-data.co.uk/mmz4281/1718/D1.csv"

# DECARGAS

download.file(url = d_2021, destfile = "d_2021.csv", mode = "wb")
download.file(url = d_1920, destfile = "d_1920.csv", mode = "wb")
download.file(url = d_1819, destfile = "d_1819.csv", mode = "wb")
download.file(url = d_1718, destfile = "d_1718.csv", mode = "wb")

# guardamos en lista

football <- lapply(dir(), read.csv)

#con select selecciono 
football <- lapply(football, select, Date, HomeTeam:FTR)

football2 <- do.call(rbind, football)
head(football2); tail(football2)