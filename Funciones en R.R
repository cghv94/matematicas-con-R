# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2020-1
# Profesor: Arturo Mérida Monroy
# Adjunto: Cesar Hernández
# PRÁCTICA 6: FUNCIONES EN R

# Borrar objetos y variables
rm(list=ls())


# USANDO LA AYUDA DE R

# Ejemplo: para saber cuáles son las palabras reservadas

# Si no se conoce la función

help.search( "reserved") 

# Si se conoce la función y el paquete está activo

?reserved

# También se puede usar

help(reserved)


# INSTLACIÓN DE PAQUETES (se requiere conexión a internet)

# Si el paquete no ha sido instalado, la instalación se puede hacer como sigue:

# install.packages("nombre")

# Para activar un paquete

# library("nombre")

# Ejemplo:

install.packages("ggplot2")

library(ggplot2)


# Para ver todas las funciones en este paquete
lsf.str("package:ggplot2")


# Haciendo funciones con R


# Si a > 0 imprimir "positivo"

a<-3
if (a>0){
  print("positivo")
}

# Si b > 0 imprimir "positivo", de otro modo, imprimir "negativo"

b<-(-5)
if (b>0){
  print("positivo")
} else {
  print("negativo")
}

# Si c > 0 imprimir "positivo", si c < 0 imprimir "negativo", 
#de otro modo, imprimir "cero"

c<-0
if (c>0){
  print("positivo")
} else if (c<0) {
  print("negativo")
} else {
  print("cero")
}

# Se puede escribir en una sola sentencia

d<-0
if (d>0) print("positivo") else if (d<0) print("negativo") else print("cero")

# Clasificando y filtrando datos

iris
names(iris)
length(iris)
summary(iris)
length(iris$Sepal.Length)
select(iris,Sepal.Length)
select(iris,-Sepal.Length)
filter(iris,Species=="setosa")
mean(iris$Sepal.Width)
filter(iris,Sepal.Width>(mean(iris$Sepal.Width)))
filter(iris,Sepal.Width>(mean(iris$Sepal.Width))&Species=="setosa")
filter(iris,Sepal.Width>(mean(iris$Sepal.Width)),Species=="setosa",Sepal.Length>5)
iris%>%filter(Sepal.Width>(mean(iris$Sepal.Width)),Species=="setosa",Sepal.Length>5)
