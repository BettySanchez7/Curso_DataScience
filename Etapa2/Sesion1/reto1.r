#RETO 1
# También se puede leer el fichero directamente desde una URL

netflix <- read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv")
tail(data.url); str(data.url)

# Calculamos la dimensión de la base de datos

dim(netflix)

# El tipo de objeto se puede saber utilizando class()

class(netflix)
netflix[netflix$release_year>2015,]
prueba <- netflix[netflix$release_year>2015,]
net.2015 <- prueba$title
write.csv(net.2015, file = "res.netflix.csv", row.names = FALSE) # guarda un archivo csv
