# This script builds the managers dataset
# and populates it with data
# Refer to the notes on Blackboard for further information
# on this practical


# Enter data into vectors before constructing the data frame
Manager <- c(1:5)
Date <- c("2018-15-10", "2018-01-11", "2018-21-10", "2018-28-10", "2018-01-05")
Country <- c("US", "US", "IRL", "IRL", "IRL")
Gender <- c("M", "F", "F", "M", "F")
Age <- c(32, 45, 25, 39, 99) # 99 is one of the values in the age attribute - will require recoding
Q1 <- c(5, 3, 3, 3, 2)
Q2 <- c(4, 5, 5, 3, 2)
Q3 <- c(5, 2, 5, 4, 1)
Q4 <- c(5, 5, 5, NA, 2) # NA is inserted in place of the missing data for this attribute
Q5 <- c(5, 5, 2, NA, 1)
managers_data <- data.frame(Manager, Date, Country,Gender,Age,Q1,Q2,Q3,Q4,Q5)
View(managers_data)

managers_data[1:5,]
str(managers_data)



# Recode the incorrect 'age' data to NA

managers_data$Age[managers_data$Age == 99] <- NA
managers_data



#managers_data[1:3,]



# drop Manager column



managers_data_1 <- subset(managers_data, select = -Manager)
managers_data_1
View(managers_data_1)

managers_data_2 <- subset(managers_data, select = -1)
managers_data_2
View(managers_data_2)

managers_data <- managers_data[,c(2:10)]
managers_data


# Help's with finding the structure and data type
str(managers_data)


# Create a new attribute called AgeCat and set valuess


managers_data$AgeCat <-5
managers_data

managers_data$AgeCat <- c(1,2,3,4,5)
managers_data

managers_data <- managers_data[,c(1:9)]
managers_data

# in AgeCat to the following if true:
# <= 25 = Young
# >= 26 & <= 44 = Middle Aged
# >= 45 = Elderly
# We will also recode age 'NA' to Elder
managers_data$AgeCat[managers_data$Age <= 25] <- "Young"
managers_data$AgeCat[managers_data$Age >= 26 & managers_data$Age <= 44] <- "Middle Aged"
managers_data$AgeCat[managers_data$Age >= 45] <- "Elder"
managers_data$AgeCat[is.na(managers_data$Age)] <- "Elder"
managers_data
View(managers_data)

class(managers_data$AgeCat)
# Recode AgeCat so that is ordinal and factored with the
# order Young, Middle aged, Elder
# We'll store the ordinal factored data in variable 'AgeCat'
managers_data$AgeCat <- factor(managers_data$AgeCat, order = TRUE, levels = c("Young", "Middle Aged", "Elder"))
#factor(managers_data$AgeCat, order = TRUE, levels = c("Young", "Middle Aged", "Elder"))

class(managers_data$AgeCat)
# Replace managers's AgeCat attribute with newly ordinal foctored data
#managers_data$AgeCat <- AgeCat
#managers_data

# contains a summary of each row

managers_data$summary_col <- managers_data$Q1 + managers_data$Q2 + managers_data$Q3 + managers_data$Q4 + managers_data$Q5
View(managers_data)

managers_data <- managers_data[, c(1:10)]
View(managers_data)

summary_col <- managers_data$Q1 + managers_data$Q2 + managers_data$Q3 + managers_data$Q4 + managers_data$Q5
managers_data <- data.frame(managers_data, summary_col)
managers_data