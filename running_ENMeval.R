#This script was written by Jessica Allen jessilynnallen@gmail.com
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.

library(dismo)
library(rgdal)
library(ENMeval)


###Arthonoia kermesina
#Points
points<-read.csv(file.choose())
DataPoints <- points[,-1]

#Environmental Variables
setwd("E:/RareSppModeling/Arthonia_kermesina/EnvVars/Current/All/mask")
files <- list.files(pattern='\\.asc$')
env <- stack(files)

enmeval_test_results <- ENMevaluate(DataPoints, env, RMvalues = seq(0.5, 4, 0.5),
            fc = c("L", "LQ", "H", "LQH"),
            categoricals = NULL, n.bg = 10000, method = "jackknife",
            overlap = FALSE, kfolds = NA, bin.output = FALSE, clamp = TRUE)

write.table(enmeval_test_results@results, file="A_kermesina_ALL_enmevalOUT.txt")



###Arthopyrenia betulicola###
points<-read.csv("E:/RareSppModeling/Arthopyrenia_betulicola/Localities/Arthopyrenia_betulicola_ALL_thin1.csv")
DataPoints <- points[,-1]

#Environmental Variables
setwd("E:/RareSppModeling/Arthopyrenia_betulicola/EnvVars/Current/All/mask")
files <- list.files(pattern='\\.asc$')
env <- stack(files)

enmeval_test_results <- ENMevaluate(DataPoints, env, RMvalues = seq(0.5, 4, 0.5),
                                    fc = c("L", "LQ", "H", "LQH"),
                                    categoricals = NULL, n.bg = 10000, method = "jackknife",
                                    overlap = FALSE, kfolds = NA, bin.output = FALSE, clamp = TRUE)

write.table(enmeval_test_results@results, file="A_betulicola_ALL_enmevalOUT.txt")



###Graphis sterlingiana###
points<-read.csv("E:/RareSppModeling/Graphis_sterlingiana/Localities/Graphis_sterlingiana_ALL_thin1.csv")
DataPoints <- points[,-1]

#Environmental Variables
setwd("E:/RareSppModeling/Graphis_sterlingiana/EnvVars/Current/All/mask")
files <- list.files(pattern='\\.asc$')
env <- stack(files)

enmeval_test_results <- ENMevaluate(DataPoints, env, RMvalues = seq(0.5, 4, 0.5),
                                    fc = c("L", "LQ", "H", "LQH"),
                                    categoricals = NULL, n.bg = 10000, method = "jackknife",
                                    overlap = FALSE, kfolds = NA, bin.output = FALSE, clamp = TRUE)

write.table(enmeval_test_results@results, file="G_sterlingiana_ALL_enmevalOUT.txt")



###Lecanora masana###
points<-read.csv("E:/RareSppModeling/Lecanora_masana/Localities/L_masana_ALL_thin1.csv")
DataPoints <- points[,-1]

#Environmental Variables
setwd("E:/RareSppModeling/Lecanora_masana/EnvVars/Current/All/mask")
files <- list.files(pattern='\\.asc$')
env <- stack(files)

enmeval_test_results <- ENMevaluate(DataPoints, env, RMvalues = seq(0.5, 4, 0.5),
                                    fc = c("L", "LQ", "H", "LQH"),
                                    categoricals = NULL, n.bg = 10000, method = "jackknife",
                                    overlap = FALSE, kfolds = NA, bin.output = FALSE, clamp = TRUE)

write.table(enmeval_test_results@results, file="L_masana_ALL_enmevalOUT.txt")



###Lepraria lanata###
points<-read.csv("E:/RareSppModeling/Lepraria_lanata/Localities/Lepraria_lanata_ALL_thin1.csv")
DataPoints <- points[,-1]

#Environmental Variables
setwd("E:/RareSppModeling/Lepraria_lanata/EnvVars/Current/All/mask")
files <- list.files(pattern='\\.asc$')
env <- stack(files)

enmeval_test_results <- ENMevaluate(DataPoints, env, RMvalues = seq(0.5, 4, 0.5),
                                    fc = c("L", "LQ", "H", "LQH"),
                                    categoricals = NULL, n.bg = 10000, method = "jackknife",
                                    overlap = FALSE, kfolds = NA, bin.output = FALSE, clamp = TRUE)

write.table(enmeval_test_results@results, file="L_lanata_ALL_enmevalOUT.txt")


###Pertusaria appalachensis###
points<-read.csv("E:/RareSppModeling/Pertusaria_appalachensis/Localities/Pertusaria_appalachensis_ALL_thin1.csv")
DataPoints <- points[,-1]

#Environmental Variables
setwd("E:/RareSppModeling/Pertusaria_appalachensis/EnvVars/Current/All/mask")
files <- list.files(pattern='\\.asc$')
env <- stack(files)

enmeval_test_results <- ENMevaluate(DataPoints, env, RMvalues = seq(0.5, 4, 0.5),
                                    fc = c("L", "LQ", "H", "LQH"),
                                    categoricals = NULL, n.bg = 10000, method = "jackknife",
                                    overlap = FALSE, kfolds = NA, bin.output = FALSE, clamp = TRUE)

write.table(enmeval_test_results@results, file="P_appalachensis_ALL_enmevalOUT.txt")


#enmeval_test_results
#enmeval_test_results@results
#enmeval_test_results@predictions

### See table of evaluation metrics
#enmeval_results@results
### Plot prediction with lowest AICc
#plot(enmeval_test_results@predictions[[which (enmeval_test_results@results$delta.AICc == 0) ]])
#points(enmeval_test_results@occ.pts, pch=21, bg= enmeval_test_results@occ.grp)



#ENMevaluate(occ, env, bg.coords = NULL, occ.grp = NULL,
#           bg.grp = NULL, RMvalues = seq(0.5, 4, 0.5),
#            fc = c("L", "LQ", "H", "LQH", "LQHP", "LQHPT"),
#            categoricals = NULL, n.bg = 10000, method = NULL,
#            overlap = FALSE, aggregation.factor = c(2, 2),
#            kfolds = NA, bin.output = FALSE, clamp = TRUE)
