# Classification of Latin Medieval Manuscripts

The Classification of Latin Medieval Manuscripts (CLaMM) database was used in the ICFHR2016 Competition for Script Classification.
The task to be evaluated in the competition was the classification of 1000 images of Latin Scripts, from handwritten books dated 500 C.E. to 1600 C.E.

Dataset homepage: <https://clamm.irht.cnrs.fr/icfhr2016-clamm/icfhr2016-clamm/>  
Paper: <https://journal.digitalmedievalist.org/articles/10.16995/dm.61/>

![Example images for each class](example_images.png)


## Obtaining the data

The bash script `download_data.sh` provided in this directory can be used to download the actual image data.
Doing so will result in a folder `images` containing tif gray-scale images of Latin scripts.


## Splits

We provide the following splits of the dataset for testing small-data performance:

|   Split   | Total Images | Images / Class |
|:----------|-------------:|---------------:|
| train     |          360 |             30 |
| val       |          240 |             20 |
| trainval  |          600 |             50 |
| test      |         1000 |          68-90 |


## Baseline Performance

We achieved the following baseline performance using a ResNet-50 trained on the `trainval` split and averaged over 10 runs.

| Input Size | Accuracy |
|:-----------|---------:|
| 224 x 224  |   75.35% |
| 448 x 448  |   81.53% |
