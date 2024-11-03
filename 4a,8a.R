# Load necessary library
library(e1071)

# Create a sample dataset
age <- c(22, 24, 30, 35, 45, 50, 60, 65)
survived <- as.factor(c(0, 0, 0, 1, 1, 0, 1, 0))

# Combine into a data frame
data <- data.frame(age, survived)

# Split the data into training and testing sets
set.seed(123)  # For reproducibility
train_index <- sample(1:nrow(data), 0.7 * nrow(data))
train_data <- data[train_index, ]
test_data <- data[-train_index, ]

# Train the SVM model
model <- svm(survived ~ age, data = train_data)

# Make predictions on the test set
predictions <- predict(model, test_data)

# Plot actual vs predicted
plot(test_data$age, as.numeric(test_data$survived), pch = 19, col = "blue", 
     xlab = "Age", ylab = "Survival", main = "SVM Predicted Survival")
points(test_data$age, as.numeric(predictions), pch = 4, col = "red")

# Print confusion matrix
table(test_data$survived, predictions)
