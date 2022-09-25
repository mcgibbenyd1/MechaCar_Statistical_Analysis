# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

A dataset for 50 MechaCars mpg test results was analyzed. A Multiple linear regression was conducted to inspect the variables included to see which provide a significant contribution to the linear model. The p-values of the individual variables were reviewed.

In the figure below you can see the output that was produced by using the lm() and summary() functions within RStudio. 

<p align="center">  
<img src="https://github.com/mcgibbenyd1/MechaCar_Statistical_Analysis/blob/main/Multiple_Regression_D1.png" width="95%"/>
</p>

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

From the results the variables for vehicle_weight and ground_clearance (as well as the intercept) are statistically unlikely to provide random amounts of variance to the linear model and have a significant impact on the mpg performance.  

- Is the slope of the linear model considered to be zero? Why or why not?

Within the output of the lm() function you will find the coefficients to satisfy the slope of each variable (mpg ~ vehicle_length + vehicle_weight + spoiler_angle  + ground_clearance + AWD + intercept). 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Due to the intercept being statistically impactful if each variable was set to zero, it can be assummed that there are external influence that affect the model that were not included within the dataset. Transforming the dataset with log10() did not improve the results. Although the number of significant variables the summary dat for the R-squared value was .71 with a significant p-value. Evidence of overfitting.  

## Summary Statistics on Suspension Coils

A dataset containing the results from multiple production lots for suspension coils was analyzed with the basic statistic summary of  mean, median, variance, and standard deviation. The total population was reviewed and then each lot individually.

<p align="center">  
<img src="https://github.com/mcgibbenyd1/MechaCar_Statistical_Analysis/blob/main/total_summary_table_D2.png" width="40%"/>
</p>

<p align="center">  
<img src="https://github.com/mcgibbenyd1/MechaCar_Statistical_Analysis/blob/main/lot_summary_table_D2.png" width="55%"/>
</p>

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The overall population satisfied the design specification but indicated a large variance and standard deviation. When reveiwing each individual lot: Lot1 has a perfect centering of collected data, Lot2 has a high variance indicating that even though the lot is centered there are a few data points that were equally spaced higher and lower than nominal, Lot3 is negatively skewed and contributing to almost all the variance in the population and should be rejected as the variance is indicating this lot is not in control with a variance of 170 which is higher than the 100 pounds per square inch allowance. 

## T-Tests on Suspension Coils



## Study Design: MechaCar vs Competition