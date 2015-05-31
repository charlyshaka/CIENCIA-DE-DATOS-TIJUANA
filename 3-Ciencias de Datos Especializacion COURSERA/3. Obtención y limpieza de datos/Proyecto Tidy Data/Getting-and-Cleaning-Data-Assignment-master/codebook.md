# Code Book
This summarized data contains processed signal measurements for 30 different volunteers, each participating in 6 different activities.  The data was obtained using a smartphone equipped with an accelerometer and gyroscope, measuring tAcc-XYZ and tGyro-XYZ respectively.  The features were derived from manipulations of tAcc-XYZ and tGyro-XYZ.  The data has been summarized into 66 feature columns, all containing mean measurements of data that has been normalized and bounded within [-1,1].  Detailed information on the how the measurements were obtained and processed can be found from the UCI - Human Activity Recognition Using Smartphones Data Set website (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

##. Column Names
1. Subject
  * Subjects are assigned an integer 
  * (1, 2, 3, ... , 30)
2. Activity
  * (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3. tBodyAcc-mean()-X
  * Average mean measurement for the tBodyAcc feature along the X axis
4. tBodyAcc-mean()-Y
  * Average mean measurement for the tBodyAcc feature along the Y axis
5. tBodyAcc-mean()-Z
  * Average mean measurement for the tBodyAcc feature along the Z axis
6. tBodyAcc-std()-X
  * Average standard deviation measurement for the tBodyAcc feature along the X axis
7. tBodyAcc-std()-Y
  * Average standard deviation measurement for the tBodyAcc feature along the Y axis
8. tBodyAcc-std()-Z
  * Average standard deviation measurement for the tBodyAcc feature along the Z axis
9. tGravityAcc-mean()-X
  * Average mean measurement for the tGravityAcc feature along the X axis
10. tGravityAcc-mean()-Y
  * Average mean measurement for the tGravityAcc feature along the Y axis
11. tGravityAcc-mean()-Z
  * Average mean measurement for the tGravityAcc feature along the Z axis
12. tGravityAcc-std()-X
  * Average standard deviation measurement for the tGravityAcc feature along the X axis
13. tGravityAcc-std()-Y
  * Average standard deviation measurement for the tGravityAcc feature along the Y axis
14. tGravityAcc-std()-Z
  * Average standard deviation measurement for the tGravityAcc feature along the Z axis
15. tBodyAccJerk-mean()-X
  * Average mean measurement for the tBodyAccJerk feature along the X axis
16. tBodyAccJerk-mean()-Y
  * Average mean measurement for the tBodyAccJerk feature along the Y axis
17. tBodyAccJerk-mean()-Z
  * Average mean measurement for the tBodyAccJerk feature along the Z axis
18. tBodyAccJerk-std()-X
  * Average standard deviation measurement for the tBodyAccJerk feature along the X axis
19. tBodyAccJerk-std()-Y
  * Average standard deviation measurement for the tBodyAccJerk feature along the Y axis
20. tBodyAccJerk-std()-Z
  * Average standard deviation measurement for the tBodyAccJerk feature along the Z axis
21. tBodyGyro-mean()-X
  * Average mean measurement for the tBodyGyro feature along the X axis
22. tBodyGyro-mean()-Y
  * Average mean measurement for the tBodyGyro feature along the Y axis
23. tBodyGyro-mean()-Z
  * Average mean measurement for the tBodyGyroyro feature along the Z axis
24. tBodyGyro-std()-X
  * Average standard deviation measurement for the tBodyGyro feature along the X axis
25. tBodyGyro-std()-Y
  * Average standard deviation measurement for the tBodyGyro feature along the Y axis
26. tBodyGyro-std()-Z
  * Average standard deviation measurement for the tBodyGyro feature along the Z axis
27. tBodyGyroJerk-mean()-X
  * Average mean measurement for the tBodyGyroJerk feature along the X axis
28. tBodyGyroJerk-mean()-Y
  * Average mean measurement for the tBodyGyroJerk feature along the Y axis
29. tBodyGyroJerk-mean()-Z
  * Average mean measurement for the tBodyGyroJerk feature along the Z axis
30. tBodyGyroJerk-std()-X
  * Average standard deviation measurement for the tBodyGyroJerk feature along the X axis
31. tBodyGyroJerk-std()-Y
  * Average standard deviation measurement for the tBodyGyroJerk feature along the Y axis
32. tBodyGyroJerk-std()-Z
  * Average standard deviation measurement for the tBodyGyroJerk feature along the Z axis
33. tBodyAccMag-mean()
  * Average mean measurement for the tBodyAccMag
34. tBodyAccMag-std()
  * Average standard deviation measurement for the tBodyAccMag
35. tGravityAccMag-mean()
  * Average mean measurement for the tGravityAccMag
36. tGravityAccMag-std()
  * Average standard deviation measurement for the tGravityAccMag
37. tBodyAccJerkMag-mean()
  * Average mean measurement for the tBodyAccJerkMag
38. tBodyAccJerkMag-std()
  * Average standard deviation measurement for the tBodyAccJerkMag
39. tBodyGyroMag-mean()
  * Average mean measurement for the tBodyGyroMag
40. tBodyGyroMag-std()
  * Average standard deviation measurement for the tBodyGyroMag
41. tBodyGyroJerkMag-mean()
  * Average mean measurement for the tBodyGyroJerkMag
42. tBodyGyroJerkMag-std()
  * Average standard deviation measurement for the tBodyGyroJerkMag
43. fBodyAcc-mean()-X
  * Average mean measurement for the fBodyAcc along the X axis
44. fBodyAcc-mean()-Y
  * Average mean measurement for the fBodyAcc along the Y axis
45. fBodyAcc-mean()-Z
  * Average mean measurement for the fBodyAcc along the Z axis
46. fBodyAcc-std()-X
  * Average standard deviation measurement for the fBodyAcc along the X axis
47. fBodyAcc-std()-Y
  * Average standard deviation measurement for the fBodyAcc along the Y axis
48. fBodyAcc-std()-Z
  * Average standard deviation measurement for the fBodyAcc along the Z axis
49. fBodyAccJerk-mean()-X
  * Average mean measurement for the fBodyAccJerk along the X axis
50. fBodyAccJerk-mean()-Y
  * Average mean measurement for the fBodyAccJerk along the Y axis
51. fBodyAccJerk-mean()-Z
  * Average mean measurement for the fBodyAccJerk along the Z axis
52. fBodyAccJerk-std()-X
  * Average standard deviation measurement for the fBodyAccJerk along the X axis
53. fBodyAccJerk-std()-Y
  * Average standard deviation measurement for the fBodyAccJerk along the Y axis
54. fBodyAccJerk-std()-Z
  * Average standard deviation measurement for the fBodyAccJerk along the Z axis
55. fBodyGyro-mean()-X
  * Average mean measurement for the fBodyGyro along the X axis
56. fBodyGyro-mean()-Y
  * Average mean measurement for the fBodyGyro along the Y axis
57. fBodyGyro-mean()-Z
  * Average mean measurement for the fBodyGyro along the Z axis
58. fBodyGyro-std()-X
  * Average standard deviation measurement for the fBodyGyro along the X axis
59. fBodyGyro-std()-Y
  * Average standard deviation measurement for the fBodyGyro along the Y axis
60. fBodyGyro-std()-Z
  * Average standard deviation measurement for the fBodyGyro along the Z axis
61. fBodyAccMag-mean()
  * Average mean measurement for the fBodyAccMag
62. fBodyAccMag-std()
  * Average standard deviation measurement for the fBodyAccMag
63. fBodyBodyAccJerkMag-mean()
  * Average mean measurement for the fBodyBodyAccJerkMag
64. fBodyBodyAccJerkMag-std()
  * Average standard deviation measurement for the fBodyBodyAccJerkMag
65. fBodyBodyGyroMag-mean()
  * Average mean measurement for the fBodyBodyGyroMag
66. fBodyBodyGyroMag-std()
  * Average standard deviation measurement for the fBodyBodyGyroMag
67. fBodyBodyGyroJerkMag-mean()
  * Average mean measurement for the fBodyBodyGyroJerkMag
68. fBodyBodyGyroJerkMag-std()
  * Average standard deviation measurement for the fBodyBodyGyroJerkMag
