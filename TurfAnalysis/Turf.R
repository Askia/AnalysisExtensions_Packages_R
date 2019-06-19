# Title     : Turf Analysis
# Objective : library to help code in R (Analyse)
# Created by: Lena Sasal
# Created on: 28/05/2019

#Library to import
library(turfR)
library(export)
library(jsonlite)
library(httr)
library(AskiaPackage)

Questions <- c(0)
#Get the argument given by the command line
args <- commandArgs(trailingOnly = TRUE)
Questions[1] <- gsub(" ", "%20",args[1])
nbAnswers <- strtoi(args[2])
min_items <- strtoi(args[3])
max_items <- strtoi(args[4])
directoryToExportTheCSV <- args[5]
host <- args[6]
if (length(args) < 7){
  weightedvariable = 0
}else{
  weightedvariable <- args[7]
}
for (i in 1:length(args)) {
  print(args[i])
}
#Run the turf analysis
askiaTurf(Questions,nbAnswers,min_items,max_items,directoryToExportTheCSV,host,weightedvariable)
