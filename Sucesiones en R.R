# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2020-1
# Profesor: Arturo Mérida Monroy
# Adjunto: Cesar Hernández
# PRÁCTICA 9: SUCESIONES EN R


# Creando una secuencia y conociendo la función seq

seq(from = 0, to = 10, by =.1)
seq(from = 0, to = 10, length.out = 50)

# También se puede

seq(0, 10, by =.1)
seq(0, 10, .1)

# Para utilizar la función length.out, esta se debe escribir

seq(0, 10, length.out = 50)

# Podemos hacer una secuencia en orden descendente

seq(10, 0, -1)
seq(10, 0, length.out = 50)

# También podemos hacer secuencias negativas
seq(-10, 0, 2)
seq(-10, 0, length.out = 10)

# E invertir esas secuencias negativas
seq(0, -10, -2)
seq(0, -10, length.out = 10)

# Podemos usar el paradigma orientado a objetos y la función seq

a<-5
b<-10
seq(a,b)
c<-seq(a,b)
c
seq(0, pi, (1/pi))

# Para una sucesión geométrica n^2

2^seq(0, 10, 1)
2^seq(0, 10, 2)

# Para una sucesión geométrica n^3

3^seq(0, 10, 1)
3^seq(0, 10, 2)
3^seq(10, 0, -2)
3^seq(10, 0, length.out = 5)

# También podemos operar el signo de nuestras secuencias

-(3^seq(0, 10, 2))
-(3^seq(10, 0, -2))
-(3^seq(10, 0, length.out = 5))

# Es posible hacer secuencias de tiempo

seq(ISOdate(2000,1,1), by = "month", length.out = 12)
seq(ISOdate(2000,1,1), by = "day", length.out = 31)
seq(ISOdate(2000,1,1), by = "hour", length.out = 24)

# Y secuencias de tiempo entre periodos

seq(ISOdate(1990,1,1), ISOdate(2000,1,1), "year")
seq(ISOdate(1999,1,1), ISOdate(2000,1,1), "quarter")
seq(ISOdate(1999,1,1), ISOdate(2000,12,1), "month")

# Creando un objeto fechas

fechas<-seq(ISOdate(2000,1,1), ISOdate(2000,1,31), "day")
class(fechas)

# Objetos tipo POSIXlt y POSIXct

Sys.time()
Sys.timezone()
OlsonNames()
as.POSIXlt(Sys.time(), "GMT")
as.POSIXlt(Sys.time(), "America/Mexico_City")
as.POSIXlt(Sys.time(), "America/New_York")

# Generarndo números con la función sample

x<-1:10
sample(x)
sample(x, size = 5, replace = F)
sample(x, size = 5, replace = T)

# Creando un vector p para asignar la probabilidad de que ocurra nuestro evento

p<-c(0.01,0.01,0.01,0.01,0.01,0.1,0.1,0.1,0.1,0.55) 
sum(p)
sample(x, 5, replace = T, prob = p)

# También se puede escribir como sigue

sample(1:10, 5, T, p)

# Usando la función rep

rep(1, each = 2)

# También se puede

rep(1, 5)

# Ejemplos disponibles en R Documentation

rep(1:4, 2)

rep(1:4, each = 2)       # not the same.

rep(1:4, c(2,2,2,2))     # same as second.

rep(1:4, c(2,1,2,1))

rep(1:4, each = 2, len = 4)    # first 4 only.

rep(1:4, each = 2, len = 10)   # 8 integers plus two recycled 1's.

rep(1:4, each = 2, times = 3)  # length 24, 3 complete replications

# Para ver la información sobre la función rep y los ejemplos anteriores

?rep