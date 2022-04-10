#Deliverable 1: Linear Regression to Predict MPG
#Perform multiple linear regression analysis to identify which variables in the dataset predict the [MPG] of MechaCar prototypes
# import dplyr package
library(dplyr)

# Import and read dataset as a dataframe
MechaCar_mpg <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

#  linear regression model on all six variables [15.7.2(single)/15.7.3(multiple)]
lm(MechaCar_mpg$mpg ~ MechaCar_mpg$vehicle_length + 
              MechaCar_mpg$vehicle_weight + 
              MechaCar_mpg$spoiler_angle +
              MechaCar_mpg$ground_clearance +
              MechaCar_mpg$AWD, MechaCar_mpg)

#Summary Function for Multiple Linear Regression[15.7.3]
summary(lm(MechaCar_mpg$mpg ~ MechaCar_mpg$vehicle_length + 
             MechaCar_mpg$vehicle_weight + 
             MechaCar_mpg$spoiler_angle +
             MechaCar_mpg$ground_clearance +
             MechaCar_mpg$AWD, MechaCar_mpg))


#Deliverable 2: Create Visualizations for the Trip Analysis
#Collect summary statistics on the PSI of the [SUSPENSION COILS] from the manufacturing lots
# Import and read suspension_coil dataset as a dataframe
suspension_coil <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

#Getting mean, median, variance, and standard deviation of the suspension coil's PSI column-15.2.5
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

total_summary

#summarize to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column-15.2.5
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI),
                                                                             Variance = var(PSI),
                                                                             SD = sd(PSI))

#Deliverable 3: T-Tests on Suspension Coils

# t-test[15.4.1 & 15.6.3 & 15.6.4]
#to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 PSI
t.test(suspension_coil$PSI, mu=1500)

# t-test for all 3 lots
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

