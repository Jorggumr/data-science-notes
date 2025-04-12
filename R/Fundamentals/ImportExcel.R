#---------Leer archivo de Excel en R---------
#install.packages("readxl") # instalar el paquete readxl
library(readxl) # cargar el paquete readxl

# Leer archivo de Excel
path <- "docs/data.xlsx" # ruta del archivo
data <- read_excel(path) # leer el archivo
data

# mostrar las hojas del archivo
excel_sheets(path)


# Importar una hoja específica
data <- read_excel(path, sheet = "Sheet2") # leer la hoja 1
data

# Importar una hoja específica y celdas específicas
data <- read_excel(path, sheet = "Sheet2", range = "A1:B3") # leer la hoja 1
data

# tiblle a dataframe
data <-read_excel(path)
data_df <- as.data.frame(data)
data_df


