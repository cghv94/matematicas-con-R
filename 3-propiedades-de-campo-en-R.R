# UNIVERSIDAD NACIONAL AUTÓNOMA DE MÉXICO
# Facultad de Economía
# Matemáticas I 2021-1
# Profesor: Cesar Hernández
# PÁCTICA 3: PROPIEDADES DE CAMPO EN R


# Borrar objetos y variables
rm(list=ls())


# CREAMOS UN CONJUNTO DE DATOS

# Conjuntos a, b, c
a<-1:10
b<-5:15
c<-10:20

a
b
c

# PROPIEDADES DE CAMPO


# CONMUTATIVIDAD: AUB=BUA

# AUB
aUb<-union(a,b)
# BUA
bUa<-union(b,a)

# AUB=BUA 
aUb
bUa
Conmutatividad1<-setequal(aUb,bUa)
Conmutatividad1

# AUC
aUc<-union(a,c)
# CUA
cUa<-union(c,a)

# AUC=CUA
aUc
cUa
Conmutatividad2<-setequal(aUc,aUc)
Conmutatividad2

# BUC
bUc<-union(b,c)
# CUB
cUb<-union(c,b)

# BUC=CUB
bUc
cUb
Conmutatividad3<-setequal(bUc,cUb)
Conmutatividad3


# CONMUTATIVIDAD: AIB=BIA

# AIB
aIb<-intersect(a,b)
# BIA
bIa<-intersect(b,a)

# AIB=BIA
aIb
bIa
Conmutatividad4<-setequal(aIb,bIa)
Conmutatividad4

# AIC
aIc<-intersect(a,c)
# CIA
cIa<-intersect(c,a)

# AIC=CIA
aIc
cIa
Conmutatividad5<-setequal(aIc,cIa)
Conmutatividad5

# BIC
bIc<-intersect(b,c)
# CIB
cIb<-intersect(c,b)

# BIC=CIB
bIc
cIb
Conmutatividad6<-setequal(bIc,cIb)
Conmutatividad6


# ASOCIATIVIDAD: AU(BUC)=BU(AUC), AI(BIC)=BI(AIC)

# AU(BUC)
aUbUc<-union(bUc,a)
# BU(AUC)
bUaUc<-union(aUc,b)

# AU(BUC)=BU(AUC)
aUbUc
bUaUc
Asociatividad1<-setequal(aUbUc,bUaUc)
Asociatividad1

# AI(BIC)
aIbIc<-intersect(a,bIc)

# BI(AIC)
bIaIc<-intersect(b,aIc)

# AI(BIC)=BI(AIC)
aIbIc
bIaIc
Asociatividad2<-setequal(aIbIc,bIaIc)
Asociatividad2


# DISTRIBUTIVIDAD: AI(BUC)=(AIB)U(AIC), AU(BIC)=(AUB)I(AUC)

# AI(BUC)
aIbUc<-intersect(a,bUc)

# (AIB)U(AIC)
aIbUaIc<-union(aIb,aIc)

#  AI(BUC)=(AIB)U(AIC)
Distributividad1<-setequal(aIbUc,aIbUaIc)
Distributividad1

# AU(BIC)
aUbIc<-union(a,bIc)

# (AUB)I(AUC)
aUbIaUc<-intersect(aUb,aUc)

# AU(BIC)=(AUB)I(AUC)
aUbIc
aUbIaUc
Distributividad2<-setequal(aUbIc,aUbIaUc)
Distributividad2
