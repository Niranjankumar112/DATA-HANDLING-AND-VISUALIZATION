product_id <- c(1,2,3,4,5)
product_name <- c("Product A","Product B","Product C","Product D","Product E")
quantity <- c(250,175,300,200,220)

data <- data.frame(product_id, product_name, quantity)
print(data)
barplot(quantity,
        names.arg=product_name,
        col="skyblue",
        main="Product Inventory",
        xlab="Product Name",
        ylab="Quantity Available")
category <- c("Category 1","Category 1","Category 2","Category 2","Category 3")

table_data <- table(category, product_name)

barplot(table_data,
        main="Product Categories",
        xlab="Products",
        ylab="Count",
        col=rainbow(nrow(table_data)),
        legend=rownames(table_data))
price <- c(100,150,200,180,220)

plot(price,
     quantity,
     pch=19,
     col="red",
     xlab="Product Price",
     ylab="Quantity Available",
     main="Price vs Quantity")
library(plotly)

p1 <- plot_ly(data,
              x=~product_name,
              y=~quantity,
              type="bar",
              name="Inventory")

p2 <- plot_ly(x=product_name,
              y=quantity,
              type="bar",
              name="Products")

subplot(p1, p2)