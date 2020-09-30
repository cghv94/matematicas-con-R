# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Taller III 2020-1
# Profesor: Arturo Mérida Monroy
# Adjunto: Cesar Hernández
# PRÁCTICA 6: VISIÓN GEOMÉTRICA DE VERTORES EN R

library(dplyr)
library(ggplot2)

# Vector cero

o<-0
p<-5
v<-o:p
plot(v,v,type = "l")
menosv<-(o:(-p))
plot(menosv,menosv,type = "l",axes = F)
axis(3)
axis(4)
box()

df1<-data.frame(v,menosv)

df1 %>%
  ggplot() +
  geom_line(aes(x=v, y=v), color="blue") +
  geom_line(aes(x=menosv, y=menosv), color="red")

df1 %>%
  ggplot() +
  geom_line(aes(x=v, y=v), color="blue") +
  geom_line(aes(x=menosv, y=menosv), color="red") +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0)


# Multiplicando por un escalar

t<-3
tv<-t*v
menostv<-(-t)*v
df2<-data.frame(tv,menostv)
df2 %>%
  ggplot() +
  geom_line(aes(x=tv, y=tv), color="green") +
  geom_line(aes(x=menostv, y=menostv), color="orange") +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0)

comparacion<-data.frame(tv,menostv,v,menosv)
comparacion %>%
  ggplot() +
  geom_line(aes(x=tv, y=tv), color="green") +
  geom_line(aes(x=menostv, y=menostv), color="orange") +
  geom_line(aes(x=v, y=v), color="blue") +
  geom_line(aes(x=menosv, y=menosv), color="red") +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0)

# Operaciones con vectores

p1<-4
p2<-16
v1<-seq(0,p1,0.5)
v2<-seq(0,p2,2)

dfv1v2<-data.frame(v1,v2)
dfv1v2 %>%
  ggplot() +
  geom_line(aes(x=v1, y=(-v1)), color="red") +
  geom_line(aes(x=v2, y=v2), color="blue") +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0)


# Creamos r1 y r2

r1<-v1+p2
r11<-v1-p2
r2<-v2+p1
r22<-v2-p1


dfr1r2<-data.frame(r1,r11,r2,r22,v1,v2)
dfr1r2 %>%
  ggplot() +
  geom_line(aes(x=r1, y=(-r11)), color="red") +
  geom_line(aes(x=r2, y=r22), color="blue") +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0)

grafica<- dfr1r2 %>%
  ggplot() +
  geom_line(aes(x=v1, y=(-v1)), color="red") +
  geom_line(aes(x=v2, y=v2), color="blue") +
  geom_line(aes(x=r1, y=(-r11)), color="red") +
  geom_line(aes(x=r2, y=r22), color="blue") +
  geom_vline(xintercept = 0) +
  geom_hline(yintercept = 0)

grafica

grafica + geom_abline(slope = .60)

# Dibujando un polígono

vx<-0:5
tvx<-vx+5
dfx<-data.frame(vx,tvx)
dfx %>%
  ggplot() +
  geom_line(aes(x=vx, y=vx), color="red") +
  geom_line(aes(x=vx, y=tvx), color="blue") +
  
vy<-rep(0,6)
tvy<-vy+5
dfxy<-data.frame(vx,vy,tvx,tvy)
dfxy %>%
  ggplot() +
  geom_line(aes(x=vy, y=vx), color="green") +
  geom_line(aes(x=tvy, y=tvx), color="purple")

dfxy %>%
  ggplot() +
  geom_line(aes(x=vx, y=vx), color="red") +
  geom_line(aes(x=vx, y=tvx), color="blue") +
  geom_line(aes(x=vy, y=vx), color="green") +
  geom_line(aes(x=tvy, y=tvx), color="purple")
