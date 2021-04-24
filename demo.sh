#!/bin/bash
File="demo.txt"
Lines=$(cat $File)
for Line in $Lines
do
    echo "$Line"
done