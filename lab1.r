#a
college=read.csv("college.csv", header=T, na.strings = "?")

#b
rownames (college )=college [,1]
fix(college)

college=college[,-1]
fix(college)


#c.i.
print("numerical summary of the variables in the data set.")
summary(college)

#c.ii.
print("First 10 columns scatterplot")
pairs(college[,1:10])

#c.iii.
print("boxplot: outstate vs private")
college$Private=as.factor(college$Private)
plot(college$Private,college$Outstate, col="yellow",xlab="Private",ylab="Outstate",main="Outstate Vs Private")

attach(college)
Private=as.factor(Private)
plot(Private,Outstate, col="yellow",xlab="Private",ylab="Outstate",main="Outstate Vs Private")



#c.iv.
Elite =rep ("No",nrow(college ))
Elite [college$Top10perc >50]=" Yes"
Elite =as.factor (Elite)
college =data.frame(college ,Elite)

summary(Elite)
plot(college$Elite,college$Outstate, col="red",xlab="Elite",ylab="Outstate",main="Outstate Vs Elite")
attach(college)
plot(Elite,Outstate, col="red",xlab="Elite",ylab="Outstate",main="Outstate Vs Elite")


#c.v.
par(mfrow=c(2,2))
hist(college$Expend, breaks=5, main="Expend Histogram",col="green")
hist(college$PhD, breaks=10, main="PhD Histogram",col="blue")
hist(college$Outstate, breaks=10, main="Outstate Histogram",col="pink")
hist(college$Enroll, breaks=5, main="Enroll Histogram",col="black")


#d.i.
print("Which of the predictors are quantitative, and which are qualitative?")
str(college)
print("We have 17 quantitative attributes and 2 qualitative attributes")

#d.ii.
print("range, mean and std deviation of Enroll")
range(college$Enroll)
mean(college$Enroll)
sd(college$Enroll)

#summary(college)

#d.iii.
print("range, mean and std deviation of Enroll after removing records from 100th:200th rows")
Enroll=college$Enroll[-100:-200]
range(college$Enroll)
sd(college$Enroll)
mean(college$Enroll)


#rm("college")

