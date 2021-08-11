# Data-Efficient Deep Learning Benchmark (DEIC)

This repository contains descriptions, download instructions, and canonical train/validation/test splits for the six datasets used as a benchmark for data-efficient image classification in the following paper:

> Lorenzo Brigato, Björn Barz, Luca Iocchi, and Joachim Denzler.  
> Tune It or Don't Use It: Benchmarking Data-Efficient Image Classification.  
> ICCV 2021 Workshop on Visual Inductive Priors for Data-Efficient Deep Learning (VIPriors).


## Datasets

|     Dataset    | Classes | Imgs/Class | Trainval |  Test  | Problem Domain |   Data Type   |
|:---------------|--------:|-----------:|---------:|-------:|:---------------|:--------------|
| [ImageNet][1]  |   1,000 |         50 |   50,000 | 50,000 | Natural Images | RGB           |
| [ciFAIR-10][2] |      10 |         50 |      500 | 10,000 | Natural Images | RGB (32x32)   |
| [CUB][3]       |     200 |         30 |    5,994 |  5,794 | Fine-Grained   | RGB           |
| [EuroSAT][4]   |      10 |         50 |      500 | 19,500 | Remote Sensing | Multispectral |
| [ISIC 2018][5] |       7 |         80 |      560 |  1,944 | Medical        | RGB           |
| [CLaMM][6]     |      12 |         50 |      600 |  2,000 | Handwriting    | Grayscale     |

For all datasets except CUB, we use subsampled versions of the original datasets with fewer images per class.


## Canonical Splits

The [`datasets`](datasets) directory contains one sub-directory for each dataset in our benchmark.
These directories contain the files `train.txt`, `val.txt`, and `test.txt` specifying the three subsets.
Additionally, the file `trainval.txt` is simply the concatenation of `train.txt` and `val.txt`.
This subset can be used for the final training before evaluating a method on the test set.
Development and hyper-parameter optimization, however, should only be conducted using the training and validation sets.

The aforementioned files list all images contained in the respective subset, one per line, along with their class labels.
Each line contains the filename of an image followed by a space and the numeric index of its label.

The only exception from this common format is [ciFAIR-10][2], since it does not have filenames.
A description of the split can be found in the [`README.md`][7] of the respective directory.


[1]: datasets/imagenet
[2]: datasets/cifair
[3]: datasets/cub
[4]: datasets/eurosat
[5]: datasets/isic2018
[6]: datasets/clamm
[7]: datasets/cifair/README.md
