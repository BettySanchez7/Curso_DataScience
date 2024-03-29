# EJEMPLO 5. Instalar paquetes y cargarlos.

# Objetivo
# Instalar paquetes
# Cargar paquetes

# Requisitos
# R y RStudio
# Prework

# Desarrollo
# En este ejemplo se te guiar� para poder realizar la instalaci�n y carga de paquetes que son requeridos para realizar an�lisis, gr�ficas, o para extraer informaci�n con diversas funciones. Esto es �til ya que agrega funcionalidades a R, ya sea para graficar o generar an�lisis con diversas t�cnicas.

# Se instalan de la siguiente manera

install.packages("ggplot2") #siempre lleva  comillas

# Una vez que se instal�, se debe de cargar

library(ggplot2) # Se omite el uso de las comillas

# Otro ejemplo

install.packages("dplyr")
library(dplyr)
install.packages("rtools")
# Algo �til es revisar la versi�n que se tiene de R, ya que en ocasiones no se instalan ciertos paquetes por la incompatibilidad de R, el siguiente comando nos indicar� la versi�n que estamos trabajando.

version

# Tambi�n se puede realizar esta acci�n en la pesta�a de Packages, intentalo.