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


#Deliverable 3
t.test(suspen$PSI, mu=1500)

#Lot1
lot1 <- subset(suspen, Manufacturing_Lot == "Lot1")
t.test(lot1$PSI, mu=1500)

#Lot2
lot2 <- subset(suspen, Manufacturing_Lot == "Lot2")
t.test(lot2$PSI, mu=1500)

#Lot3
lot3 <- subset(suspen, Manufacturing_Lot == "Lot3")
t.test(lot3$PSI, mu=1500)
