# Load necessary library
library(ggplot2)
library(reshape2)
# Create a boxplot for Wind speed
p <- ggplot(airquality, aes(y = Wind)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(title = "Boxplot of Wind Speed",
       y = "Wind Speed (mph)") +
  theme_minimal()

# Print the plot
print(p)


# Reshape the airquality dataset to long format
airquality_long <- melt(airquality[, c("Ozone", "Solar.R", "Wind", "Temp")], 
                        variable.name = "Parameter", 
                        value.name = "Value")

# Create multiple boxplots for all air quality parameters
p_multiple <- ggplot(airquality_long, aes(x = Parameter, y = Value)) +
  geom_boxplot(fill = "lightblue", color = "black") +
  labs(title = "Boxplots of Air Quality Parameters",
       x = "Air Quality Parameter",
       y = "Value") +
  theme_minimal()


# Print the multiple boxplots
print(p_multiple)