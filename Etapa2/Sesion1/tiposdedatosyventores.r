# EJEMPLO 1. Tipos de datos y vectores

# Objetivo
# Poder determinar el tipo de variables y objetos que se utilizan
# Creaci�n y manipulaci�n de objetos (vectores, matrices, data frames, entre otros)
# Operaciones b�sicas

# Requisitos
# Tener previamente instalados R y RStudio
# Haber leido y comprendido el Prework

# Desarrollo
# Se tiene una serie de c�digos los cuales deber�n irse corriento l�nea a l�nea, recordar que siempre se ejecuta una l�nea presionando Ctrl + Enter

# Primero vamos a crear algunas variables de diferentes tipos:

(var.hola <- "Hola Mundo")
(var.number <- 5L)
(var.double <- 2.7076)
(var.logical <- T)
(vector <- c(1,2))

# Ahora con la funci�n class veremos la tipolog�a de las variables

class(var.number)
class(var.hola)
class(var.double)
class(var.logical)

# Observa que diferencia hay entre class y typeof

class(var.logical)
typeof(var.logical)

# En este paso vamos a crear vectores, siempre ser�n de la forma c(elem1, elem2, ...)

a <- c(4, 6, 8, 10,12)
b <- c(3, 5, 7, 9)

# Para saber la longitud del vector

length(a)
length(b)

# Se puede acceder a las coordenadas de un vector haciendo uso de [] y su posici�n

a[1]
b[4]

# Para unir 2 vectores

c(a,b)

# Organizarlos con la funci�n sort, cambia la F por T y observa que ocurre

sort(c(a,b), decreasing = F)

# Otra forma de generar el vector es de la siguiente manera, utilizando ":"

3:12  # as� de sencillo es

# Intenta los siguientes y prueba con otras que se te vengan a la imaginaci�n

10:1
1:1000
0:10

# Tambi�n se pueden generar vectores que no sean sucesivos con la funci�n seq, intenta cambiar el valor de los argumentos y observa el comportamiento de los vectores

(vector.by2 <- seq(from = 1, to = 10, by =2))

(vector.by3 <- seq(1, 10, 3))

# Para repetir un n�mero o un vector un determinado n�mero de ocasiones utilizamos rep

rep(5, times = 6)


# Observa que hace el siguiente comando con los vectores a y b

rep(a, 2)
rep(b, 3)

# Reciclaje, al hacer operaciones entre vectores, R repetir� los valores del vector, hasta alcanzar la dimensi�n requerida

c(1, 2) + c(7, 8, 9, 10)

# Existen varias operaciones entre vectores, intenta probar algunas de las siguientes:

a + b     
a - b     
a*b
a/b
a^2
a1 <- a*0.5 + b^2
a1[1]
