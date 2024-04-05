# AML Final Project
By Ayala Raanan and Gil Levy

## Abstract

This is the final project in the 2022 AML course.
It reproduces results for the following paper on the subject of Human Activity Recognition (HAR):

Haojie Ma, Wenzhong Li, Xiao Zhang, Songcheng Gao, and Sanglu Lu. 2019. **AttnSense: Multi-level Attention Mechanism For Multimodal Human Activity Recognition**. In Proceedings of the Twenty-Eighth International Joint Conference on Artificial Intelligence, IJCAI 2019, Macao, China, August 10-16, 2019. 3109–3115.

Our report can be found here:
[AttnSense Multi-level Attention Mechanism For Multimodal Human Activity.pdf](https://github.com/ayalaraanan/AML-Final-Project/blob/master/AttnSense%20Multi-level%20Attention%20Mechanism%20For%20Multimodal%20Human%20Activity.pdf)

## The Notebooks

To run the notebooks locally, you first need to get the PAMAP2 dataset (see instructions below).

- [`PAMAP2_data_statistics.ipynb`](PAMAP2_data_statistics.ipynb) - This notebook analyzes the data and shows interesting statistics.
- [`PAMAP2_data_preprocessing.ipynb`](PAMAP2_data_preprocessing.ipynb) - This notebook performs all preprocessing of the data. It includes optional variations of:
   - Adding augmentation + controlling noise magnitude
   - Changing Sequence length
   - Choosing different subject as test set
   - With or without FFT
   etc.
   
  It outputs the train, dev and test datasets to a predefined path, to be used by the `AttnSense_model_training_and_evaluation.ipynb` notebook.

- [`AttnSense_model_training_and_evaluation.ipynb`](AttnSense_model_training_and_evaluation.ipynb) - This notebook defines the model and runs training and evaluation.

    It includes the options to:
    - Choose CNN (1 or 4 layers)
    - Change GRU hidden size
    - Other parameters...
    - It contains the summary and graphs of our experiments

Innovation part notebooks:
- [PAMAP2_model_innovation_fine_tuning_multihead_att](https://github.com/ayalaraanan/AML-Final-Project/blob/master/PAMAP2_model_innovation_fine_tuning_multihead_att.ipynb) contains the fine-tuning experiments and the multiple context vectors experiments.
- [PAMAP2_preprocessing_rotation_augmentation](https://github.com/ayalaraanan/AML-Final-Project/blob/master/PAMAP2_preprocessing_rotation_augmentation.ipynb) handles preparation of rotation augmented data (training is the same).
- [PAMAP2_preprocessing_subject_label](https://github.com/ayalaraanan/AML-Final-Project/blob/master/PAMAP2_preprocessing_subject_label.ipynb) handles data preparation with double labeling (activity and subject) for the subject-aware model training.
- [subject_aware_AttnSense_model_training_and_evaluation](https://github.com/ayalaraanan/AML-Final-Project/blob/master/subject_aware_AttnSense_model_training_and_evaluation.ipynb) contains the subject-aware model and experiments.


## How to get the data

You can download the data from [here](http://archive.ics.uci.edu/ml/machine-learning-databases/00231/PAMAP2_Dataset.zip). Then, unzip the file in the root folder of the repo.

Alternatively, run the script `./download_datasets.sh` to do that automatically.

## How to run the model

1. Run preprocessing notebook with desired options and save to defined path
2. Run training and evaluation notebook: After loading from same path, run all blocks till the evaluation section.

Enjoy!
