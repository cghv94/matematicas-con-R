# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Taller III 2021-1
# Profesor: Cesar Hernández
# PRÁCTICA 5: OPERACIONES CON MATRICES EN R

# Borrar objetos y variables
rm(list=ls())

# OPERACIONES CON MATRICES EN R

a<-1:6

# Creando una matriz con cbind

m1<-cbind(a,a,a,a,a,a)
m1

# Creando una matriz con rbind

m2<-rbind(a,a,a,a,a,a)
m2

# Suma de matrices

suma_m<-m1+m2
suma_m

# Resta de matrices

resta_m<-m1-m2
resta_m

# Producto matricial

prod_m<-m1%*%m2
prod_m

# Preguntar si nuestros objetos son matrices

is.matrix(m1)
is.matrix(m2)
is.matrix(suma_m)
is.matrix(resta_m)
is.matrix(prod_m)

# Dimensiones de la matriz

dim(m1)
dim(m2)

# Transponer una matriz

tm1<-t(m1)
tm1

tm2<-t(m2)
tm2

# Obtener el determinante de una matriz

dem1<-det(m1)
dem1

dem2<<-det(m2)
dem2

# Obtener la matriz inversa

im1<-solve(m1)
im1

im2<-solve(m2)
im2

# Dianogal de la matriz

dim1<-diag(m1)
dim1

dim2<-diag(m2)
dim2

# Suma de las columnas de una matriz

sumcolm1<-colSums(m1)
sumcolm1

sumcolm2<-colSums(m2)
sumcolm2

# Suma de los renglones de una matriz

sumren1<-rowSums(m1)
sumren1

sumren2<-rowSums(m2)
sumren2
