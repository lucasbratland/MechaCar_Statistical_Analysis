library(tidyverse)

#Deliverable 1
mechacar <- read.csv("Resources/MechaCar_mpg.csv")
head(mechacar)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar))


#Deliverable 2
suspen <- read.csv("Resources/Suspension_Coil.csv")
total_summary <- suspen %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep')
lot_summary <- suspen %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep')
