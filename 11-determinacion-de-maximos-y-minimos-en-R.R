# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2021-1
# Profesor: Cesar Hernández
# PRÁCTICA : Determinación de máximos y mínimos en R

library(Deriv)
library(ggplot2)
library(dplyr)

# Creamos nuestro dominio de x
x<-seq(-5,5,0.1)

# Creamos nuestra función f
f<-function(x) (x^2)+5
f

# Derivamos nuestra función f
fprima<-Deriv(f)
fprima

# Sustituimos x en f y fprima, obtenemos fx y fprimax
fx<-f(x)
fx
fprimax<-fprima(x)
fprimax

# Graficamos fx y fprimax
plot(x,fx,type = "o")
plot(x,fprimax,type = "o")

# Creamos una tabla con los valores de x, fx y fprimax
tf<-data.frame(x,fx,fprimax)

# Graficamos fx y fprimax en un solo plano
tf%>%ggplot() + 
  geom_line(data = tf, aes(x = x, y = fx), color= "green") + 
  geom_line(data = tf, aes(x = x, y = fprimax), color = "blue") +
  xlab("x") +
  ylab("y")

# Criterio de la primera derivada, igualamos fprima a cero y despejamos "x"
fprima

# Sutituimos el valor de "x" en f, para encontrar el punto crítico
f(0)

# Determinamos si es un máximo o mínimo con el criterio de la segunda derivada
fbiprima<-Deriv(fprima)
fbiprima # Si el resultado es mayor a cero, el punto crítico es un mínimo

# Revisamos el resumen estadístico
summary(tf)
