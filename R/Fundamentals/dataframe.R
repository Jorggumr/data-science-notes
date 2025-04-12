#---------DATAFRAME---------
# Un dataframe es una estructura de datos similar a una tabla en R. Es una lista de vectores de igual longitud.

# Crear un dataframe
df <- data.frame(
  name = c("John", "Jane", "Jim", "Jill"),
  age = c(23, 25, 22, 24),
  height = c(180, 170, 175, 160),
  weight = c(75, 65, 70, 55)
)

# Imprimir el dataframe
print(df)

# Cambiar los nombres de las columnas
colnames(df) <- c("NAME",
                  "AGE",
                  "HEIGHT",
                  "WEIGHT")
print(df)

# Acceder a los elementos del dataframe
df[1, 2]
df[1, "AGE"]

# Acceder a mas de un elemento del dataframe
df[1:2, c("AGE", "HEIGHT")]
df[c(1, 3), c("AGE", "HEIGHT")]

# Acceder a una columna
df$AGE

# Ordenar el dataframe por una columna
#   Pasos:
#     - 1. Guardar los Indices ordenados -->[ indices <- order(dataframe$colummn) ]
#     - 2. Seleccionar el dataframe con los indices ordenados --> [ dataframe[indices,] ]

desc <- order(df$AGE, decreasing = TRUE) # ordenar de forma descendente (Mayor a menor)
print(df[desc,])

asc <- order(df$AGE, decreasing = FALSE) # ordenar de forma ascendente (Menor a mayor) -> order(df$AGE)
print(df[asc,])

df_ordenado <- df[asc,] # guardar el dataframe ordenado
