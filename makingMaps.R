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
library(rgeos)
library(dismo)
library(maptools)
library(rJAva)

#Vector data can be as simple as a list of x,y coordinates
masana<-read.csv(file.choose())
#what happens if we simply plot these points against one another?
head(masana)
plot(masana)
Data <- masana[,-1]
head(Data)

Allmasna<-read.csv("C:/Users/jallen/Documents/S_App_lichens/NicheModeling/Lecanora_masana/Masan_corr_loc.csv")
Alldata<-Allmasna[,-1]
head(Alldata)

P4S.latlon <- CRS("+proj=longlat +datum=WGS84")
sappShape<-readShapePoly("C:/Users/jallen/Documents/S_App_lichens/NMclass/sapp.shp", proj4string=P4S.latlon)
plot(sappShape)
allmasana = SpatialPoints(Alldata, proj4string=CRS(proj4string(states)))
plot(allmasana,add=TRUE)

states<-(readShapePoly("C:/Users/jallen/Desktop/US_data/StateLines/statep010/statep010.shp"))
plot(states, xlim=c(-85, -81), ylim=c(34,37), col="light yellow", axes=TRUE)
plot(states, xlim=c(-100, -65), ylim=c(25, 50), col="light yellow", axes=TRUE)
# restore the box around the map
box()
# plot points
points(Al$Longitude, Alldata$Latitude, col='black', pch=20, cex=1.25)
points(Data$Longitude, Data$Latitude, col='black', pch=20, cex=1.25)
# plot points again to add a border, for better visibility
points(Data$Longitude, Data$Latitude, col='red', cex=1.75)
buffer<-readShapePoly("C:/Users/jallen/Documents/S_App_lichens/NicheModeling/Lecanora_masana/BufferHull")
smokBuffer<-readShapePoly("C:/Users/jallen/Documents/S_App_lichens/fromGISlab/ToSend/SmokConHullBuffer.shp")
plot(buffer, add=TRUE)
plot(smokBuffer, col="blue", add=TRUE)
LQ3Bias_GSMNP<-raster("D:/NM_finalProject/Lmasana_output/BestModels/LQ3_BIAS_present/Lecanora_masana_Lendemer_&_R._C._Harris_avg.asc")
LQ3Bias<-raster(file.choose())
plot(LQ3Bias, xlim=c(-84.5, -80.5), ylim=c(34.5,37))
plot(LQ3Bias, axes=TRUE, xlim=c(-84.5, -80.5), ylim=c(34.5,37), col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1))
??breaks
plot(LQ3Bias_GSMNP, axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='gray')
plot(states, xlim=c(-95, -75), ylim=c(30,40))
plot(L1)

colorRamp(c("blue", "red"), bias=1, space="Lab", interpolate="linear")
palette(rainbow(6))
colorRampPalette(c("blue", "red"))( 4 )
?threshold
tr=.4759
plot(LQ3Bias_GSMNP>tr)
tr2=.157
plot(LQ3Bias>tr2)
?rev

# Create a function interpolating colors in the range of specified colors 
jet.colors <- colorRampPalette( c("blue", "green") ) 
# Generate the desired number of colors from this palette 
nbcol <- 1
color <- jet.colors(nbcol) 

L1<-raster("E:/NM_finalProject/Lmasana_output/BestModels/L1/Lecanora_masana_Lendemer_&_R._C._Harris_avg.asc")
plot(L1, xlim=c(-84.5, -80.5), ylim=c(34.5,37), axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='light yellow')
plot(states, add=TRUE)
scalebar=(100)
scalebar(100, xy=NULL, type='bar', below="miles")

#plot LQ3 bias hadley low
LQ3hadlow<-raster("D:/NM_finalProject/Lmasana_output/Futures/HadGEM2-AO/rcp26/LQ3_bias_norep/Lecanora_masana_Lendemer_&_R._C._Harris_low.asc")
plot(LQ3hadlow, axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='gray')
plot(states, add=TRUE)

#plot LQ3 bias hadley high
LQ3hadhigh<-raster("D:/NM_finalProject/Lmasana_output/Futures/HadGEM2-AO/rcp85/LQ3_bias_norep/Lecanora_masana_Lendemer_&_R._C._Harris_high.asc")
plot(LQ3hadhigh, axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='gray')
plot(states, add=TRUE)

#plot L1 hadley low
L1hadlow<-raster("D:/NM_finalProject/Lmasana_output/Futures/HadGEM2-AO/rcp26/L1_norep/Lecanora_masana_Lendemer_&_R._C._Harris_low.asc")
plot(L1hadlow, axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='gray')
plot(states, add=TRUE)

#plot L1 hadley high
L1hadhigh<-raster("D:/NM_finalProject/Lmasana_output/Futures/HadGEM2-AO/rcp85/L1_norep/Lecanora_masana_Lendemer_&_R._C._Harris_high.asc")
plot(L1hadhigh, axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='gray')
plot(states, add=TRUE)

#plot LQ3 bias CCMS4 low
LQ3CCSMlow<-raster("D:/NM_finalProject/Lmasana_output/Futures/CCSM4/rcp26/LQ3_bias_norep/Lecanora_masana_Lendemer_&_R._C._Harris_low.asc")
plot(LQ3CCSMlow, axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='gray')
plot(states, add=TRUE)

#plot LQ3 bias CCMS4 high
LQ3CCSMhigh<-raster("D:/NM_finalProject/Lmasana_output/Futures/CCSM4/rcp85/LQ3_bias_norep/Lecanora_masana_Lendemer_&_R._C._Harris_high.asc")
plot(LQ3CCSMhigh, axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='gray')
plot(states, add=TRUE)

#plot L1 CCMS4 low
L1CCSMlow<-raster("D:/NM_finalProject/Lmasana_output/Futures/CCSM4/rcp26/L1_norep/Lecanora_masana_Lendemer_&_R._C._Harris_low.asc")
plot(L1CCSMlow, axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='gray')
plot(states, add=TRUE)

#plot L1 CCMS4 high
L1CCSMhigh<-raster("D:/NM_finalProject/Lmasana_output/Futures/CCSM4/rcp85/L1_norep/Lecanora_masana_Lendemer_&_R._C._Harris_high.asc")
plot(L1CCSMhigh, axes=TRUE, col=rev(heat.colors(10)), breaks= seq(0, 1, by = 0.1), colNA='gray')
plot(states, add=TRUE)

??biomod