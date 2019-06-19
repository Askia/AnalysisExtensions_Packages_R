library(Formula)
library(miscTools)
library(lattice)
library(maxLik)
library(mlogit)
library(MASS)
library(MaxDiff)
library(AskiaPackage)


#################
#author:Claire  #
#date: 29/08/17 #
#################

##################
#take all arguments
##################

variable <- commandArgs(trailingOnly=TRUE)

##################
#select the first arg, is the number of experiments for the maxdiff
##################

nbexperiment <-as.numeric(variable[1])

##################
#select the second arg, is the number of alternatives per screen
##################

nbAlternative <-as.numeric(variable[2])

##################
#select the third arg, is the number of questions/screens
##################

nbQuestion <-as.numeric(variable[3])

##################
#create the file where you stocke the matrix
##################
myfile <- variable[4]
myfile <- paste(variable[4],variable[1],"experiments_",variable[2],"alternatives_",variable[3],"screens.csv",sep="")

createTab(nbexperiment,nbAlternative,nbQuestion,myfile)
# ##################
# #create a experient's names vector (you need this to make run the function "mdAggregateDesign"
# ##################
#
# vectornames <- c(1:nbexperiment)
#
# ##################
# #create matrix for the maxdiff,
# #first argument is number of question,
# #second is the number of alternatives per screens,
# #third the vector with name's experiments
# ##################
#
# agg.design=mdAggregateDesign(nbQuestion , nbAlternative , vectornames)
#
# ##################
# #transpose your design matrix
# ##################
#
# Tagg.design=t(agg.design)
#
# ##################
# # stocke your matrix in a CSV file
# ##################
#
# write.table(Tagg.design, file=myfile, append=TRUE, row.names=FALSE,col.names=FALSE,sep=";") #save the table in a csv file
