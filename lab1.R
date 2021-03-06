days <- c('Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun')#days
temp <- c(28, 30.5, 32, 31.2, 29.3, 27.9, 26.4) #temperature
snowed <-c('T','T', 'F', 'F', 'T', 'T', 'F') #snowed that day
help("data.frame")
RPI_Weather_Week <- data.frame(days,temp, snowed) #create dataframe
RPI_Weather_Week
head(RPI_Weather_Week) #head of the data frame
str(RPI_Weather_Week) #look at structure
summary(RPI_Weather_Week) #summary of the dataframe

RPI_Weather_Week[1,] #showing the 1st row and all colomns
RPI_Weather_Week[,1] #showing 1st col and all row
RPI_Weather_Week[,'snowed']
RPI_Weather_Week[,'days']
RPI_Weather_Week[,'temp']
RPI_Weather_Week[1:5,c("days", "temp")]
RPI_Weather_Week$temp
subset(RPI_Weather_Week, subset=snowed==TRUE)
sorted.snowed <- order(RPI_Weather_Week['snowed'])
sorted.snowed
RPI_Weather_Week[sorted.snowed,]

#RPI_Weather_Week[descending_snowed,]
dec.snow <- order(-RPI_Weather_Week$temp)
dec.snow
#creating dataframes
empty.DataFrame <- data.frame()
v1 <- 1:10
v1
letters
v2 <- letters[1:10]
df <- data.frame(col.name.1 = v1,col.name2 = v2)
df
#importing data and exporting data
#writing to a csv
write.csv(df,file = 'saved_df1.csv')
df2 <- read.csv('saved_df1.csv')
df2

EPI_data <- read.csv("C:/Users/shend/Desktop/DataAna/lab/lab1/2010EPI_data.csv")
View(EPI_data)
attach(EPI_data)
fix(EPI_data)
EPI
tf <- is.na(EPI)
E <- EPI[!tf]
summary(EPI)
fivenum(EPI,na.rm=TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.))
rug(EPI)
plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)
EPILand<-EPI[!Landlock]
Eland <- EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df= 5), x, xlab= "Q-Q plot for t dsn")
qqline(x)
plot(ecdf(EPI_data$EPI),do.points=FALSE,verticals= TRUE)
plot(ecdf(EPI_data$EPI),do.points=TRUE,verticals= TRUE)
par(pty="s")
qqnorm(EPI_data$EPI)
qqline(EPI_data$EPI)
x <-seq(30,95,1)
x
x2 <-seq(30,95,2)
x2
x2 <-seq(30,96,2)
x2
qqplot(qt(ppoints(250),df=5),x, xlab= "Q-Q plot")
qqline(x)
