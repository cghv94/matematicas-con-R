# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2020-1
# Profesor: Arturo Mérida Monroy
# Adjunto: Cesar Hernández
# PRÁCTICA 7: ASÍNTOTAS EN R

library("dplyr")
library("ggplot2")
library("gganimate")
library("png")

x<-seq(-1.5, 1.5, 0.1)
x
fx<-(x^2)+3
gx<-(x^2)+1
fentregx<-fx/gx
fentregx
dfx<-data.frame(x,fx,gx,fentregx)

plot(x,fx,type = "o")
plot(x,gx,type = "o")
plot(x,fentregx,type = "o")


mx<-ggplot() + 
  geom_polygon(data = dfx, aes(x = x, y = fx), fill = "blue") +
  xlab("x") +
  ylab("y")
print(mx)

mx<-ggplot() + 
  geom_polygon(data = dfx, aes(x = x, y = fx), fill = "blue") +
  geom_polygon( data = dfx, aes(x = x, y = gx), fill= "red") + 
  xlab("x") +
  ylab("y")
print(mx)

nx<-ggplot() + 
  geom_polygon( data = dfx, aes(x = x, y = fentregx), fill= "green") + 
  geom_line(data = dfx, aes(x = x, y = fx), color = "blue") +
  geom_line(data = dfx, aes(x = x, y = gx), color = "red") + 
  xlab("x") +
  ylab("y")
print(nx)

ox<-ggplot() + 
  geom_line( data = dfx, aes(x = x, y = fentregx), color= "green") + 
  geom_line(data = dfx, aes(x = x, y = fx), color = "blue") +
  geom_line(data = dfx, aes(x = x, y = gx), color = "red") + 
  xlab("x") +
  ylab("y") + 
  geom_vline(xintercept = -1)
  print(ox)

px<-ggplot() + 
  geom_line( data = dfx, aes(x = x, y = fentregx), color= "green") + 
  geom_line(data = dfx, aes(x = x, y = fx), color = "blue") +
  geom_line(data = dfx, aes(x = x, y = gx), color = "red") + 
  xlab("x") +
  ylab("y") + 
  geom_vline(xintercept = -1) +
  geom_vline(xintercept = 1)
print(px)

qx<-ggplot() + geom_line( data = dfx, aes(x = x, y = fentregx), color = "green") + 
  geom_line(data = dfx, aes(x = x, y = fx), color = "blue") +
  geom_line(data = dfx, aes(x = x, y = gx), color = "red") + 
  xlab("x") +
  ylab("y") + 
  geom_vline(xintercept = -1) + 
  geom_vline(xintercept = 1) + 
  geom_hline(yintercept = 2)
print(qx)

rx<-ggplot() + geom_line( data = dfx, aes(x = x, y = fentregx), color = "green") + 
  geom_line(data = dfx, aes(x = x, y = fx), color = "blue") +
  geom_line(data = dfx, aes(x = x, y = gx), color = "red") + 
  xlab("x") +
  ylab("y") + 
  geom_vline(xintercept = -1) + 
  geom_vline(xintercept = 1) + 
  geom_hline(yintercept = 2) + 
  geom_abline(intercept = 3)
print(rx)

sx<-ggplot() + geom_line( data = dfx, aes(x = x, y = fentregx), color = "green") + 
  geom_line(data = dfx, aes(x = x, y = fx), color = "blue") +
  geom_line(data = dfx, aes(x = x, y = gx), color = "red") + 
  xlab("x") +
  ylab("y") + 
  geom_vline(xintercept = -1) + 
  geom_vline(xintercept = 1) + 
  geom_hline(yintercept = 2) + 
  geom_abline(intercept = 3) + 
  geom_abline(intercept = 3,slope = 3,color="yellow")
print(sx)
