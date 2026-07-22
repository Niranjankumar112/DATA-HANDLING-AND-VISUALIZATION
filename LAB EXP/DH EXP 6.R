product_id <- c(1,2,3)

product_name <- c("Product A","Product B","Product C")

jan <- c(2000,1500,1200)

feb <- c(2200,1800,1400)

mar <- c(2400,1600,1100)

data <- data.frame(product_id,product_name,jan,feb,mar)

print(data)
sales <- rbind(jan,feb,mar)

barplot(sales,
        beside=TRUE,
        names.arg=product_name,
        col=c("red","blue","green"),
        main="Monthly Product Sales",
        xlab="Products",
        ylab="Sales")

legend("topright",
       legend=c("January","February","March"),
       fill=c("red","blue","green"))
x <- 1:3

A <- c(2000,2200,2400)
B <- c(1500,1800,1600)
C <- c(1200,1400,1100)

plot(x,A,
     type="n",
     ylim=c(0,6000),
     xaxt="n",
     xlab="Month",
     ylab="Sales",
     main="Overall Sales Trend")

axis(1,at=1:3,labels=c("January","February","March"))

polygon(c(x,rev(x)),
        c(rep(0,3),rev(A)),
        col="lightblue")

polygon(c(x,rev(x)),
        c(A,rev(A+B)),
        col="lightgreen")

polygon(c(x,rev(x)),
        c(A+B,rev(A+B+C)),
        col="pink")

legend("topleft",
       legend=c("Product A","Product B","Product C"),
       fill=c("lightblue","lightgreen","pink"))
sales_table <- data.frame(
  Product=product_name,
  January=jan,
  February=feb,
  March=mar
)

print(sales_table)
library(plotly)

p1 <- plot_ly(
  x=product_name,
  y=jan,
  type="bar",
  name="January"
)

p1 <- add_trace(
  p1,
  y=feb,
  name="February"
)

p1 <- add_trace(
  p1,
  y=mar,
  name="March"
)

p2 <- plot_ly(
  x=c("January","February","March"),
  y=A,
  type="scatter",
  mode="lines",
  fill="tozeroy",
  name="Product A"
)

subplot(p1,p2)