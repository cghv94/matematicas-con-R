# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2021-1
# Profesor: Cesar Hernández
# PRÁCTICA 4: GRÁFICAS DE FUNCIONES EN R

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


# TIPOS DE FUNCIONES
help(plot)

# Definimos un vector "x"
x<-(-5:5)

# Graficamos "x"
plot(x)

# Función constante
fx<-rep(3, 11)
fdex<-data.frame(x,fx)
fdex
plot(x,fx)

# Función lineal
gx<-3*x
gdex<-data.frame(x,gx)
gdex
plot(x,gx, type="l")

# Función idetidad
hx<-x
hdex<-data.frame(x,hx)
hdex
plot(x,hx, type="o")

# Función cuadrática
ix<-x^2
idex<-data.frame(x,ix)
idex
plot(x,ix, col="61",type="o")

# Función cúbica
jx<-x^3
jdex<-data.frame(x,jx)
jdex
plot(x,jx, main="Función cúbica", xlab="Eje x", ylab="Eje y", col="green", 
     type="o")

# Función racional
kx<-1/x
kdex<-data.frame(x,kx)
kdex
plot(x,kx, main="Función racional", sub="Fuente: elaboración propia", 
     xlab="Eje x", ylab="Eje y", col="64", type="o")

# Función logarítmica
lx<-log(x)
ldex<-data.frame(x,lx)
ldex
plot(x,lx, main="Función logarítmica", sub="Fuente: elaboración propia", 
     xlab="Eje x", ylab="Eje y", col="50", type="o")

# Función exponencial
mx<-2^x
mdex<-data.frame(x,mx)
mdex
plot(x,mx, main="Función exponencial", sub="Fuente: elaboración propia", 
     xlab="Eje x", ylab="Eje y",col="52", type="o")

# Data frame de resultados

tododex<-data.frame(x,fx,gx,hx,ix,jx,kx,lx,mx)
tododex

# Ejemplo de gráfica de dispersión

grafica<-plot(kx,mx, type="o")
grafica

# Datos disponibles en R

mtcars
Titanic
