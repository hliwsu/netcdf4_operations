#!/bin/sh
cd /mnt/d/temp/vtype/future
for file in  *.nc
do 
    ncap2 -s  'where(VTYPE == 4 || 5 || 6 || 7 || 8 || 9 || 10 || 11 || 12 || 13 || 14 || 15 || 16 || 21 || 22 || 25 || 26 || 27 || 36 ) VTYPE=1' $file -O $file
    ncap2 -s  'where(VTYPE == 2 || 28 ) VTYPE=0' $file -O $file
 done
cd /mnt/d/temp/vtype/hist
for file in  *.nc
do 
    ncap2 -s  'where(VTYPE == 4 || 5 || 6 || 7 || 8 || 9 || 10 || 11 || 12 || 13 || 14 || 15 || 16 || 21 || 22 || 25 || 26 || 27 || 36 ) VTYPE=1' $file -O $file
    ncap2 -s  'where(VTYPE == 2 || 28 ) VTYPE=0' $file -O $file
 done



