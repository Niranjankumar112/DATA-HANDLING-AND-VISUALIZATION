employee_id <- c(1,2,3)
department <- c("Sales","HR","Marketing")
years_service <- c(5,3,7)
performance_score <- c(85,92,78)
data <- data.frame(employee_id,department,years_service,performance_score)
print(data)

plot(employee_id,
     performance_score,
     type="o",
     col="blue",
     xlab="Employee ID",
     ylab="Performance Score",
     main="Employee Performance Trend")

dept_count <- table(department)
barplot(dept_count,
        col="lightgreen",
        main="Employees by Department",
        xlab="Department",
        ylab="Number of Employees")

employee_table <- data.frame(
  Employee_ID=employee_id,
  Department=department,
  Years_of_Service=years_service,
  Performance_Score=performance_score
)
print(employee_table)

library(plotly)
p1 <- plot_ly(
  x=employee_id,
  y=performance_score,
  type="scatter",
  mode="lines+markers",
  name="Performance"
)
p2 <- plot_ly(
  x=names(dept_count),
  y=as.numeric(dept_count),
  type="bar",
  name="Department"
)
subplot(p1, p2)