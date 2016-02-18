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

library(raster)

setwd("E:/RareSppModeling/Models_ALL")

###Arthopyrenia betulicola###
model<-raster("E:/RareSppModeling/Models_ALL/A_betulicola_present.asc")
model[model <0.278] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_betulicola_CCSM_2050_high.asc")
plot(model)
model[model <0.278] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_betulicola_CCSM_2050_low.asc")
model[model <0.278] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_betulicola_CCSM_2070_low.asc")
model[model <0.278] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_betulicola_CCSM_2070_high.asc")
model[model <0.278] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_betulicola_Hadley_2050_high.asc")
plot(model)
model[model <0.278] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_betulicola_Hadley_2050_low.asc")
model[model <0.278] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_betulicola_Hadley_2070_low.asc")
model[model <0.278] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_betulicola_Hadley_2070_high.asc")
model[model <0.278] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)










###Arthonia kermesina###
model<-raster("E:/RareSppModeling/Models_ALL/A_kermesina_present.asc")
model[model <0.096] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_kermesina_CCSM_2050_high.asc")
plot(model)
model[model <0.096] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_kermesina_CCSM_2050_low.asc")
model[model <0.096] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_kermesina_CCSM_2070_low.asc")
model[model <0.096] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_kermesina_CCSM_2070_high.asc")
model[model <0.096] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_kermesina_Hadley_2050_high.asc")
plot(model)
model[model <0.096] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_kermesina_Hadley_2050_low.asc")
model[model <0.096] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_kermesina_Hadley_2070_low.asc")
model[model <0.096] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/A_kermesina_Hadley_2070_high.asc")
model[model <0.096] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)



###Graphis sterlingiana###
model<-raster("E:/RareSppModeling/Models_ALL/G_sterlingiana_present.asc")
model[model <0.182] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/G_sterlingiana_CCSM_2050_high.asc")
plot(model)
model[model <0.182] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/G_sterlingiana_CCSM_2050_low.asc")
model[model <0.182] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/G_sterlingiana_CCSM_2070_low.asc")
model[model <0.182] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/G_sterlingiana_CCSM_2070_high.asc")
model[model <0.182] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/G_sterlingiana_Hadley_2050_high.asc")
plot(model)
model[model <0.182] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/G_sterlingiana_Hadley_2050_low.asc")
model[model <0.182] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/G_sterlingiana_Hadley_2070_low.asc")
model[model <0.182] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/G_sterlingiana_Hadley_2070_high.asc")
model[model <0.182] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)



###Hypotrachyna virginica###
model<-raster("E:/RareSppModeling/Models_ALL/H_virginica_present.asc")
model[model <0.109] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/H_virginica_CCSM_2050_high.asc")
plot(model)
model[model <0.109] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/H_virginica_CCSM_2050_low.asc")
model[model <0.109] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/H_virginica_CCSM_2070_low.asc")
model[model <0.109] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/H_virginica_CCSM_2070_high.asc")
model[model <0.109] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/H_virginica_Hadley_2050_high.asc")
plot(model)
model[model <0.109] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/H_virginica_Hadley_2050_low.asc")
model[model <0.109] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/H_virginica_Hadley_2070_low.asc")
model[model <0.109] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/H_virginica_Hadley_2070_high.asc")
model[model <0.109] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)




###Lecanora masana###
model<-raster("E:/RareSppModeling/Models_ALL/L_masana_present.asc")
model[model <0.057] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_masana_CCSM_2050_high.asc")
plot(model)
model[model <0.057] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_masana_CCSM_2050_low.asc")
model[model <0.057] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_masana_CCSM_2070_low.asc")
model[model <0.057] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_masana_CCSM_2070_high.asc")
model[model <0.057] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_masana_Hadley_2050_high.asc")
plot(model)
model[model <0.057] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_masana_Hadley_2050_low.asc")
model[model <0.057] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_masana_Hadley_2070_low.asc")
model[model <0.057] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_masana_Hadley_2070_high.asc")
model[model <0.057] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)



###Lepraria lanata###
model<-raster("E:/RareSppModeling/Models_ALL/L_lanata_present.asc")
model[model <0.239] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_lanata_CCSM_2050_high.asc")
plot(model)
model[model <0.239] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_lanata_CCSM_2050_low.asc")
model[model <0.239] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_lanata_CCSM_2070_low.asc")
model[model <0.239] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_lanata_CCSM_2070_high.asc")
model[model <0.239] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_lanata_Hadley_2050_high.asc")
plot(model)
model[model <0.239] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_lanata_Hadley_2050_low.asc")
model[model <0.239] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_lanata_Hadley_2070_low.asc")
model[model <0.239] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/L_lanata_Hadley_2070_high.asc")
model[model <0.239] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)




###Pertusaria appalachensis###
model<-raster("E:/RareSppModeling/Models_ALL/P_appalachensis_present.asc")
model[model <0.235] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/P_appalachensis_CCSM_2050_high.asc")
plot(model)
model[model <0.235] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/P_appalachensis_CCSM_2050_low.asc")
model[model <0.235] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/P_appalachensis_CCSM_2070_low.asc")
model[model <0.235] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/P_appalachensis_CCSM_2070_high.asc")
model[model <0.235] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/P_appalachensis_Hadley_2050_high.asc")
plot(model)
model[model <0.235] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/P_appalachensis_Hadley_2050_low.asc")
model[model <0.235] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/P_appalachensis_Hadley_2070_low.asc")
model[model <0.235] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)

model<-raster("E:/RareSppModeling/Models_ALL/P_appalachensis_Hadley_2070_high.asc")
model[model <0.235] <- NA
cell_size<-area(model, na.rm=TRUE, weights=FALSE)
cell_size<-cell_size[!is.na(cell_size)]
suitable_area<-length(cell_size)*median(cell_size)
write(paste(names(model), round(suitable_area, digits=1),"km2"), file="All_suitable_area_NotClipped.txt", append=TRUE)