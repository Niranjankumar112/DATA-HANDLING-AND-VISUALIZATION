customer_id <- c(1,2,3)
age <- c(28,35,42)
gender <- c("Female","Male","Female")
income <- c(50000,60000,75000)
data <- data.frame(customer_id, age, gender, income)
print(data)

barplot(age,
        names.arg=customer_id,
        col="skyblue",
        main="Customer Age Distribution",
        xlab="Customer ID",
        ylab="Age")

gender_count <- table(gender)
pie(gender_count,
    labels=names(gender_count),
    col=c("pink","lightblue"),
    main="Gender Distribution")

customer_table <- data.frame(
  Customer_ID=customer_id,
  Age=age,
  Gender=gender,
  Income=income
)
print(customer_table)

library(plotly)
p1 <- plot_ly(
  x=customer_id,
  y=age,
  type="bar",
  name="Age"
)
p2 <- plot_ly(
  labels=names(gender_count),
  values=as.numeric(gender_count),
  type="pie"
)
subplot(p1, p2)