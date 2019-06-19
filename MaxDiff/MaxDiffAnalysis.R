library(Formula)
library(miscTools)
library(lattice)
library(maxLik)
library(mlogit)
library(MASS)
library(MaxDiff)
library(httr)


library(rJava)
library(xlsxjars)
library(xlsx)
library(AskiaPackage)

#################
# Author: Claire Blais
# Date 30/08/17
#################

##################
#take all arguments
##################

variable <- commandArgs(trailingOnly=TRUE)


##################
#select the second arg, it's the number of experiments in this maxdiff analysis
##################
nbexperiments<-as.numeric(variable[1])

##################
#select the third arg, it's the number of screens/questions in this maxdiff analysis
##################
nbscreens<-as.numeric(variable[2])

##################
#select the fourth arg, it's number of alternatives per screen in this maxdiff analysis
##################

nbalternatives<-as.numeric(variable[3])
Questions <- c(0,0,0,0)
Questions[1] <- variable[4]
Questions[2] <- variable[5]
Questions[3] <- variable[6]
if(variable[7] == 0){
  Questions[4] <- variable[4]
}else{
  Questions[4] <- variable[7]
}
# Questions <- variable[4]
# Questions <- gsub("'", "",Questions)
# Questions <- strsplit(Questions, ",",TRUE)
print(Questions)
newVariable <- variable[8]

outputDir <- variable[9]

host <- variable[10]

maxDiffAnalysis(nbexperiments,nbscreens,nbalternatives,Questions,newVariable,outputDir,host)
