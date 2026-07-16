category <- c("Electronics","Clothing","Appliances")
sales <- c(50000,35000,40000)
data <- data.frame(category,sales)
print(data)

library(plotly)
plot_ly(
  type = "funnel",
  y = category,
  x = sales
) %>%
  layout(title = "Product Category Sales Funnel")

sales_table <- data.frame(
  Category = category,
  Sales = sales
)
print(sales_table)

library(plotly)
p1 <- plot_ly(
  labels = category,
  values = sales,
  type = "pie"
)
p2 <- plot_ly(
  type = "funnel",
  y = category,
  x = salesZ
)
subplot(p1, p2)

pie(sales,
    labels = category,
    col = rainbow(3),
    main = "Sales Distribution by Product Category")