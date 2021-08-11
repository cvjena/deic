# Caltech-UCSD Birds-200-2011 Dataset

CUB is a fine-grained visual recognition dataset comprising 11,788 images of 200 different bird species.

Dataset homepage: <http://www.vision.caltech.edu/visipedia/CUB-200-2011.html>  
Paper: <https://authors.library.caltech.edu/27452/1/CUB_200_2011.pdf>

![Example images from CUB](http://www.vision.caltech.edu/visipedia/collage.jpg)


## Obtaining the data

The bash script `download_data.sh` provided in this directory can be used to download the actual image data. Doing so will result in a folder named `CUB_200_2011` with a subdirectory called `images`.


## Splits

We use the original `trainval` and `test` split provided with the dataset und furthermore subdivide `trainval` into `train` and `val`.

|   Split   | Total Images | Images / Class |
|:----------|-------------:|---------------:|
| train     |        4,000 |             20 |
| val       |        1,994 |           9-10 |
| trainval  |        5,994 |          29-30 |
| test      |        5,794 |          11-30 |


## Baseline Performance

We achieved the following baseline performance using a ResNet-50 trained on the `trainval` split and averaged over 10 runs.

| Input Size | Accuracy |
|:-----------|---------:|
| 224 x 224  |   71.45% |
| 448 x 448  |   80.57% |
