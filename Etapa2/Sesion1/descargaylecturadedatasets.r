# EJEMPLO 4. Descarga y lectura de data sets.

# Objetivo
# Fijar y conocer ruta de trabajo
# Lectura de ficheros CSV, locales y en repositorio
# Manejo de objetos

# Requisitos
# R, RStudio
# Prework
# Desarrollo

# Ejecutar las l�neas de comando y tratar de comprender que realiza cada parte de sus entradas

# Se pueden obtener diversos data sets de Kaggle, visita el sitio para que te familiarices
# La siguiente es una base de datos de los libros m�s vendidos en Amazon del 2009 - 2019

# Obtenemos la ruta del directorio de trabajo

getwd()

# Fijando el directorio de trabajo

setwd("C:/Users/bety-/Documents/CURSOS/DATA SCIENCE/FundamentosR") # Depende del usuario

# La funci�n read.csv ser� util para leer fichero .csv

read.csv("bestsellers with categories.csv") # El archivo csv debe estar en el directorio de trabajo

# se puede asignar a un objeto el fichero leido anteriormente

amazon.books <- read.csv("bestsellers with categories.csv")
tail(amazon.books); str(amazon.books)
head(amazon.books)
# Tambi�n se puede leer el fichero directamente desde una URL

data.url <- read.csv("https://www.football-data.co.uk/mmz4281/2021/SP1.csv")
tail(data.url); str(data.url)

# Calculamos la dimensi�n de la base de datos

dim(amazon.books)

# El tipo de objeto se puede saber utilizando class()

class(amazon.books)
