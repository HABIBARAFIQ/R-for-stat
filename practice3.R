#Apply and tapply
#onek gulo data r upor eki operation chalanor jonno
StockData <- matrix(
  c(100, 200, 150,
    110, 210, 160,
    105, 205, 155),
  nrow = 3,
  byrow = TRUE
)

StockData
?apply()
apply(StockData,MARGIN = 1,FUN = sum)#row wise every day stock price sum korsi
apply(StockData,MARGIN = 2,FUN = sum)#colm wise every day stock price sum korsi
#Fun could be sum or mean or any types of function
#for removing the null value during calc
StockData[2,2] <- NA
apply(StockData,MARGIN = 2,FUN = sum,na.rm = TRUE)
#20th ও 80th percentile
apply(
  StockData,
  2,
  quantile,
  probs = c(0.2, 0.8),
  na.rm = TRUE
)
#Specialized functions: colMeans(), rowMeans(), colSums() এবং rowSums()
rowSums(StockData, na.rm = TRUE)
#same as apply(StockData,MARGIN = 1,FUN = sum,na.rm = TRUE)

#creating plot using apply
apply(StockData, 1, plot, type = "l")
apply(
  StockData,
  1,
  plot,
  type = "l",
  main = "Stock Price",
  xlab = "Day",
  ylab = "Price"
)
DailyTotal <- rowSums(StockData, na.rm = TRUE)

plot(
  DailyTotal,
  type = "l",
  main = "Daily Total Stock Price",
  xlab = "Day",
  ylab = "Total Price"
)
### প্রতিটি stock-এর আলাদা plot ও points
### colm wise will generate 3 graphs here
apply(StockData, 2, function(x) {
  plot(x, type = "l",
       main = "Stock Price",
       xlab = "Day",
       ylab = "Price")
  points(x, col = "red", pch = 19)
})
#only 1st colm r jonno
plot(StockData[, 1], type = "l",
     main = "Stock Price",
     xlab = "Day",
     ylab = "Price")
points(StockData[, 1], col = "red", pch = 19)
# all data in one graph row wise
matplot(t(as.matrix(StockData)),
        type = "b",
        pch = 19,
        col = 1:ncol(StockData),
        main = "Stock Price",
        xlab = "Day",
        ylab = "Price")
#colm wise
matplot(StockData,
        type = "b",
        pch = 19,
        main = "Stock Price",
        xlab = "Day",
        ylab = "Price")

##tapply
StockData <- data.frame(
  Apple = c(100, 105, 102, 110, 115),
  Google = c(200, 195, 210, 205, 220),
  Amazon = c(150, 155, 160, 158, 170)
)
prices <- unlist(StockData) #convert the prices to vector
StockData
company <- rep(names(StockData), each = nrow(StockData))#প্রতিটি price-এর কোম্পানির নাম তৈরি করে।
company
tapply(prices, company, mean)#কোম্পানি অনুযায়ী group করে average বের করে

#apply()	Matrix বা array-এর row/column অনুযায়ী কাজ করে
#tapply()	Group অনুযায়ী vector-এর data-তে কাজ করে
#lapply()	List-এর প্রতিটি element-এ function চালায়