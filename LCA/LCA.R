# Title     : LCA with AskiaPackage
# Objective : Take the answers of several question and classify it with the Latent class Analysis
# Created by: Lena Sasal
# Created on: 30/04/2019
library(broom)
library(export)
library(jsonlite)
library(httr)
library(poLCA)
library(pracma)
library(AskiaPackage)
################################################################################################
#Initialisation of the variable
Questions <- c(0)
i <- 2
#Get the argument given by the command line
args <- commandArgs(trailingOnly = TRUE)
#Create a list of shortcaption with the argument given in the command line
Questions <- args[1]
Questions <- gsub("'", "",Questions)
Questions <- gsub(" ", "%20",Questions)
Questions <- strsplit(Questions, ",",TRUE)

nameOfNewVariable <- args[2]
nbClass <- args[3]
directoryToExportTheCSV <- args[4]
host <- args[5]

for (i in length(args)){
  print(args[i])
}

# while(!(strcmp(args[i], "stop"))){
#   print(i)
#   Questions[i-1] = gsub(" ", "%20",args[i])
#   i <- i+1
# }
# i<- i+1
# nameOfNewVariable = args[i]
# i<- i+1
# directoryToExportTheCSV = args[i]
# i<- i+1
# host = args[i]

########MAIN#########

lca <- lcaAskia(Questions[[1]],nameOfNewVariable,nbClass,directoryToExportTheCSV,host)
