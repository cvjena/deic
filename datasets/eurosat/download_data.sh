#!/bin/bash

echo 'Downloading RGB data ...'
wget http://madm.dfki.de/files/sentinel/EuroSAT.zip
echo 'Extracting ...'
unzip -q EuroSAT.zip
rm EuroSAT.zip
mv 2750 RGB
echo 'Done (1/2).'

echo

echo 'Downloading multispectral data ...'
wget http://madm.dfki.de/files/sentinel/EuroSATallBands.zip
echo 'Extracting ...'
unzip -q EuroSATallBands.zip
rm EuroSATallBands.zip
mv ds/images/remote_sensing/otherDatasets/sentinel_2/tif allBands
rm -R ds
echo 'Done (2/2).'