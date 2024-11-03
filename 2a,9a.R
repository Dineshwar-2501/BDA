# Define the data
age <- c(10, 20, 30, 60, 70, 80, 35)  
survived <- c(0, 0, 0, 0, 1, 1, 1)

# Fit the logistic regression model
model <- glm(survived ~ age, family = binomial)

# Make predictions
predicted <- predict(model, type = "response")

# Create the plot
plot(age, survived, pch = 19, col = "blue", ylim = c(0, 1), 
     xlab = "Age", ylab = "Survival Rate", 
     main = "Logistic Regression: Age vs. Survival Rate")

# Add the logistic regression line
lines(sort(age), predicted[order(age)], col = "red", lwd = 2)

# Optional: Add data points above the markers for clarity
text(age, survived + 0.02, labels = survived, cex = 0.8, col = "blue")
