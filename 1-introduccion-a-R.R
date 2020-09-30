# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO

# Facultad de Economía

# Matemáticas I 2020-1

# Profesor: Arturo Mérida Monroy

# Adjunto: Cesar Hernández


# PÁCTICA 1: Introducción a R


# Borrar objetos y variables
rm(list=ls())


# OPERACIONES BÁSICAS

# Suma
1+2
# Resta
1-2
# Multiplicación
1*2
# División
1/2
# División entera
10%%3
# Potencia
1^2
# Raiz
2^(1/2)
sqrt(2)
# Exponencial
exp(1)
# Logaritmo natural
log(1)
# Seno
sin(0)
# Coseno
cos(pi)
# Tangente
tan(pi)
# Valor absoluto
abs(-5)
# Redondear
round(pi,4)

# Creando objetos en R

objeto1<-0.5
objeto2<-TRUE
objeto3<-"hola"
objeto4<-1+5i

# Mostrando los objetos objetos creados

print(objeto1)
objeto2
show(objeto3)
objeto4

# Tipos de objetos en R

class(objeto1)
class(objeto2)
class(objeto3)
class(objeto4)

# Vectores en R

vector<-c(1,2,3,4)
vector

perro<-c("p","e","r","r","o")
show(perro)

# Crear un vector en secuencia de 1 a 10
a<-11:20
a

# Encontrar el primer elemento del vector "a"
a[1]

# Encontrar el décimo elemento del vector "a"
a[10]


# OPERACIONES CON VECTORES Y ESCALARES

# Sumar a+1
b<-a+1
b

# Restar a-1
c<-a-1
c

# Multiplicar a*2
d<-a*2
d

# Dividir a/2
e<-a/2
e

# Potencia al cuadrado a^2
f<-a^2
f

# Raíz cuadrada a^(1/2)
g<-a^(1/2)
g

# También
h<-sqrt(a)
h
