# Reto 1

# leyendo el fichero desde el repositorio

netflix <-read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv")

# dimensión del data frame
dim(netflix)
class(netflix)

# titulos que se estrenaron despues del 2015 

net.2015 <- netflix[netflix$release_year > 2015, ]

# escritura del archivo
write.csv(net.2015, "res.netflix.csv")

# Reto 2

# generando el vector de 44 posiciones aleatorio

ran <- rnorm(44)

# creando el loop que eleva al cubo y suma 12 a cada posición 
el <- vector()
for (i in 1:15) {
  el[i] <- (ran[i]^3) + 12
  print(el)
}

# Se almacenan los valores en un data frame
df.al <- data.frame(ran = ran[1:15], 
                    val = el)
df.al

# pseudocódigo 

# ran <- {se genera el vetor con rnorm de 44 entradas}
# 
# el <- {se inicializa un vector donde se almacenará el resultado}
# 
# for (contador desde 1 hasta 15 ){
#   el[contador] <- operación aritmética
#   se imprime el resultado (el)
# }


# Reto 3

amazon.best <- read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/bestsellers%20with%20categories.csv")

# Convirtiendo el DF a transpuesto y en un data frame 
tAmazon <- as.data.frame(t(amazon.best))

# Usando el nombre de los libros como el nombre de las columnas
colnames(tAmazon) <- tAmazon[1,]

row.names(tAmazon)

# libro con mayor precio
which.max(tAmazon["Price",])

# libro con menor precio
which.min(tAmazon["Price",])
© 2021 GitHub, Inc.