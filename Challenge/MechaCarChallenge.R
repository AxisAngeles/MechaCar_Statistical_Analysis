# -----------------------------------------------------------------------
# DELIVERABLE 1. Linear Regression to Predict MPG
# -----------------------------------------------------------------------

# Step 3. Libraries
library(dplyr)

# Step 4. Import Data
mechaCar_mpg <- read.csv('../Resources/MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)
head(mechaCar_mpg, 5)

# Step 5. Perform Linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_mpg)

# Step 6. Determine the p-value and the r-squared value 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar_mpg) %>% summary()


# -----------------------------------------------------------------------
# DELIVERABLE 2. Statistical Summary
# -----------------------------------------------------------------------

# Step 2. Import File
suspension_coil <- read.csv('../Resources/Suspension_Coil.csv',check.names = F, stringsAsFactors = F)

# Step 3. Create a total_summary
total_summary <- summarize(suspension_coil, mean(PSI),median(PSI),var(PSI),sd(PSI))

# Step 4. Create a Summary by lot
susp_coil <- suspension_coil[2:3]
lot_summary <- group_by(susp_coil,Manufacturing_Lot) %>% summarize(,mean(PSI),median(PSI),var(PSI),sd(PSI))


# -----------------------------------------------------------------------
# DELIVERABLE 3. t-Testing
# -----------------------------------------------------------------------

# Step 1. One sample t-test
t.test(susp_coil$PSI, mu=1500)

# Step 2. One sample t-test by Lot
for (i in 1:3){
  lot <- paste0('Lot',i)
  susp_coil <- subset(suspension_coil[2:3],Manufacturing_Lot==lot,) # subset by lot
  print(paste0('t-Testing for Lot',i)) 
  print(t.test(susp_coil$PSI, mu=1500)) #print t-test results
}





