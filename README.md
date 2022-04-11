# MechaCar Statistical Analysis
 Statistical study to compare vehicle performance using linear regression models and t-tests on vehicle production metrics.
## Resources:
* RStudio
* mpg test results in MechaCar_mpg.csv
* multiple production metrics in Suspension_Coil.csv
## Linear Regression to Predict MPG:
Using RStudio I displayed multiple linear regression model to predict MPG using lm() function. I also used vehicle length, weight, spoiler angle, ground clearance and AWD  as independent variables.

![LM_multi variables](https://user-images.githubusercontent.com/96354508/162644566-e1919cc4-d15b-4764-8f57-85d434489db7.png)

According to the summary, vehicle length and ground clearance have a significant impact to MPG (Pr(>|t|), probability that each coefficient contributes a random amount of variance to the linear model, is extremely small).
p-value: 5.35e-11 is smaller than significance level of 0.05% which means that null hypotheses - the slope of the linear model is zero - should be rejected. In other words, we can predict MPG using linear model with vehicle length and ground clearance values.
Multiple R-squared: 0.7149 means that the regression model can approximate MPG with 71% probability.
## Summary Statistics on Suspension Coils:

![Population_Summary](https://user-images.githubusercontent.com/96354508/162644547-9154de01-60db-4233-8596-32cb3415af2b.png)


![Lot_Summary](https://user-images.githubusercontent.com/96354508/162644559-ff6909ab-c3c6-4d32-93d5-f2ef803585ca.png)

![population_t_test](https://user-images.githubusercontent.com/96354508/162644792-1fb463ce-76b3-445c-b7c6-529e2210d8d9.png)

![t_test_for_all_lots](https://user-images.githubusercontent.com/96354508/162644797-054524bd-b36f-4654-9a8c-783d9e921705.png)

## Study Design: MechaCar vs Competition 
It would be possible to analyze production metrics of other vehicles and different lots. Similar data for vehicles would allow comparison between MechaCars production and its competition. Such data should include vehicle production and performance specifications. Many metrics could be tested to identify vehicle performance including miles per gallon, car weight, and other physical features that relate to performance.

**Hypotheses:**
In order to properly test and build models a null and alternative hypothesis is required. My hypothesis would be "Can a car's spoiler angle related to mpg?"

*Null Hypothesis:* It is likely that spoiler angle has no relation to mpg and there will be not be sufficient evidence of a relationship

*Alternate Hypothesis:* There will be sufficient evidence of a relationship to reject the null hypothesis.

**Hypotheses Test**

Similar multiple linear regression models and t-tests could be used on the vehicle data with a significance level of 0.05%.

