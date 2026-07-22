survey_id <- c(1,2,3)
question1 <- c("A","B","C")
question2 <- c("B","A","A")
question3 <- c("C","D","B")
data <- data.frame(survey_id,question1,question2,question3)
print(data)

q1_count <- table(question1)
barplot(q1_count,
        beside=TRUE,
        col=c("red","blue","green"),
        main="Distribution of Answers for Question 1",
        xlab="Answer",
        ylab="Frequency")

responses <- rbind(
  table(question1),
  table(question2),
  table(question3)
)
barplot(responses,
        beside=FALSE,
        col=rainbow(nrow(responses)),
        main="Overall Survey Responses",
        xlab="Answers",
        ylab="Frequency")
legend("topright",
       legend=c("Question 1","Question 2","Question 3"),
       fill=rainbow(3))

survey_table <- data.frame(
  Survey_ID=survey_id,
  Question1=question1,
  Question2=question2,
  Question3=question3
)
print(survey_table)

library(plotly)
p1 <- plot_ly(
  x=names(q1_count),
  y=as.numeric(q1_count),
  type="bar",
  name="Question 1"
)
p2 <- plot_ly(
  x=colnames(responses),
  y=responses[1,],
  type="bar",
  name="Question 1"
)
p2 <- add_trace(
  p2,
  y=responses[2,],
  name="Question 2"
)
p2 <- add_trace(
  p2,
  y=responses[3,],
  name="Question 3"
)
subplot(p1, p2)