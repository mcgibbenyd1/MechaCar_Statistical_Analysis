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

<p align="center">  
<img src="https://github.com/mcgibbenyd1/MechaCar_Statistical_Analysis/blob/main/total_summary_table_D2.png" width="40%"/>
</p>

<p align="center">  
<img src="https://github.com/mcgibbenyd1/MechaCar_Statistical_Analysis/blob/main/lot_summary_table_D2.png" width="55%"/>
</p>

## T-Tests on Suspension Coils



## Study Design: MechaCar vs Competition
