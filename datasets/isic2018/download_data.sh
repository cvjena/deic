#!/bin/bash

echo 'Downloading data ...'
wget https://isic-challenge-data.s3.amazonaws.com/2018/ISIC2018_Task3_Training_Input.zip
echo 'Extracting ...'
unzip -q ISIC2018_Task3_Training_Input.zip
rm ISIC2018_Task3_Training_Input.zip
echo 'Done (1/2).'

echo 'Downloading ground-truth ...'
wget https://isic-challenge-data.s3.amazonaws.com/2018/ISIC2018_Task3_Training_GroundTruth.zip
echo 'Extracting ...'
unzip -q ISIC2018_Task3_Training_GroundTruth.zip
rm ISIC2018_Task3_Training_GroundTruth.zip
mv ISIC2018_Task3_Training_GroundTruth/ISIC2018_Task3_Training_GroundTruth.csv .
rm -R ISIC2018_Task3_Training_GroundTruth
echo 'Done (2/2).'