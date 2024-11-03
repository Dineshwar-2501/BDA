# Load necessary libraries
library(rpart)
library(rpart.plot)

# Create the dataset
age <- c(22, 24, 30, 35, 45, 50, 60, 65, 70, 75, 80, 85) 
survived <- as.factor(c(0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0)) 
data <- data.frame(Age = age, Survived = survived)

# Train the decision tree model
model <- rpart(Survived ~ Age, data = data, method = "class", control = rpart.control(minsplit = 1))

# Print the model summary
print(model)

# Visualize the decision tree using base R plot
plot(model, uniform = TRUE, margin = 0.1)
text(model, use.n = TRUE, cex = 0.8)

# Enhanced visualization with rpart.plot
rpart.plot(model, type = 3, extra = 104, fallen.leaves = TRUE, cex = 0.8)
