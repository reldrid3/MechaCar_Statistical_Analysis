###############
#Deliverable 1#
###############

#3. Use the library() function to load the dplyr package.
library(dplyr)
#4. Import and read in the MechaCar_mpg.csv file as a dataframe.
mecha <- read.csv(file='datasets/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#5. Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns),
#   and add the dataframe you created in Step 4 as the data parameter.
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle
            + ground_clearance + AWD, data=mecha) #generate multiple linear regression model
#6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(model) #generate summary statistics

###############
#Deliverable 2#
###############

#2. In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
susp <- read.csv(file='datasets/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#3. Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean,
#   median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- susp %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), STD_PSI=sd(PSI))
#4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions
#   to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s
#   PSI column.
lot_summary <- susp %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), STD_PSI=sd(PSI))

###############
#Deliverable 3#
###############

#1. In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across
#   all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

#2. Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset()
#   argument to determine if the PSI for each manufacturing lot is statistically different from the population mean
#   of 1,500 pounds per square inch.
