customer_id <- c(1,2,3,4,5)
age <- c(25,30,35,28,40)
score <- c(4,5,3,4,5)
data <- data.frame(customer_id, age, score)
print(data)

hist(age,
     main="Distribution of Customer Ages",
     xlab="Age",
     ylab="Frequency",
     col="lightblue",
     border="black")

score_table <- table(score)
pie(score_table,
    labels=names(score_table),
    main="Customer Satisfaction Scores",
    col=rainbow(length(score_table)))

age_group <- c("20-29","30-39","30-39","20-29","40-49")
table_data <- table(age_group, score)
barplot(table_data,
        main="Customer Satisfaction by Age Group",
        xlab="Age Group",
        ylab="Count",
        col=rainbow(nrow(table_data)),
        legend=rownames(table_data))

feedback <- c(
  "Good service",
  "Excellent support",
  "Fast delivery",
  "Very satisfied",
  "Friendly staff"
)
wordcloud(feedback,
          colors=rainbow(5),
          random.order=FALSE)