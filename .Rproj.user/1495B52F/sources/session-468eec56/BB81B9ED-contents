# Load the necessary library
library(ggplot2)

# Create the histogram for maximum daily temperature
p <- ggplot(airquality, aes(x = Temp)) + 
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Maximum Daily Temperature",
       x = "Temperature (°F)",
       y = "Frequency") +
  theme_minimal()

# Print the plot
print(p)
