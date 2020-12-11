library(Inflect)
directory<-"/Users/namccrac/IBMG/Mosley Lab/TPP Analysis Project/Program Development"
Temperature<-c(35,45,50,55,60,75)
Rsq<-0.95
NumSD<-2
NReps<-3
Inflect(directory,Temperature,Rsq,NumSD,NReps)
