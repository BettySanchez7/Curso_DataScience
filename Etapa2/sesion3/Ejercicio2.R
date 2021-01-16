library(dplyr)
getwd()
setwd("C:/Users/bety-/Documents/CURSOS/DATA SCIENCE/FundamentosR/sesion3/")
data2 <- read.csv("boxp.csv")
head(data2)
names(data2)
data <- mutate(data2, Mediciones = Mediciones*1.23)
head(data)

# Utilizando la función hist, los histogramas solo funcioan para variables númericas
hist(data$Mediciones)
hist(data$Mediciones, breaks = seq(0,360, 20), 
     main = "Histograma de Mediciones",
     xlab = "Mediciones",
     ylab = "Frecuencia")

# Ahora utilizando ggplot para apreciar los resultados de las dos funciones

summary(data)
# Evitar el Warning de filas con NA´s
#na.omit
data <- na.omit(data) 

data %>%
  ggplot() + 
  aes(Mediciones) +
  geom_histogram(binwidth = 20)

# Agregando algunas etiquetas y tema, intenta modificar algunas de las opciones para que aprecies los resultados

data %>%
  ggplot() + 
  aes(Mediciones) +
  geom_histogram(binwidth = 10, col="black", fill = "blue") + 
  ggtitle("Histograma de Mediciones") +
  ylab("Frecuencia") +
  xlab("Mediciones") + 
  theme_light()

# Tanto hist(), como ggplot() + aes() + geom_histogram() son útiles para generar los histogramas, tu decide cual te funciona mejor.