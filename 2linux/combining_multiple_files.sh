#!/bin/bash

header="displacement"
extension=".txt"
underscore="_"
newdir="../combinedresults/"   ## save the combined files to a new folder

for i in {1..5}
do
	filename=$header$i$extension   ##generate a new file name to store the files
	touch $filename               ## create the new file
		for j in {0..3}
		do 
			FILENAME=$header$i$underscore$j$extension   ## generate the existing file names
			cat $FILENAME  >> $newdir$filename          ## concatenate the existing file to the new file
		done
	echo "Finishing $i files"
done
