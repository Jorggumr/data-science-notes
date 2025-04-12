#---------LISTAS---------
# Las listas guardan diferentes tipos de objetos en un mismo objeto R.
# Ejemplo de uso: Regresión Lineal, donde se guardan los coeficientes, errores, etc.

vector <- c(1, 2, 3, 4, 5)
matrix <- matrix(c(c(1,2,3),
                   c(4,5,6),
                   c(7,8,9)), nrow = 3, ncol = 3)
df <- data.frame(
  name = c("John", "Jane", "Jim", "Jill"),
  age = c(23, 25, 22, 24),
  height = c(180, 170, 175, 160),
  weight = c(75, 65, 70, 55)
)
# Crear una lista
mylist <- list(vector, matrix, df)
mylist

# Cambiar los nombres de los elementos de la lista
names(mylist) <- c("vector", "matrix", "df")
print(mylist)

# Acceder a los elementos de la lista
mylist[[1]] # acceder al vector
mylist[["matrix"]] # acceder a la matriz

# Acceder a los elementos de los elementos(vector, ...) de la lista
mylist[[1]][2] # acceder [2] del vector
mylist[["matrix"]][2, 2] # acceder a la posición [2,2] de la matriz
mylist[["df"]][, "age"] # acceder a la columna "age" del dataframe

# Cambiar elemento de un elemento(vector, ...) de la lista
mylist[[1]][2] <- 99 # cambiar el valor de la posición [2] del vector
print(mylist)

# "eliminar"/Asignar elemento(vector, ...) de la lista
mylist[[1]] <- NULL # eliminar el vector
print(mylist)