#Deliverable 1: Linear Regression to Predict MPG
#Perform multiple linear regression analysis to identify which variables in the dataset predict the [MPG] of MechaCar prototypes
# import dplyr package
library(dplyr)

# Import and read dataset as a dataframe
MechaCar_mpg <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

#  linear regression model on all six variables [15.7.2(single)/15.7.3(multiple)]
lm(MechaCar$mpg ~ MechaCar$vehicle_length + 
              MechaCar$vehicle_weight + 
              MechaCar$spoiler_angle +
              MechaCar$ground_clearance +
              MechaCar$AWD, MechaCar)

#Summary Function for Multiple Linear Regression[15.7.3]
summary(lm(MechaCar$mpg ~ MechaCar$vehicle_length + 
             MechaCar$vehicle_weight + 
             MechaCar$spoiler_angle +
             MechaCar$ground_clearance +
             MechaCar$AWD, MechaCar))


#Deliverable 2: Create Visualizations for the Trip Analysis
#Collect summary statistics on the pounds per square inch (PSI) of the [SUSPENSION COILS] from the manufacturing lots
# Import and read suspension_coil dataset as a dataframe
suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

#Getting mean, median, variance, and standard deviation of the suspension coil's PSI column-15.2.5
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI),
                                               Median = median(PSI),
                                               Variance = var(PSI),
                                               SD = sd(PSI))

total_summary

#summarize to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column-15.2.5
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI),
                                                                             Variance = var(PSI),
                                                                             SD = sd(PSI))

#Deliverable 3: T-Tests on Suspension Coils

# t-test-15.4.1, example
#to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 PSI
t.test(suspension_coil$PSI, mu=1500)
