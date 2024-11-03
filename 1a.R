# Clear graphics device
if (dev.cur() != 1) {
  dev.off()
}

# Data
bmi <- c(20.5, 21, 22, 23.5)
height <- c(120, 125, 130, 135)
weight <- c(50, 55, 60, 65)

# 1. BMI and Height
model_bmi_height <- lm(height ~ bmi)
summary(model_bmi_height)
plot(bmi, height, main = "Height vs BMI", xlab = "BMI", ylab = "Height", pch = 19)
abline(model_bmi_height, col = "red")

# 2. Height and Weight
model_height_weight <- lm(weight ~ height)
summary(model_height_weight)
plot(height, weight, main = "Weight vs Height", xlab = "Height", ylab = "Weight", pch = 19)
abline(model_height_weight, col = "blue")

# 3. Weight and BMI
model_weight_bmi <- lm(bmi ~ weight)
summary(model_weight_bmi)
plot(weight, bmi, main = "BMI vs Weight", xlab = "Weight", ylab = "BMI", pch = 19)
abline(model_weight_bmi, col = "green")

