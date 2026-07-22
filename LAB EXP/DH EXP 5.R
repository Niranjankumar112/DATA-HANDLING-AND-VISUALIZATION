date <- c("2023-01-01","2023-01-02","2023-01-03",
          "2023-01-04","2023-01-05")

page_views <- c(1500,1600,1400,1650,1800)

ctr <- c(2.3,2.7,2.0,2.4,2.6)

data <- data.frame(date, page_views, ctr)
print(data)
plot(page_views,
     type="o",
     col="blue",
     xaxt="n",
     xlab="Date",
     ylab="Page Views",
     main="Daily Website Page Views")

axis(1, at=1:5, labels=date)
barplot(ctr,
        names.arg=date,
        col="orange",
        main="Click-Through Rate by Date",
        xlab="Date",
        ylab="CTR (%)")
likes <- c(120,140,100,150,170)
shares <- c(50,60,45,65,70)
comments <- c(30,35,25,40,45)

interaction <- rbind(likes, shares, comments)

x <- 1:5

plot(x, likes,
     type="n",
     ylim=c(0,300),
     xlab="Day",
     ylab="Interactions",
     main="User Interactions")

polygon(c(x,rev(x)),
        c(rep(0,5),rev(likes)),
        col="lightblue")

polygon(c(x,rev(x)),
        c(likes,rev(likes+shares)),
        col="lightgreen")

polygon(c(x,rev(x)),
        c(likes+shares,
          rev(likes+shares+comments)),
        col="pink")

legend("topleft",
       legend=c("Likes","Shares","Comments"),
       fill=c("lightblue","lightgreen","pink"))
library(plotly)

p1 <- plot_ly(data,
              x=~date,
              y=~page_views,
              type="scatter",
              mode="lines+markers")

p2 <- plot_ly(data,
              x=~date,
              y=~ctr,
              type="bar")

subplot(p1, p2)