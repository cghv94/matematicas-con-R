# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Taller III 2020-1
# Profesor: Arturo Mérida Monroy
# Adjunto: Cesar Hernández
# PRÁCTICA 4: MATRICES EN R

# Borrar objetos y variables
rm(list=ls())


# MEDIDAS DE TENDENCIA CENTRAL Y DE DISPERSIÓN EN R


# MEDIDAS DE TENDENCIA CENTRAL EN R


# Creamos un vector de datos

a<-1:10

# Valor mínimo de a

mina<-min(a)
mina

# Valor máximo de a

maxa<-max(a)
maxa

# Número de observaciones en a

observacionesa<-length(a)
observacionesa

# Mediana de a

medianaa<-median(a)
medianaa

# Sumatoria de los valores de a

sumaa<-sum(a)
sumaa

# Media aritmética (promedio) de a

mediaa<-sumaa/observacionesa
mediaa


# MATRICES EN R


# Para crear una matriz cuadrada de 2x2

# Creamos dos vectores de datos

b<-c(1,2)
c<-c(3,4)
d<-matrix(c(b,c),nrow=2)
show(d)

# Para crear una matriz cuadrada de 3x3

# Creamos tres vectores de datos

e<-c(1,4,7)
f<-c(2,5,8)
g<-c(3,6,9)

h<-matrix(c(e,f,g),nrow=3)
show(h)

# Para crear una matriz de datos de 3x2

# Creamos dos vectores de datos

i<-c(1,2,3)
j<-c(4,5,6)
k<-matrix(c(i,j),nrow=3)
colnames(k)=c("I","J")
rownames(k)=c("primero","segundo","tercero")
show(k)

data.frame(d)
data.frame(h)
data.frame(k)