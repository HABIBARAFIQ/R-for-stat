#boxplot
LungCapData <- LungCap
LungCapData
boxplot(`LungCap(cc)`, main = "Lung Capacity",
        ylab = "Lung Capacity",las=1)
boxplot(`LungCap(cc)`, main = "Lung Capacity",
        ylab = "Lung Capacity",las=1,prob=c(0,0.25,0.50,0.75,1))
?boxplot
class(Gender)
#LungCapacity by gender
boxplot(`LungCap(cc)` ~ Gender,
        data = LungCapData,
        main = "Lung Capacity by Gender",
        xlab = "Gender",
        ylab = "Lung Capacity",las=1)

#breaking numeric variable into diff groups
lungCapgroup <- cut(`LungCap(cc)`,
                    breaks = c(-Inf,4,6,Inf),
                    labels = c("Low","Med","high"))
lungCapgroup

min(`Age( years)`)
agegrp <- cut(`Age( years)`,
              breaks = c(2,11, 14, 17, 19),
              labels = c("3-11",  "12-14", "15-17", "18-19")
              )
agegrp
boxplot(`LungCap(cc)` ~ Smoke,
        data = LungCapData,
        main = "Lung Capacity by Smoking",
        xlab = "Smoking",
        ylab = "Lung Capacity",las=1)
boxplot(`LungCap(cc)`[`Age( years)`>=18] ~ Smoke[`Age( years)`>=18],
        data = LungCapData,
        main = "Lung Capacity by Smoking (Age>=18)",
        xlab = "Smoking",
        ylab = "Lung Capacity",las=1)
boxplot(`LungCap(cc)` ~ Smoke*agegrp,
        data = LungCapData,
        main = "Lung Capacity vs Smoking by agegrp",
        xlab = "Smoking",
        ylab = "Lung Capacity",las=2,col=c(4,2))
legend("bottomright",
       legend = c("No Smoke", "Smoke"),
       fill = c(4, 2))