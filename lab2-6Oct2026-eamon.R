# 1. Load the managers dataset and check for NAs
managers_data <- read.csv("Week3/managers.csv", na.strings = c("NA", ""))
managers_data

# Check count and locations of missing values
sum(is.na(managers_data))
colSums(is.na(managers_data))

# 2. Convert the Date field to a Date variable
# The dates in the CSV appear in multiple formats: "%Y-%d-%m" and "%m/%d/%Y"
managers_data$Date <- as.Date(
  managers_data$Date, 
  tryFormats = c("%Y-%d-%m", "%m/%d/%Y", "%Y-%m-%d")
)
str(managers_data$Date)

# 3. Select records between 15-10-18 and 01-11-18 (inclusive)
startdate <- as.Date("2018-10-15")
enddate   <- as.Date("2018-11-01")

date_subset <- managers_data[managers_data$Date >= startdate & managers_data$Date <= enddate, ]
date_subset

# 4. Drop the Q3 and Q4 attributes from the data frame
# Method A: Using column names / subset function
managers_no_q3_q4 <- subset(managers_data, select = -c(Q3, Q4))
# Method B: Using negative indexing with match
# managers_no_q3_q4 <- managers_data[, !(names(managers_data) %in% c("Q3", "Q4"))]
managers_no_q3_q4

# 5. Find records where manager's age is between 23 and 35; show only Q1 to Q4
# Note: na.rm / !is.na handling prevents NA rows when Age is NA
age_subset <- managers_data[!is.na(managers_data$Ag) & managers_data$Age >= 23 & managers_data$Age <= 35, c("Q1", "Q2", "Q3", "Q4")]
age_subset

# 6. Subset of managers where Gender = 'M' and Age > 25; show Gender to Q4 inclusive
male_subset <- subset(
  managers_data, 
  Gender == "M" & Age > 25, 
  select = Gender:Q4
)
male_subset