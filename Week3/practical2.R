# Refer to notes on blackboard for more information
# Random sampling and subsets

# Load managers dataset first before completing this code
# Download relevant R code from GitHub
# Load managers dataset and replace any missing variables
# with NA

new_managers_data <- read.csv("Week3/MoreData.csv")
managers_data <- read.csv("Week3/managers.csv")

View(new_managers_data)
View(managers_data)

#Check Structure

str(new_managers_data)
str(managers_data)

# Show headers of both dataset

names(managers_data)
names(new_managers_data)


# Made the new dataset the same as the one in managers

# update new_managers_data with matching column names

new_managers_data <- new_managers_data[,c("Date",
                                          "Country",
                                          "Gender",
                                          "Age",
                                          "Q1",
                                          "Q2",
                                          "Q3",
                                          "Q4",
                                          "Q5")]

new_managers_data

# Confirm that both data frames are identical
head(managers_data)
head(new_managers_data)


# ------Calculate additional values and add to data frame -----------

# we can now calculate AgeCat values
# and add to new_managers_data dataframe


attach(new_managers_data)
new_managers_data$AgeCat[Age >= 45] <- "Elder"
new_managers_data$AgeCat[Age >= 26 & Age <= 44] <- "Middle Aged"
new_managers_data$AgeCat[Age <= 25] <- "Young"
new_managers_data$AgeCat[is.na(Age)] <- "Elder"
detach(new_managers_data)

new_managers_data

# create columns Answer.total and  mean.value for new managers data frame


attach(new_managers_data)
new_managers_data$Answer.total <- Q1 + Q2 + Q3 + Q4 + Q5
new_managers_data$mean.value <- rowMeans(new_managers_data[5:9])
detach(new_managers_data)

head(new_managers_data)
head(managers_data)
# ------ Convert date variables to Date type -----------------------

# Now we need to convert the date field to date
# in both data frames
str(managers_data)
str(new_managers_data)

str(managers_data$Date)
str(new_managers_data$Date)
head(managers_data)
head(new_managers_data)


# ------------------- Merge data frames vertically -----------------------
# Now we can combine both datasets with
# rbind function
managers_data <- rbind(managers_data, new_managers_data)
managers_data



managers_data_1 <- managers_data[, 2:13]



managers_data_1 <- rbind(managers_data_1, new_managers_data)
managers_data
str(managers_data_1)
head(managers_data_1)


