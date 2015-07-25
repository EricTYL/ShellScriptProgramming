#!/bin/bash 

for file in *
do
  lcfile=`echo $file | tr "[A-Z]" "[a-z]"`
  mv $file $lcfile
done
