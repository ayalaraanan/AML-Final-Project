#!/bin/sh

echo Downloading Data...
curl http://archive.ics.uci.edu/ml/machine-learning-databases/00231/PAMAP2_Dataset.zip > PAMAP2_Dataset.zip
unzip PAMAP2_Dataset.zip
echo Done!