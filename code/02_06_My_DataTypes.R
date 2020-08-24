# File:     02_06_My_DataTypes.R
# Project:  LearningR

# DATA TYPES ###############################################

# Numeric
n1<-15
n1
typeof(n1)

#charcater
c1<-"c"
c1
typeof(c1)

c2<-"lancuch znakowy"
c2
typeof(c2)

#logical
l1<-TRUE
l1
typeof(l1)


l2<-F
l2
typeof(l2)

# DATA STRUCTURES ##########################################
## vectors =========
v1<-c(1,2,3,4,5)
v1
is.vector(v1)
typeof(v1)

v2<-c("a","b","c")
v2
is.vector(v2)

v3<-c(TRUE,FALSE,T,F,T)
v3
is.vector(v3)

## Matrix ==================================================

m1<-matrix(c(T,F,F,T,T,T),nrow=2)
m1
m2<-matrix(c(T,F,F,T,T,T),ncol=2)
m2

m3<-matrix(c("a","b","c","d"), nrow = 2, byrow = T)
m3

## Array ===================================================

a1<-array(c(1:24),c(4,3,2))
a1

## Data Frame ==============================================

# Can combine vectors of the same length
vNumeric<-c(1,2,3)
vCharacter<-c("a","b","c")
vLogic<-c(T,F,T)

df1<-cbind(vNumeric,vCharacter,vLogic)
df1

df2<-as.data.frame(cbind(vNumeric,vCharacter,vLogic))
df2

## List ====================================================
o1<-c(1,2,3)
o2<-c("a","b","c","d")
o3<-c(T,T,F,T,F,F,T)

list1<-list(o1,o2,o3)
list1

list2<-list(o1,o2,o3,list1)
list2

# COERCING TYPES ###########################################

## Automatic Coercion ======================================

# Goes to "least restrictive" data typ

coerce1<-c(1,"b",TRUE)
typeof(coerce1)
coerce1

## Coerce Numeric to Integer ===============================

(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)















