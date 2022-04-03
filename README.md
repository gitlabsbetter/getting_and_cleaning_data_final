# Peer-graded Assignment: Getting and Cleaning Data Course Project

## Repo Overview

This project and repo uses the R script [run_analysis.R](https://github.com/gitlabsbetter/getting_and_cleaning_data_final/blob/main/run_analysis.R) to analyze the UCI Human Activity Recognition Using Smartphones Data Set.

## [run_analysis.R](https://github.com/gitlabsbetter/getting_and_cleaning_data_final/blob/main/run_analysis.R) Script Overview

1. Download and unzip the UCI dataset if it doesn't exist in the scripts current working directory
2. Import the relevant flat files that we will be analyzing into dataframes and specify usable column names
3. Merge the Subject, Test, and Train datasets together
4. Build the Tidy Dataset
    - Select only the subjects, activity, and any column with the mathmatical functions (name) Mean or STD(deviation)
    - Clean up all column names so they are clear and consistent
5. Summarize/group the data by Subject and Activity, using the mean() function on all other fields
6. Write out the summarized table to [summary_data.txt](https://github.com/gitlabsbetter/getting_and_cleaning_data_final/blob/main/summary_data.txt)


## [CodeBook.md](https://github.com/gitlabsbetter/getting_and_cleaning_data_final/blob/main/CodeBook.md)
- Lists all variables created/used in [run_analysis.R](https://github.com/gitlabsbetter/getting_and_cleaning_data_final/blob/main/run_analysis.R) and their definitions
- Explains how the final datasets are cleaned and summarized
- Explains how the output file [summary_data.txt](https://github.com/gitlabsbetter/getting_and_cleaning_data_final/blob/main/summary_data.txt) is represented
- Lists all fields/columns in [summary_data.txt](https://github.com/gitlabsbetter/getting_and_cleaning_data_final/blob/main/summary_data.txt)

## [summary_data.txt](https://github.com/gitlabsbetter/getting_and_cleaning_data_final/blob/main/summary_data.txt)
- Primary output from the [run_analysis.R](https://github.com/gitlabsbetter/getting_and_cleaning_data_final/blob/main/run_analysis.R)

### References

University of California Irvine
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

www.smartlab.ws

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
