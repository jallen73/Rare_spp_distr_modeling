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

points<-read.csv(file.choose())
DataPoints <- points[,-1]

states<-(readShapePoly("C:/Users/jallen/Desktop/US_data/StateLines/statep010/statep010.shp"))
plot(states, xlim=c(-90, -70), ylim=c(30,45), axes=TRUE, col="light yellow")
DataPoints = SpatialPoints(DataPoints, proj4string=CRS(proj4string(states)))
box()
# plot points
points(DataPoints$Longitude, DataPoints$Latitude, col='orange', pch=20, cex=1.25)
# plot points again to add a border, for better visibility
points(DataPoints$Longitude, DataPoints$Latitude, col='red', cex=0.75)

#Make convex hull
hull<-convHull(DataPoints, lonlat=TRUE)
plot(hull@polygons, add=TRUE)

writePolyShape(hull@polygons, file.choose())
P4S.latlon <- CRS("+proj=longlat +datum=WGS84")
x<-readShapePoly(file.choose(), proj4string=P4S.latlon)
plot(x, add=TRUE)

xBuff<-gBuffer(x, byid=TRUE, width=0.5)
plot(xBuff, add=TRUE)
projection(xBuff)<-P4S.latlon
writePolyShape(xBuff, file.choose())
