# Step 1: Create the dataset
temperature <- c(-5, -7, 5, 10, 18, 22, 28, 25, 16, 10, 2, -3)
heaters_sold <- c(98, 100, 75, 67, 24, 26, 25, 27, 40, 55, 88, 95)

data <- data.frame(Temperature = temperature, Heaters_Sold = heaters_sold)

# Step 2: Perform linear regression
model <- lm(Heaters_Sold ~ Temperature, data = data)

# Step 3: View the summary of the model
summary(model)

# Step 4: Plot the data and the regression line
plot(data$Temperature, data$Heaters_Sold, 
     main = "Relationship Between Temperature and Heaters Sold",
     xlab = "Temperature (°C)", 
     ylab = "Number of Heaters Sold",
     pch = 19, col = "blue")

# Add the regression line to the plot
abline(model, col = "red")
