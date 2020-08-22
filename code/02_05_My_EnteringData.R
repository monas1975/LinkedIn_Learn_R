# File:     02_05_My_EnteringData.R
# Project:  LearningR

# BASIC COMMANDS ###########################################
2+2

1:100
print("Hello world")

# ASSIGNING VALUES #########################################

# Individual values
a<-1
2->b #mozliwe ale nie wskazane
c<-d<-e<-3

#multiple values
x<-c(1,2,5,9)
x

# SEQUENCES ################################################
#creat sequential data
0:10
10:0
seq(10)
seq(0,19, by=2)
seq(100,0,by=-10)

#matematyka #########
y<-c(5,1,0,10)
z<-x+y
x*2
2^6
sqrt(64)
log(100)
log10(100)

# CLEAN UP #################################################

# Clear environment
rm(list = ls()) 

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
