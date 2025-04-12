# R notes
#nota: R es un lenguaje Fuertemente tipado

#---------VARIABLES----------------
# Declaración de variables
x <- 1
y <- 2
z <- 3
var <- "Hola mundo"
print(var)



#----------VECTORES----------------
vector <- c(1,2,3,4,5)


column <- c(1,2,3,4,5)
print(column)

columnnames <- c("uno", "dos", "tres", "cuatro", "cinco")

# dividir entre row2
column/2

# longitud de la columna
length(column)

# la media de la columna
mean(column)

# columnar con condiciones
baja <- column <= 4
columnnames[baja]

# elemento en la posición 3
column[3]


#----------MATRICES----------------
column1 <- c(1,2,3)
column2 <- c(4,5,6)
column3 <- c(7,8,9)
matriz <- matrix(c(column1, column2, column3), nrow=3, ncol=3)

#dar nombres a las columnas
colnames(matriz) <- c("column1", "column2", "column3")
#dar nombres a las filas
rownames(matriz) <- c("row1", "row2", "row3")

print(matriz)

#Nota: La suma de matrices se hace elemento a elemento
#      la multiplicación de matrices (álgebra lineal) se hace con %*%
#      la multiplicación de matrices de elemento a elemento se hace con con *
#suma
matriz + matriz
print(matriz)

#multiplicación (algebra lineal)
matriz %*% matriz
print(matriz)

#multiplicación (elemento a elemento)
matriz * matriz
print(matriz)

#elemento en la posición 2,2
matriz[2,2]
matriz['row2', 'column2']

#solo la columna 3
matriz[,3]
matriz[,'column3']

#solo la fila 2
matriz[2,]
matriz['row2',]

#-----------FACTORES/VARIABLES CATEGÓRICOS----------------
# Los factores son una estructura de datos para manejar variables categóricas
# Variables categóricas: son datos que toman una cantidad finita de valores
#                        Ejemplo: edad, género, color, dias de la semana, etc.

# Crear un vector de variables categóricas / registro de dias asistidos
dias <- c("lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo", "lunes", "domingo")
# Convertir el vector en un factor
dias_f <- factor(dias)
# Mostrar el factor
plot(dias_f)
# Mostrar los niveles del factor
levels(dias_f)

# modificar la funcion factor() / LIMPIEZA DE DATOS
dias_mod <- factor(dias,
                   levels=c("lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"),
                   labels=c("L", "M", "X", "J", "V", "S", "D"))
plot(dias_mod)

# modificar y dar ordenar los niveles del factor
dias_ord <- factor(dias,
                   ordered=TRUE,
                   levels=c("lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"),
                   labels=c("L", "M", "X", "J", "V", "S", "D"))
dias_ord
plot(dias_ord)