# **MechaCar_Statistical_Analysis**
The following document consists of a quick overview regarding the different statistical analyses made for the AutosRUs’ newest prototype, the **MechaCar**.

#
## **Linear Regression to Predict MPG**

Based on the available production data, the analytics team decided to understand the correlation and predictive capability of the different variables for each vehicle, using the following linear regression model:

### _mpg = X1(vehicle_length) + X2(vehicle_weight) + X3(spoiler_angle) + X4(ground_clearance) + X5(AWD) + Intercept_

<br>Initial Results and findings:
<br>![MPG_LM](https://github.com/AxisAngeles/MechaCar_Statistical_Analysis/blob/main/Resources/MPG_LinReg.PNG)

* The variables (coefficients) with non-random amount of variance to the mpg values are:
    * Intercept (-104)
    * Vehicle_length (+6.27)
    * Ground_clearance (+3.55)

  <br>_Sinificance level of 95%._

* There's a possitive impact from _vehicle length_ and _ground clearance_ to mpg values, which means a _non-0 slope_ of the linear model.

* Finally, notice the **+0.71 R-squared value** at the Summary. Based on this, we conclude the model has a strong correlation and may be used effectively to predict the mpg of MechaCar prototypes.

#
## **Summary Statistics on Suspension Coils**
A second analysis was developed to assess whether if the manufacturing process is consistent across production lots, for which the analytics obtained the following statistics on the Pounds per Square Inch (PSI) of the suspension coils from the different manufacturing lots.

<br>Statistics Summary:
<br>![SuspCoils_Summ](https://github.com/AxisAngeles/MechaCar_Statistical_Analysis/blob/main/Resources/SuspCoils_Summ.PNG)

**Conclussion:**
Based on de NOM-0812DF, which states that the variance of the suspension coils must not exceed 100 pounds per square inch, the overall manufacturing data meets the design specifications regarding PSI variance. 

However, the analysis showed there's an **issue regarding the 3rd lot** specifications.

#
## **T-Tests on Suspension Coils**
To further analyze the issue found at the 3rd lot data, we then proceed to run a series of t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds PSI.

The null and alternative hypotheses are:
* **H0.** No statistical difference.
* **Ha.** There is statistical difference.

<br>t-Testing Results:
<br>![t_Testing](https://github.com/AxisAngeles/MechaCar_Statistical_Analysis/blob/main/Resources/t_Testing.PNG)

**Conclussion:**
As expected, with a _p-value of 0.06_, there's no evidence to reject the null hypthesis, therefor, there's no statistical difference between the overall data and the population mean of 1,500 PSI. This also aplies to the 1st and 2nd lot data.

However, with a _p-value bellow the 0.05_, **3rd lot** t-testing shows a **statistical difference** compared to the population mean. 

#
## **Study Design: MechaCar vs Competition**
Lastly, we conclude our study with a proposed statistical study to compare MechaCar performance against the competitors vehicles.

* Main metrics to be tested:
We propose to address the potential market value concerns by testing the Fuel efficiency by testing the KM/gallon by vehicle.

* Null & alternative hypothesis:
<br> Fuel effiency: 
    * H0. There is no statistical difference on average Km per gallon consumed by MechaCar compared to the competitors vehichles. 
    * Ha. The average km per gallon performance of the MechaCar is above the competition vehicles.

<br>

* ANOVA testing to support a superior MechaCar performance:
Based on the above, we propose to run a One-Tailed Analysis of Variance (ANOVA testing), which is used to compare the means of a continuous numerical variable across a number of groups, in this case, different competitor's vehichles.

* Required data:
To run this analysis, we must meassure the kilometers per gallon performance from a sufficiently large sample of observations accross the top 10 vehicles in the market.

