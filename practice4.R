#barplot
LungCapData <- LungCap
LungCapData
class(Gender)
count <- table(Gender)
barplot(count,xlab = "Gender",ylab = "count",main = "Count Ratio of Gender")
percentage <- (table(Gender)/725)*100
percentage
barplot(percentage,xlab = "Gender",ylab = "%",main = "Percentage Ratio of Gender")
barplot(percentage,xlab = "Gender",ylab = "%",main = "Percentage Ratio of Gender",
        las=1,names.arg = c("Female","Male")
        )
#yplot
barplot(percentage,xlab = "%",ylab = "Gender",main = "Percentage Ratio of Gender",
        las=1,names.arg = c("Female","Male"),horiz = TRUE
)
