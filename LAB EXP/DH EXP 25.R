User_ID <- c(1,2,3,4,5)
Steps <- c(7000,10000,8500,12000,6500)
Calories_Burned <- c(250,400,320,500,220)
Active_Minutes <- c(40,60,50,75,35)
fitness <- data.frame(
  User_ID,
  Steps,
  Calories_Burned,
  Active_Minutes
)
print(fitness)


hist(fitness$Steps,
     col="skyblue",
     border="black",
     main="Distribution of Daily Steps",
     xlab="Steps",
     ylab="Frequency")


activity <- ifelse(fitness$Steps >= 10000,
                   "High",
                   ifelse(fitness$Steps >= 8000,
                          "Medium",
                          "Low"))
activity_count <- table(activity)
pie(activity_count,
    col=c("green","orange","red"),
    main="Activity Level Categories")


barplot(fitness$Calories_Burned,
        names.arg=fitness$User_ID,
        col="orange",
        main="Calories Burned by User",
        xlab="User ID",
        ylab="Calories Burned")



plot(fitness$Steps,
     fitness$Calories_Burned,
     pch=19,
     col="blue",
     main="Steps vs Calories Burned",
     xlab="Steps",
     ylab="Calories Burned")