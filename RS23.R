
# DCA ---------------------------------------------------------------------


  # Definir los niveles de fertilización nitrogenada y el número de repeticiones
  fertilizacion <- c(0, 50, 100)  # Dosis de fertilización (kg/ha)
repeticiones <- 5  # Número de repeticiones

# Crear el diseño completamente al azar (DCA)
# Para 15 unidades experimentales (3 tratamientos x 5 repeticiones)
tratamientos <- rep(fertilizacion, each = repeticiones)
unidades_experimentales <- 1:length(tratamientos)  # Identificar las unidades experimentales

# Crear un marco de datos con los tratamientos y las unidades experimentales
dca <- data.frame(Unidad = unidades_experimentales, Fertilizacion = tratamientos)

# Mostrar
# Randomizar el orden de los tratamientos
set.seed(123)  # Fijar la semilla para la reproducibilidad
dca$Fertilizacion <- sample(dca$Fertilizacion)

# Mostrar el diseño experimental randomizado
print(dca)

# DBCA ---------------------------------------------------------------------
# Definir los factores
fertilizacion <- c(0, 50, 100)  # Dosis de fertilización nitrogenada (kg/ha)
cultivares <- c("Peruanita", "Canchan")  # Cultivares de papa

# Crear una combinación de todos los tratamientos
tratamientos <- expand.grid(Fertilizacion = fertilizacion, Cultivar = cultivares)

# Definir el número de bloques (repeticiones)
repeticiones <- 4

# Crear el diseño en bloques completamente al azar (DBCA)
diseño_dbca <- design.ab(rcbd, treatments=list(fertilizacion, cultivares), r=repeticiones, serie=2)

# Mostrar el diseño experimental
print(diseño_dbca$book)

# Graficar el diseño experimental
plot(diseño_dbca)




