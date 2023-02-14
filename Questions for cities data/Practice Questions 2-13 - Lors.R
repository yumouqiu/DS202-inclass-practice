cities$State[1 : 10]

#Three lines below all return the populations of each city.
cities$Population

cities[, "Population"]

cities[, 2];

# Three lines below all return the Cities from rows 2 - 10.
cities$City[c(2 : 10)]

cities[c(2 : 10), "City"]

cities[c(2 : 10), 1]

# Returns the correlation of two variables from the same data set (cities).
cor(cities$Robbery, cities$Murder)

# Assigning a data frame to a variable (produced in environment)
a = cities[, c("Robbery", "Murder", "Year")]

# Same as above but only returns Robbery and Murder for the year 2006
a1 = a[1 : 96, ]
a1

# Return the minimum and maximum values for "a_year"
min(a1$Murder)
max(a1$Murder)

# PRACTICE
# 1
# Print and take a look at the first 10 data records of the cities data
head(cities, 10)

# 2
# Compute mean and standard deviation for the number of burglaries. Why do you get NAs? (read ?NA)
num_burglaries = cities[, c("Burglary")]

mean_burglaries = mean(num_burglaries)
stddev_burglaries = sd(num_burglaries)
print(mean_burglaries)
print(stddev_burglaries)
?NA
# We get NAs because there is missing values in the data set.

# 3
# Advanced: Read ?mean and ?sd, and fix missing value problem
?mean
?sd
num_burglaries <- na.omit(num_burglaries)
mean(num_burglaries)
sd(num_burglaries)


# Practicing asking questions
# What is the correlation between the variables Robbery and Arson?
cor(cities$Robbery, cities$Arson)