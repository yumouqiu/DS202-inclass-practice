## PRACTICE
### 1
### Print and take a look at the first 10 data records of the cities data
```
head(cities, 10)
```

### 2
### Compute mean and standard deviation for the number of burglaries. Why do you get NAs? (read ?NA)
```
num_burglaries = cities[, c("Burglary")]
```
```
mean_burglaries = mean(num_burglaries)
stddev_burglaries = sd(num_burglaries)
print(mean_burglaries)
print(stddev_burglaries)
?NA
```
We get NAs because there are missing values in the data set.

### 3
### Advanced: Read ?mean and ?sd, and fix missing value problem
```
?mean
?sd
num_burglaries <- na.omit(num_burglaries)
mean(num_burglaries)
sd(num_burglaries)
```


## Practicing asking questions
### 1. What is the correlation between the variables Robbery and Arson?
```
cor(cities$Robbery, cities$Arson)
```
### 2. 
