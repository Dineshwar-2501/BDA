# Load necessary libraries
library(ggplot2)

# Load the dataset
mall_data <- read.csv("Mall_Customers.csv")

# Check the structure of the dataset
str(mall_data)

# Select relevant features for clustering (e.g., Age and Annual Income)
# Adjust the column names based on your dataset
# Here, I'm assuming there are columns named 'Age' and 'Annual.Income'
data_for_clustering <- mall_data[, c("Age", "Annual.Income")]

# Standardize the data (optional but recommended)
data_scaled <- scale(data_for_clustering)

# Set random seed for reproducibility
set.seed(123)

# Perform k-means clustering with 3 clusters (you can adjust the number of clusters)
kmeans_model <- kmeans(data_scaled, centers = 3)

# Add the cluster assignment to the original data
mall_data$Cluster <- as.factor(kmeans_model$cluster)

# Plot the clustering results
ggplot(mall_data, aes(x = Age, y = Annual.Income, color = Cluster)) +
  geom_point(size = 3) +
  labs(title = "K-Means Clustering of Mall Customers",
       x = "Age",
       y = "Annual Income") +
  theme_minimal()
