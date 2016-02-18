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

library(biomod2)
library(raster)
library(rgdal)

setwd("E:/RareSppModeling/Models_ALL/A_kermesina")

# create a list of .bil files that exist in the wd
files <- list.files(pattern='\\.asc$')

# combine all list elements into a stack
s <- stack(files)

binary<-BinaryTransformation(s, 0.096)

for (i in 1:length(files)){
  writeRaster(binary, paste(names(binary),'_bin'), format='ascii', bylayer=TRUE, overwrite=FALSE)
}

r<-raster(file.choose())
plot(r)



setwd("E:/RareSppModeling/Models_ALL/A_betulicola")

# create a list of .bil files that exist in the wd
files <- list.files(pattern='\\.asc$')

# combine all list elements into a stack
s <- stack(files)

binary<-BinaryTransformation(s, 0.278)

for (i in 1:length(files)){
  writeRaster(binary, paste(names(binary),'_bin'), format='ascii', bylayer=TRUE, overwrite=FALSE)
}

r<-raster(file.choose())
plot(r)


setwd("E:/RareSppModeling/Models_ALL/G_sterlingiana")

# create a list of .bil files that exist in the wd
files <- list.files(pattern='\\.asc$')

# combine all list elements into a stack
s <- stack(files)

binary<-BinaryTransformation(s, 0.182)

for (i in 1:length(files)){
  writeRaster(binary, paste(names(binary),'_bin'), format='ascii', bylayer=TRUE, overwrite=FALSE)
}

r<-raster(file.choose())
plot(r)


setwd("E:/RareSppModeling/Models_ALL/H_virginica")

# create a list of .bil files that exist in the wd
files <- list.files(pattern='\\.asc$')

# combine all list elements into a stack
s <- stack(files)

binary<-BinaryTransformation(s, 0.109)

for (i in 1:length(files)){
  writeRaster(binary, paste(names(binary),'_bin'), format='ascii', bylayer=TRUE, overwrite=FALSE)
}

r<-raster(file.choose())
plot(r)


setwd("E:/RareSppModeling/Models_ALL/L_masana")

# create a list of .bil files that exist in the wd
files <- list.files(pattern='\\.asc$')

# combine all list elements into a stack
s <- stack(files)

s<-raster(file.choose())

binary<-BinaryTransformation(s, 0.087)
plot(binary)
writeRaster(binary, file.choose(), format='ascii')

for (i in 1:length(files)){
  writeRaster(binary, paste(names(binary),'_bin'), format='ascii', bylayer=TRUE, overwrite=FALSE)
}

r<-raster(file.choose())
plot(r)


setwd("E:/RareSppModeling/Models_ALL/L_lanata")

# create a list of .bil files that exist in the wd
files <- list.files(pattern='\\.asc$')

# combine all list elements into a stack
s <- stack(files)

binary<-BinaryTransformation(s, 0.239)

for (i in 1:length(files)){
  writeRaster(binary, paste(names(binary),'_bin'), format='ascii', bylayer=TRUE, overwrite=FALSE)
}

r<-raster(file.choose())
plot(r)