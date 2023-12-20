#!/bin/bash

echo "===============" > rig.txt
read -p "How many Rigs you want?" n
for ((i=0; i<=$n; i++))
do
  rig >> rig.txt
  echo "===============" >> rig.txt
done

echo "Done."  
