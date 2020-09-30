# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2021-1
# Profesor: Cesar Hernández
# PÁCTICA 2: CONJUNTOS EN R


# Borrar objetos y variables
rm(list=ls())

# OPERACIONES CON CONJUNTOS

# Creando un vector en R
i<-1:15
i
j<-10:25
j

# Unión de los vectores "i", "j"
k<-union(i,j)
k

# Intersección de los vectores "i", "j"
l<-intersect(i,j)
l

# Diferencia entre los vectores "i", "j"
m<-setdiff(i,j)
m

# Diferencia entre los vectores "j", "i"
n<-setdiff(j,i)
n

# Comprobar si los vectores "i", "j" son iguales
o<-setequal(i,j)
o


# LEYES DE LOS CONJUNTOS


# Conjunto universo
u<-1:20

# Conjunto vacío
v<-c()

# Conjuntos x, y, z
x<-1:10
y<-5:15
z<-10:20

u
x
y
z
v

# IDENTIDAD

# La unión de un conjunto cualquiera con el conjunto vacío es el mismo conjunto
xUv<-union(x,v)
# xUv=x
xUv
x
Identidad1=setequal(xUv,x)
Identidad1

# La intersección de un conjunto cualquiera con el conjunto universo es el mismo conjunto
xIu<-intersect(x,u)
# xIu=x
xIu
x
Identidad2<-setequal(xIu,x)
Identidad2

# DOMINACIÓN

# La unión de un conjunto cualquiera con el conjunto universo, es el conjunto universo
xUu<-union(x,u)
# xUu=u
xUu
u
Dominación1<-setequal(xUu,u)
Dominación1

# La intersección de un conjunto cualquiera con el conjunto vacío, es el conjunto vacío
xIv<-intersect(x, v)
# xIv=v
xIv
v
Dominación2<-setequal(xIv,v)
Dominación2

# IDEMPOTENCIA

# La unión de un conjunto cualquiera consigo mismo, es el mismo conjunto
xUx<-union(x,x)
# xUx=x
xUx
x
Idempotencia1<-setequal(xUx,x)
Idempotencia1

# La intersección de un conjunto cualquiera consigo mismo, es el mismo conjunto
xIx<-intersect(x,x)
# xIx=x
xIx
x
Idempotencia2<-setequal(xIx,x)
Idempotencia2

# COMPLEMENTARIEDAD

# La negación de la negación de un conjunto cualquiera, es el mismo conjunto
xc<-setdiff(u,x)
xcc<-setdiff(u,xc)
# xC(complemento)=x: xcc=x
xcc
x
Complementariedad<-setequal(xcc,x)
Complementariedad
