# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2021-1
# Profesor: Cesar Hernández
# PRÁCTICA 8: ACERCAMIENTO INTUITIVO A LIMITES Y CONTINUIDAD EN R


library(dplyr)
library(ggplot2)
library(gganimate)
library(png)


# Límite de "fa" cuando "a" tiende a 6

a<-seq(0, 10, 0.1)
fa<-((a^2)+a-6)/(a-2)
tabladea<-data.frame(a,fa)

tabladea %>%
  ggplot() +
  geom_line(aes(x=a, y=fa), color="red") +
  geom_vline(xintercept = 6) +
  scale_color_viridis_d() +
  ggtitle("Límites") +
  xlab("Dominio de A") +
  ylab("Contradominio") +
  transition_reveal(a)


# Límite de "fb" cuando "b" tiende a -6

b<-seq(-10, 0, 0.1)
fb<-((b^2)-b+6)/(b-2)
tabladeb<-data.frame(b,fb)

tabladeb %>%
  ggplot() +
  geom_line(aes(x=b, y=fb), color="blue") +
  geom_vline(xintercept = (-6)) +
  scale_color_viridis_d() +
  ggtitle("Límites") +
  xlab("Dominio de B") +
  ylab("Contradominio") +
  transition_reveal(b)


# Límite de "fc" cuando "c" tiende a -4

c<-seq(-10, 0, 0.1)
fc<-((c^2)+(5*c)+4)/((c^2)+(3*c)-4)
tabladec<-data.frame(c,fc)

tabladec %>%
  ggplot() +
  geom_line(aes(x=c, y=fc), color="green") +
  geom_vline(xintercept = (-4)) +
  scale_color_viridis_d() +
  ggtitle("Límites") +
  xlab("Dominio de C") +
  ylab("Contradominio") +
  transition_reveal(c)


# Límite de "fd" cuando "d" tiende a 4

d<-seq(0, 10, 0.1)
fd<-((d^2)-(4*d))/((d^2)-(3*d)-4)
tabladed<-data.frame(d,fd)

tabladed %>%
  ggplot() +
  geom_line(aes(x=d, y=fd), color="purple") +
  geom_vline(xintercept = 4) +
  scale_color_viridis_d() +
  ggtitle("Límites") +
  xlab("Dominio de D") +
  ylab("Contradominio") +
  transition_reveal(d)


# Límite de "fe" cuando "e" tiende a 1

e<-seq(-5, 5, 0.1)
fe<-((e^3)-1)/((e^2)+1)
tabladee<-data.frame(e,fe)

tabladee %>%
  ggplot() +
  geom_line(aes(x=e, y=fe), color="orange") +
  geom_vline(xintercept = 1) +
  scale_color_viridis_d() +
  ggtitle("Límites") +
  xlab("Dominio de E") +
  ylab("Contradominio") +
  transition_reveal(e)

tabladetodo<-data.frame(a,fa,b,fb,c,fc,d,fd,e,fe)

tabladetodo %>%
  ggplot() +
  geom_line(aes(x=a, y=fa), color="red") +
  geom_vline(xintercept = 6, color="red") +
  geom_line(aes(x=b, y=fb), color="blue") +
  geom_vline(xintercept = (-6), color="blue") +
  geom_line(aes(x=c, y=fc), color="green") +
  geom_vline(xintercept = (-4), color="green") +
  geom_line(aes(x=d, y=fd), color="purple") +
  geom_vline(xintercept = 4, color="purple") +
  geom_line(aes(x=e, y=fe), color="orange") +
  geom_vline(xintercept = 1, color="orange") +
  scale_color_viridis_d() +
  ggtitle("Límites") +
  xlab("Eje de x") +
  ylab("Eje de y") +
  transition_reveal(a)
