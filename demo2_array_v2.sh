#!/bin/bash
filename='res.txt'
n=1
n_array_synth1=()
while read line; do
# reading each line
echo "Line No. $n : $line"
if [ $(( $n )) -lt 322 ] 
then 
    echo "Line append No. $n : $line"
    n_array_synth1+=$line
else 
    echo "failed"
fi 
n=$((n+1))
done < $filename

for i in "${n_array_synth1[@]}"
do
echo "$i"
done