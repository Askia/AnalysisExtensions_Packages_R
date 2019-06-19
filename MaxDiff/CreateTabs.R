library(Formula)
library(miscTools)
library(lattice)
library(maxLik)
library(mlogit)
library(MASS)
library(MaxDiff)
library(AskiaPackage)


####################
# Author: Claire Blais
# Date:30/08/17
####################
variable <- commandArgs(trailingOnly=TRUE)
nbExperiment<- variable[1]
experiments <- strsplit(nbExperiment, ",",TRUE)
if (length(experiments[[1]]) == 1){
  minExperiment = as.numeric(experiments[[1]][1])
  maxExperiment = as.numeric(experiments[[1]][1])
}else{
  minExperiment = as.numeric(experiments[[1]][1])
  maxExperiment = as.numeric(experiments[[1]][2])
}
outputdir <- variable[2]
print(outputdir)

createTabs(minExperiment,maxExperiment,outputdir)
# for(k in minExperiment:maxExperiment){ #number of experiments
# myfile=paste(outputdir,toString(k),'_experiments.csv',sep="")
# Alt.names=c(1:k) #name of experiments
# for(j in 3:5){  # number of alternatives
# 	nbalternative=t(matrix(c("Nb alternative ",toString(j)),2))
# 	write.table(nbalternative, file=myfile, append=TRUE, row.names=FALSE,col.names=FALSE,sep=",")
# 	for(i in floor(k*(2/3)+1):floor(k*(2/3)+5)){ # number of questions ask
# 		nbquestion=t(matrix(c("Nb question ",toString(i)),2))
# 		write.table(nbquestion, file=myfile, append=TRUE, row.names=FALSE,col.names=FALSE,sep=",")
# 		agg.design=mdAggregateDesign(i, j, Alt.names)
# 		T=t(agg.design)
# 		write.table(T, file=myfile, append=TRUE, row.names=FALSE,col.names=FALSE,sep=";")
# 	}
# }
# }
