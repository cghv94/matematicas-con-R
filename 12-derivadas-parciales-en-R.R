# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2020-1
# Profesor: Arturo Mérida Monroy
# Adjunto: Cesar Hernández
# PRÁCTICA : Derivadas parciales en R

library(Deriv)
library(ggplot2)
library(plot3D)
library(scatterplot3d)
library(grDevices)

# Obteniendo derivadas parciales

f <- function(x, y) x * y
Deriv(f)

# Obteniendo derivadas parciales de funciones trigonométricas

g <- function(x, y) sin(x) * cos(y)
Deriv(g)

# Derivando respecto de "x"

h <- function(x, y) x * y
Deriv(h,"x")

# Derivando respecto de "x"

i <- function(x, y) x * y
Deriv(i,"y")

# Derivando respecto de "y"

j <- function(x, y) sin(x) * cos(y)
Deriv(j,"x")

# Derivando respecto de "y"

k <- function(x, y) sin(x) * cos(y)
Deriv(k,"y")

# Sustituyendo valores para "x", "y" en la función derivada

l <- function(x, y) x * y
lprima <- Deriv(l)
lprima(3,4)

# Sustituyendo valores para "x", "y" en la función derivada

m <- function(x, y) sin(x) * cos(y)
mprima <- Deriv(m)
mprima(3,4)

# Graficando una función en 3D

n <- function(x, y) x * y
x <- seq(1,3,0.1)
y <- seq(1,3,0.1)
z <- n(x,y)

# Gráficas de densidad

df <- data.frame(x,y,z)

ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  geom_density_2d()

ggplot(df, aes(x = x, y = y) ) +
  stat_density_2d(aes(fill = ..level..), geom = "polygon")

ggplot(df, aes(x = x, y = y) ) +
  stat_density_2d(aes(fill = ..density..), geom = "raster", contour = FALSE)

ggplot(df, aes(x = x, y = y) ) +
  stat_density_2d(aes(fill = ..density..), geom = "raster", contour = FALSE) +
  scale_fill_distiller(palette= "Spectral", direction=1)

# Estimación bidimensional de la densidad del núcleo
#library(MASS)
#den3d <- kde2d(x, y)
#image(den3d)
#persp(den3d, box=FALSE)

# Graficando con points3D

points3D (x, y, z)

points3D (x, y, z, phi = 0, bty = "g")

points3D (x, y, z, phi = 5, bty = "b2")

points3D (x, y, z, phi = 0, bty = "g", colkey = F)

points3D (x, y, z, phi = 0, bty = "g", pch = 4)

points3D (x, y, z, phi = 0, bty = "g", pch = "$")

points3D (x, y, z, phi = 0, bty = "g", pch = 10, col = topo.colors(21))

# Graficando con scatter3D

scatter3D(x, y, z)

scatter3D(x, y, z,ticktype = "detailed")

scatter3D(x, y, z, phi = 0, bty = "g", type = "l", ticktype = "detailed", 
          lwd = 4, col = topo.colors(50))

scatter3D(x, y, z, phi = 0, bty = "b2", type = "b", ticktype = "detailed", 
          pch = 20, cex = c(0.5, 1, 1.5))

scatter3D(x, y, z, phi = 0, bty = "g",  type = "h", ticktype = "detailed")

# Graficando con scatterplot3D

scatterplot3d(x, y, z)

scatterplot3d(x, y, z, highlight.3d = TRUE, col.axis="blue", col.grid="lightblue", 
              main = "scatterplot3d - 1", pch=20)

scatterplot3d(x, y, z, highlight.3d = F, col.axis="green", col.grid="lightgreen",
              main = "scatterplot3d - 2", pch=1)

scatterplot3d(x, y, z, pch = 5, xlim = c(0, 4), ylim = c(0, 4), zlim = c(0, 11),
              main = "scatterplot3d - 3")

scatterplot3d(x, y, z, pch = 7, xlim = c(0, 4), ylim = c(0, 4), zlim = c(0, 11),
              color = rainbow(21), col.axis ="red", col.grid ="orange",
              main = "scatterplot3d - 4")
