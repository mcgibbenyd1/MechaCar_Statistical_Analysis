library(tidyverse)

#Deliverable1:

#Importing Dataset
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Linear Regression to predict MPG
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle  + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle  + ground_clearance + AWD,data=MechaCar_mpg)) #generate summary statistics

#Deliverable2:

#Importing Dataset
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Total Summary Statistics
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),
                                   Median=median(PSI),
                                   Variance=var(PSI),
                                   SD=sd(PSI), .groups = 'keep') #create total summary table

#Lot Summary Statistics
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                      Median=median(PSI),
                                                      Variance=var(PSI),
                                                      SD=sd(PSI), .groups = 'keep') #create lot summary table

#Deliverable3:
#Compare Sample to population mean
t.test(Suspension_Coil$PSI,mu=1500) #compare sample versus population means

#Lot1
lot1 <- Suspension_Coil %>% subset(Manufacturing_Lot=="Lot1")
t.test(lot1$PSI,mu=1500) #compare sample versus population means

#Lot2
lot2 <- Suspension_Coil %>% subset(Manufacturing_Lot=="Lot2")
t.test(lot2$PSI,mu=1500) #compare sample versus population means

#Lot3
lot3 <- Suspension_Coil %>% subset(Manufacturing_Lot=="Lot3")
t.test(lot3$PSI,mu=1500) #compare sample versus population means