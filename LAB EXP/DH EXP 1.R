month <- c("January","February","March","April","May")
sales <- c(15000,18000,22000,20000,23000)
data <- data.frame(month, sales)
print(data)

plot(data$sales,
     type="o",
     col="blue",
     xaxt="n",
     xlab="Month",
     ylab="Sales ($)",
     main="Monthly Sales")
axis(1, at=1:5, labels=data$month)
grid()

products <- c("A","B","C","D","E")
product_sales <- c(25000,18000,30000,22000,27000)
barplot(product_sales,
        names.arg=products,
        col="skyblue",
        main="Top Selling Products",
        xlab="Products",
        ylab="Sales ($)")

advertising <- c(2000,2500,3000,2800,3500)
plot(advertising,
     sales,
     pch=19,
     col="red",
     xlab="Advertising Budget ($)",
     ylab="Monthly Sales ($)",
     main="Advertising Budget vs Monthly Sales")

library(plotly)
p1 <- plot_ly(data,
              x=~month,
              y=~sales,
              type="scatter",
              mode="lines+markers")
p2 <- plot_ly(x=products,
              y=product_sales,
              type="bar")
subplot(p1, p2)