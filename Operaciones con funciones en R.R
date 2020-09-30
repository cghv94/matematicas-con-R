# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2020-1
# Profesor: Arturo Mérida Monroy
# Adjunto: Cesar Hernández
# PRÁCTICA 5: OPERACIONES CON FUNCIONES EN R

# Borrar objetos y variables
rm(list=ls())

# Creamos un dominio para nuestras funciones

x<-(-5:5)

# Creamos las funciones f(x) y g(x)

fx<-5*x+2
gx<-3*x-1

fx
gx
plot(x,fx, type="o")
plot(x,gx, type="o")

# Suma

fmasg<-fx+gx

fmasg

plot(x,fmasg, type="o")

# Resta

fmenosg<-fx-gx

fmenosg

plot(x,fmenosg, type="o")

# Multiplicación

fporg<-fx*gx

fporg

plot(x,fporg, type="o")

# División

fentreg<-fx/gx

fentreg

plot(x,fentreg, type="o")

secuencia<- seq(-2, 2, 0.05)
secuencia
y1 <- pnorm(secuencia)
y2 <- pnorm(secuencia, 1, 1)
y1
y2
plot(secuencia, y1, type = "l", col = "red")
plot(secuencia, y2, type = "l", col = "green")

dffx<-data.frame(x,fx)
dfgx<-data.frame(x,gx)

p<-ggplot() + geom_line(data = dffx, aes(x = x, y = fx), color = "blue") +
  geom_line(data = dfgx, aes(x = x, y = gx), color = "red") + xlab("x") +
  ylab("y")
print(p)