# AML Final Project

## Abstract

This is the final project in the 2022 AML course.

We hope you like it.

## The Notebooks

To run the notebooks locally, you first need to get the PAMAP2 dataset (see instructions below).

- [`PAMAP2_data_statistics.ipynb`](PAMAP2_data_statistics.ipynb) - This notebook analyzes the data and shows interesting statistics.
- [`PAMAP2_data_preprocessing.ipynb`](PAMAP2_data_preprocessing.ipynb) - This notebook performs all preprocessing of the data. It includes optional variations of:
   - Sequence length
   - With or without augmentation + controlling noise magnitude
   - With or without FFT
   etc.
  It outputs the train, dev and tests datasets to a predefined path, to be used by the `AttnSense model training and evaluation.ipynb` notebook.

- [`AttnSense model training and evaluation.ipynb`](AttnSense model training and evaluation.ipynb)


## How to get the data

You can download the data from [here](http://archive.ics.uci.edu/ml/machine-learning-databases/00231/PAMAP2_Dataset.zip). Then, unzip the file in the root folder of the repo.

Alternatively, run the script `./download_datasets.sh` to do that automatically.

