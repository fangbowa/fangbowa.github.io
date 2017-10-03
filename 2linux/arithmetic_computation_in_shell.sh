#!/bin/bash


temp=2
echo $temp

echo "Method 1: use expr."
val=`expr 2 + $temp`
echo "Total value : $val from expr"

echo "Method 2: use python" 
var= python -c "print(20+5/2.0)"
##echo $var





