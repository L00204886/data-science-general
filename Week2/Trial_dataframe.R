Subject<-c(1:7)
Gender<-c('Male','Male', 'Male',NA,'Female', 'Female', 'Female')
Age<- c(23,34,32,54,65,45,35)
Weight<- c(67.5, NA, 63.7, 56.8, 89.9, 87.5, 77.5)
Trial <-data.frame(Subject, Gender, Age, Weight)
View(Trial)

# Row, column
Trial[4,3]
Trial[,3]

library(data.table)
setnames(Trial, old= 'Subject', new='Participant')
View(Trial)

Trial[!complete.cases(Trial),]



#Set weight of participant 2 to 65 

Trial$Weight[Trial$Participant==2]



Trial$Weight [Trial$Participant==2] <- 65.0

#set gender of participant 4 to 'Female'

Trial$Gender [Trial$Participant ==4] <- 'Female'

