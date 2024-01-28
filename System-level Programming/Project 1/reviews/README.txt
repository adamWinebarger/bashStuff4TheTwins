This is a modified version of the 5-core Video Game dataset
originally presented in:

Justifying recommendations using distantly-labeled reviews and fined-grained aspects
Jianmo Ni, Jiacheng Li, Julian McAuley
Empirical Methods in Natural Language Processing (EMNLP), 2019

It is a small subset of the original dataset, specifically taking a small
portion of the original data.  No reviews with less than 75 characters
were included (more were not included as well to make it small enough to use
easily in a classroom setting).  The reviews included were transformed from one
large file of many json objects to individual files.

Each file in this dataset is a single Amazon video game review.
Every file begins with the rating followed by an underscore (i.e.,
2_25.txt is a review with rating 2 stars).  The name after the underscore
is a unique ID corresponding to the review's position in the original dataset's
single json file.
