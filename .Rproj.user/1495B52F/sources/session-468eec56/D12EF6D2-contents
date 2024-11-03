# Create a sample dataset
set.seed(123)  # For reproducibility
n <- 100  # Number of customers

Mall_Customers <- data.frame(
  CustomerID = 1:n,
  Age = sample(18:70, n, replace = TRUE),
  Annual.Income = sample(30000:150000, n, replace = TRUE),
  Spending.Score = sample(1:100, n, replace = TRUE)
)

# Write the dataset to a CSV file
write.csv(Mall_Customers, "Mall_Customers.csv", row.names = FALSE)

# Display the first few rows of the dataset
head(Mall_Customers)
