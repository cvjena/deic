#!/bin/bash

mkdir images

echo 'Downloading CLaMM training data ...'
wget https://clamm.irht.cnrs.fr/wp-content/uploads/ICFHR2016_CLaMM_Training.zip
echo 'Extracting ...'
unzip -q ICFHR2016_CLaMM_Training.zip
rm ICFHR2016_CLaMM_Training.zip
mv CLaMM_Training_Data_Set/{*.tif,*.csv} images
rm -R CLaMM_Training_Data_Set
echo 'Done (1/2).'

echo

echo 'Downloading CLaMM test data ...'
wget https://clamm.irht.cnrs.fr/wp-content/uploads/ICFHR2016_CLaMM_task1.zip
echo 'Extracting ...'
unzip -q ICFHR2016_CLaMM_task1.zip
rm ICFHR2016_CLaMM_task1.zip
mv CLaMM_task1/{*.tif,*.csv} images
rm -R CLaMM_task1
echo 'Done (2/2).'
