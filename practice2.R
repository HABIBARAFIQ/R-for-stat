#save Excel file in CSV format
#read.csv() দিয়ে data import
data <- read.csv(file.choose(),header = TRUE)
data
#if no column names in 1st row Then header = FALSE
data1 <- read.table(file.choose(),header = TRUE,sep = ',')
#tab-delimited file
data2 <- read.table(file.choose(),header = TRUE,sep = '\t')
#or tab-delimited file
data3 <- read.delim(file.choose(),header = TRUE)

head(data)

# no row and no column 
dim(data)

# Column names 
names(data)

#data type of column
str(data)

# row 
nrow(data)

# column
ncol(data)

#for excel reading
library(readxl)
LungCap <- read_excel("C:/Users/habiba/Downloads/LungCap.xls")
View(LungCap)
mean(LungCap$`Age( years)`)
#mean(`Age( years)`) will not work

attach(LungCap) #so that we dont have to write repeatedly Lungcap every time 
mean(`Age( years)`)
# for getting all colm names
names(LungCap)

class(`LungCap(cc)`)
class(`Age( years)`)
class(`Height(inches)`)
class(Smoke)
class(LungCap$Gender)
class(Caesarean)
summary(LungCap)
Smoke <- as.factor(Smoke)
Gender <- as.factor(Gender)
Caesarean <- as.factor(Caesarean)
summary(LungCap)
class(Gender)
levels(Gender)
summary(Gender)

#Subsetting of data
LungCap[11:14, 2]
LungCap[11:14, ]
LungCap[, 2]
Age <- `Age( years)`
Age[11:15]
#mean age of female
mean(Age[Gender == "female"])
#Male over 15 years old
maleover15 <- LungCap[Gender == "male" & Age>15,]
maleover15
dim(maleover15)

#cbind() = column bind - add colm
#rbind() = row bind - add row
Name <- c("Ayesha", "Rahim", "Nadia")
Age <- c(20, 22, 21)

Students <- cbind(Name, Age)
Students

Students <- data.frame(
  Name = c("Ayesha", "Rahim"),
  Age = c(20, 22)
)
Students
Students <- rbind(
  Students,
  data.frame(Name = "Nadia", Age = 21)
)
Students


