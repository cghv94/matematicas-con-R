# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2021-1
# Profesor: Cesar Hernández
# PRÁCTICA : Derivadas en R


f<-expression(x^2+3*x)
f1<-D(f,"x")
f1

library(Deriv)

g<-function(x) x^2
g1<-Deriv(g)
g1

x<-seq(1,3,0.1)

gx<-g(x)
gx
g1x<-g1(x)
g1x

plot(x,gx)
plot(x,g1x)

g2<-Deriv(g1)
g2

g2x<-g2(x)
g2x

library(ggplot2)
library(dplyr)

df<-data.frame(x,gx,g1x)

df%>%ggplot() + 
  geom_line(data = df, aes(x = x, y = gx), color= "green") + 
  geom_line(data = df, aes(x = x, y = g1x), color = "blue") +
  xlab("x") +
  ylab("y") + 
  geom_vline(xintercept = g2x, color= "red")
