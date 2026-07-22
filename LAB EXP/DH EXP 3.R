employee_id <- c(1,2,3,4,5)
department <- c("Sales","HR","Marketing","Sales","HR")
years <- c(5,3,7,4,2)
performance <- c(85,92,78,90,76)
data <- data.frame(employee_id, department, years, performance)
print(data)

plot(employee_id,
     performance,
     type="o",
     col="blue",
     xlab="Employee ID",
     ylab="Performance Score",
     main="Employee Performance Trend")
legend("bottomright",
       legend="Performance",
       col="blue",
       lty=1,
       pch=1)

dept_count <- table(department)
barplot(dept_count,
        col="lightgreen",
        main="Employees by Department",
        xlab="Department",
        ylab="Number of Employees")

plot(years,
     performance,
     pch=19,
     col="red",
     xlab="Years of Service",
     ylab="Performance Score",
     main="Years of Service vs Performance")

library(plotly)
p1 <- plot_ly(data,
              x=~employee_id,
              y=~performance,
              type="scatter",
              mode="lines+markers",
              name="Performance")
p2 <- plot_ly(data,
              x=~department,
              type="bar",
              name="Department")
subplot(p1, p2)