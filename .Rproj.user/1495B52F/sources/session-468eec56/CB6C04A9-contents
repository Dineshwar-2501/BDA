# Step 1: Create the dataset
experience <- c(2, 3, 10, 7, 8, 15, 3, 1, 11)
sales <- c(39, 41, 86, 70, 73, 69, 56, 63, 128)


# Step 2: Perform linear regression
model <- lm(sales ~ experience)

# Step 3: View the summary of the model
#summary(model)

# Step 4: Plot the data and the regression line
plot(experience,sales, 
     main = "Relationship Between Experience and Sales",
     xlab = "Years of Experience", 
     ylab = "Average Monthly Sales (in thousands)",
     pch = 19, col = "blue")

# Add the regression line to the plot
abline(model, col = "red")
