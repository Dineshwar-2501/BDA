# Step 1: Create the dataset
temperature <- c(91, 56, 75, 68, 50, 39, 98)
accidents <- c(7, 4, 9, 6, 3, 5, 10)

data <- data.frame(Temperature = temperature, Accidents = accidents)

# Step 2: Perform linear regression
model <- lm(Accidents ~ Temperature, data = data)

# Step 3: View the summary of the model
summary(model)

# Step 4: Plot the data and the regression line
plot(data$Temperature, data$Accidents, 
     main = "Relationship Between Temperature and Traffic Accidents",
     xlab = "High Temperature (°F)", 
     ylab = "Number of Traffic Accidents",
     pch = 19, col = "blue")

# Add the regression line to the plot
abline(model, col = "red")
