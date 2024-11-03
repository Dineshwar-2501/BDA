# Load necessary library
library(ggplot2)
data<-data.frame(
  ozone=c(41,36,12,13,NA,28),month=rep(5,6)
)
ggplot(data,aes(x=month,y=ozone)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Ozone Concentration per Month", x = "Month", y = "Ozone Concentration (ppb)") +
  theme_minimal()


