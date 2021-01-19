#!/bin/bash

STAGE=$1
DEST_STAGE=$2

for i in `cat DatasetHeaders/tables_list.txt`
do
   echo 'Processing '$i
   filename=$STAGE/$i
   DIR=$DEST_STAGE/$i
   mkdir -p $DIR
   csvfile=$DIR/$i
   if( test -f $filename)
   then
   	echo 'Processing '$filename
        cat DatasetHeaders/$i'.txt' > $csvfile
        cat $filename >> $csvfile
   fi
   echo 'Done processing '$i
done
