library(forecast)
data(AirPassengers)
AP <- AirPassengers


#

start(AP); end(AP); frequency(AP)
summary(AP)

#Graficando la serie de tiempo

plot(AP, ylab= "Passengers (x1000)")


# Realizamos la gráfica de la descomposición 

plot(decompose(AirPassengers)) # time series decomposition

#Para demostrar si la serie de tiempo tiene un comportamiento estocástico realizaremos la prueba de Dickey-Fuller


install.packages("tseries")
library(tseries)
adf.test(AP, alternative ="stationary", k=12)