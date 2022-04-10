# import dplyr package
library(dplyr)

# Import and read dataset as a dataframe
MechaCar_mpg <- read.csv(file="MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# linear regression [Run a Multiple Linear Regression RScript 15.7.3]
model <- lm(MechaCar_mpg$mpg ~ MechaCar_mpg$vehicle_length + 
              MechaCar_mpg$vehicle_weight + 
              MechaCar_mpg$spoiler_angle +
              MechaCar_mpg$ground_clearance +
              MechaCar_mpg$AWD, MechaCar)

#Summary Function for Multiple Linear Regression-15.7.3
summary(model)
