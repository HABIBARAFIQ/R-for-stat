colSums(is.na(LungCapData))
# Mean
mean(LungCapData$`LungCap(cc)`, na.rm = TRUE)

# Median
median(LungCapData$`LungCap(cc)`, na.rm = TRUE)

# Mode: categorical data-r frequent value
names(which.max(table(LungCapData$Gender)))

# Variance
var(LungCapData$`LungCap(cc)`, na.rm = TRUE)

# Standard deviation
sd(LungCapData$`LungCap(cc)`, na.rm = TRUE)

# Minimum ও maximum
min(LungCapData$`LungCap(cc)`, na.rm = TRUE)
max(LungCapData$`LungCap(cc)`, na.rm = TRUE)

# Range
range(LungCapData$`LungCap(cc)`, na.rm = TRUE)
summary(LungCapData$`LungCap(cc)`)

# Quantiles
quantile(
  LungCapData$`LungCap(cc)`,
  probs = c(0, 0.25, 0.50, 0.75, 1),
  na.rm = TRUE
)

# Interquartile range
IQR(LungCapData$`LungCap(cc)`, na.rm = TRUE)

#Frequency Table
# Frequency
table(LungCapData$Smoke)

# Relative frequency
prop.table(table(LungCapData$Smoke))

# Percentage
prop.table(table(LungCapData$Smoke)) * 100

prop.table(
  table(LungCapData$Gender, LungCapData$Smoke),
  margin = 1
) * 100

# Mean by smoking status
tapply(
  LungCapData$`LungCap(cc)`,
  LungCapData$Smoke,
  mean,
  na.rm = TRUE
)

# SD by smoking status
tapply(
  LungCapData$`LungCap(cc)`,
  LungCapData$Smoke,
  sd,
  na.rm = TRUE
)
#same work
aggregate(
  `LungCap(cc)` ~ Smoke,
  data = LungCapData,
  FUN = mean
)
# Missing value count
sum(is.na(LungCapData$`LungCap(cc)`))

# Missing বাদ দিয়ে mean
mean(LungCapData$`LungCap(cc)`, na.rm = TRUE)

# Unique values
unique(LungCapData$Smoke)
#Correlation ও Covariance
#যেসব row-তে দুইটি variable-এর কোনো value missing (NA) নেই,
#শুধু সেই row-গুলো ব্যবহার করে calculation করা।
cor(
  LungCapData$`Age( years)`,
  LungCapData$`LungCap(cc)`,
  use = "complete.obs"
)

cov(
  LungCapData$`Age( years)`,
  LungCapData$`LungCap(cc)`,
  use = "complete.obs"
)
#trim = 0.1 → নিচের দিকের 10% এবং ওপরের দিকের 10% value বাদ দিয়ে mean হিসাব করবে।