R script for 'Getting And Cleaning Data' Coursera course project
================================================================

run_analysis.R
--------------

Raw data must be downloaded from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extracted to the script source directory.

The script writes text file with tidy data set required by assignment instructions, the tidy data set is returned by `run_analysis()` function.

How it does:
------------

1. Loads data from data set directory __UCI HAR Dataset__.
2. Merges Test and Train data sets in one single data frame object (`ex.data`).
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Adds activity labeles and descriptive column names to `ex.data` data frame object.
5. Extracts tidy data set (`tidy.data` data frame object) with the average of each variable for each activity and each subject.
6. Finally writes tidy data set in __tidy_data_set.txt__ file in script source directory.

Steps 1, 2, 3, 4 are performed by `run_analysis()` function, which returns `tidy.data` data frame object.

Tidy data set description:
--------------------------

Tidy data set is extracted from _Human Activity Recognition Using Smartphones Dataset Version 1.0_ ([www.smartlab.ws](http://www.smartlab.ws)).

Tidy data set is represented in wide form.

#### Why is the data set tidy?

It meets the main principles of tidy data (in accordance with Hadley Wickham's ["Tidy data"](http://vita.had.co.nz/papers/tidy-data.pdf)):
1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

In order to check it's tidy __tidy_data_set.txt__ file should be read into R with `read.table` command.

Please, see __codebook.md__ for more details about tidy data set, its variables, the raw data set and its transformation.

Tested and worked under R version 3.0.3 (2014-03-06) -- "Warm Puppy".
