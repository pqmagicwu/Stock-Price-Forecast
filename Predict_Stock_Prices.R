
library(ggplot2)
# Read CSV into R
RawData <- read.csv(file="C:/Users/mwu004/Downloads/Stock Price Prediction/stock_returns_base150.csv", header=TRUE, sep=",")
#Remove the rows with blank dates
RawData2 <- RawData[!(RawData$date == ""), ]
#Draw Plot
s1<-RawData2[,c(1,2)]
s1$date <- as.Date(s1$date,'%m/%d/%Y')

ggplot(s1,aes(date,S1))+
  geom_line(aes(color="S1"))+
  scale_colour_manual("", breaks = c("S1"),
                      values = c("blue"))