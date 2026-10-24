#histogram
hist(`LungCap(cc)`)
hist(`LungCap(cc)`,freq = FALSE,probability = TRUE)
hist(`LungCap(cc)`,ylim=c(0,0.20),freq = FALSE,probability = TRUE)
hist(`LungCap(cc)`,ylim=c(0,0.20),freq = FALSE,breaks = seq(from=0,to=16,by=2),probability = TRUE)
hist(`LungCap(cc)`,ylim=c(0,0.20),freq = FALSE,
     breaks = seq(from=0,to=16,by=2),las=1,probability = TRUE)
lines(density(`LungCap(cc)`),col="red",lwd=3)
#->KDE(Kernel density estimate)

#Stemplot
femalesmoker <- `LungCap(cc)`[Gender=="female"]
femalesmoker
stem(femalesmoker)
stem(femalesmoker,scale = 2)

#Stacked and Grouped Bar Charts and Mosaic Plots for categorical variables
class(Gender)
class(Smoke)
table1 <- table(Smoke,Gender)
table1
barplot(table1,beside = TRUE,col=c(2,4),legend.text = TRUE)
barplot(table1,beside = TRUE,col=c(2,4),
        legend.text = c("Non-Smoker","Smoker"),
        las=1)
mosaicplot(table1)
#Scattter plot for numerical variables 
#spearman correlation between 2 numerical var
cor(`Height(inches)`,`Age( years)`)
plot(`Age( years)`,`Height(inches)`,col="red",las=1,cex=1.5)
abline(lm(`Height(inches)`~`Age( years)`))
lines(smooth.spline(`Height(inches)`~`Age( years)`),col="blue",lwd=2)
