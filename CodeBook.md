# Code Book

This is the "Code Book" of definitions for this projects scripts and final dataset

## Variable definitions

### Primary data archive

__dataset_filename__ -> default filename of the zipped dataset downloaded from UCI

__dataset_url__ -> url to downwload the zip file if it doesnt exist in current directory

__dataset_dir__ -> default directory of the zip file once extracted

### Primary required datasets

__feature_list__ -> dataset containing features.txt which is a column index list essentially

__activity_list__ -> dataset containing the list of physical activities and their id code

__subject_test__ -> dataset containing the test subjects id's

__x_test__ -> dataset containing the the test subjects data, using feature_list for the column names

__y_test__ -> dataset containing the test subjects activity id info

__subject_train__ -> dataset containing the training subjects id's

__x_train__ -> dataset containing the the training subjects data, using feature_list for the column names

__y_train__ -> dataset containing the training subjects activity id info

### Merged datasets

__x_merge__ -> merge of x_test and x_train

__y_merge__ -> merge of x_train and y_train

__subject_merge__ -> merge of subject_test and subject_train

__merged_data__ -> full merge of subject_merge, x_merge, and y_merge

### Cleaned datasets

__cleaned_data__ -> dataframe with only the subject, id, and any mean or std dev columns selected and with cleaned column naming

__summary_data__ -> dataframe with cleaned_data groupped by subject and activity and averaged all other columns

## Data Output

* __Output file named *summary_data.txt*__
* __Each field is standardized and bound within [-1, 1]__
* __Each row represents the AVERAGE of all results for a given Subject and Activity group__
* __List of fields/coulmns index and their name__

1. Subject
2. Activity
3. TimeBodyAccelerometerMeanXAxis
4. TimeBodyAccelerometerMeanYAxis
5. TimeBodyAccelerometerMeanZAxis
6. TimeGravityAccelerometerMeanXAxis
7. TimeGravityAccelerometerMeanYAxis
8. TimeGravityAccelerometerMeanZAxis
9. TimeBodyAccelerometerJerkMeanXAxis
10. TimeBodyAccelerometerJerkMeanYAxis
11. TimeBodyAccelerometerJerkMeanZAxis
12. TimeBodyGyroscopeMeanXAxis
13. TimeBodyGyroscopeMeanYAxis
14. TimeBodyGyroscopeMeanZAxis
15. TimeBodyGyroscopeJerkMeanXAxis
16. TimeBodyGyroscopeJerkMeanYAxis
17. TimeBodyGyroscopeJerkMeanZAxis
18. TimeBodyAccelerometerMagnitudeMean
19. TimeGravityAccelerometerMagnitudeMean
20. TimeBodyAccelerometerJerkMagnitudeMean
21. TimeBodyGyroscopeMagnitudeMean
22. TimeBodyGyroscopeJerkMagnitudeMean
23. FrequencyBodyAccelerometerMeanXAxis
24. FrequencyBodyAccelerometerMeanYAxis
25. FrequencyBodyAccelerometerMeanZAxis
26. FrequencyBodyAccelerometerMeanFrequencyXAxis
27. FrequencyBodyAccelerometerMeanFrequencyYAxis
28. FrequencyBodyAccelerometerMeanFrequencyZAxis
29. FrequencyBodyAccelerometerJerkMeanXAxis
30. FrequencyBodyAccelerometerJerkMeanYAxis
31. FrequencyBodyAccelerometerJerkMeanZAxis
32. FrequencyBodyAccelerometerJerkMeanFrequencyXAxis
33. FrequencyBodyAccelerometerJerkMeanFrequencyYAxis
34. FrequencyBodyAccelerometerJerkMeanFrequencyZAxis
35. FrequencyBodyGyroscopeMeanXAxis
36. FrequencyBodyGyroscopeMeanYAxis
37. FrequencyBodyGyroscopeMeanZAxis
38. FrequencyBodyGyroscopeMeanFrequencyXAxis
39. FrequencyBodyGyroscopeMeanFrequencyYAxis
40. FrequencyBodyGyroscopeMeanFrequencyZAxis
41. FrequencyBodyAccelerometerMagnitudeMean
42. FrequencyBodyAccelerometerMagnitudeMeanFrequency
43. FrequencyBodyAccelerometerJerkMagnitudeMean
44. FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency
45. FrequencyBodyGyroscopeMagnitudeMean
46. FrequencyBodyGyroscopeMagnitudeMeanFrequency
47. FrequencyBodyGyroscopeJerkMagnitudeMean
48. FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency
49. AngleTimeBodyAccelerometerMeanGravity
50. AngleTimeBodyAccelerometerJerkMeanGravityMean
51. AngleTimeBodyGyroscopeMeanGravityMean
52. AngleTimeBodyGyroscopeJerkMeanGravityMean
53. AngleXAxisGravityMean
54. AngleYAxisGravityMean
55. AngleZAxisGravityMean
56. TimeBodyAccelerometerSTDDEVXAxis
57. TimeBodyAccelerometerSTDDEVYAxis
58. TimeBodyAccelerometerSTDDEVZAxis
59. TimeGravityAccelerometerSTDDEVXAxis
60. TimeGravityAccelerometerSTDDEVYAxis
61. TimeGravityAccelerometerSTDDEVZAxis
62. TimeBodyAccelerometerJerkSTDDEVXAxis
63. TimeBodyAccelerometerJerkSTDDEVYAxis
64. TimeBodyAccelerometerJerkSTDDEVZAxis
65. TimeBodyGyroscopeSTDDEVXAxis
66. TimeBodyGyroscopeSTDDEVYAxis
67. TimeBodyGyroscopeSTDDEVZAxis
68. TimeBodyGyroscopeJerkSTDDEVXAxis
69. TimeBodyGyroscopeJerkSTDDEVYAxis
70. TimeBodyGyroscopeJerkSTDDEVZAxis
71. TimeBodyAccelerometerMagnitudeSTDDEV
72. TimeGravityAccelerometerMagnitudeSTDDEV
73. TimeBodyAccelerometerJerkMagnitudeSTDDEV
74. TimeBodyGyroscopeMagnitudeSTDDEV
75. TimeBodyGyroscopeJerkMagnitudeSTDDEV
76. FrequencyBodyAccelerometerSTDDEVXAxis
77. FrequencyBodyAccelerometerSTDDEVYAxis
78. FrequencyBodyAccelerometerSTDDEVZAxis
79. FrequencyBodyAccelerometerJerkSTDDEVXAxis
80. FrequencyBodyAccelerometerJerkSTDDEVYAxis
81. FrequencyBodyAccelerometerJerkSTDDEVZAxis
82. FrequencyBodyGyroscopeSTDDEVXAxis
83. FrequencyBodyGyroscopeSTDDEVYAxis
84. FrequencyBodyGyroscopeSTDDEVZAxis
85. FrequencyBodyAccelerometerMagnitudeSTDDEV
86. FrequencyBodyAccelerometerJerkMagnitudeSTDDEV
87. FrequencyBodyGyroscopeMagnitudeSTDDEV
88. FrequencyBodyGyroscopeJerkMagnitudeSTDDEV
