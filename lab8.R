# q1

# Part 1
# a
data=read.csv('D:\\Code\\Probability Lab\\Clt-data.csv')

# b
cat("Dimensions: ",dim(data),"\n")
cat("First few rows: \n")
print(head(data,10))

# c
data_mean=mean(data$Wall.Thickness)
cat("Mean: ",data_mean,"\n")
hist(data$Wall.Thickness,main="Q1 Histogram")

# d
abline(v=data_mean,col="red",lwd=2)

# Part 2
# a
mean_list=c()
for(i in 1:300){
  mean_list[i]=mean(sample(data$Wall.Thickness,10,replace=TRUE))
}
hist(mean_list,main="Random Sampling with size 10")

#b
mean_list50=c()
mean_list500=c()
mean_list9000=c()

for(i in 1:300){
  mean_list50[i]=mean(sample(data$Wall.Thickness,50,replace=TRUE))
  mean_list500[i]=mean(sample(data$Wall.Thickness,500,replace=TRUE))
  mean_list9000[i]=mean(sample(data$Wall.Thickness,9000,replace=TRUE))
}

par(mfrow=c(1,3))

hist(mean_list50,main="Sample Size 50")
hist(mean_list500,main="Sample Size 500")
hist(mean_list9000,main="Sample Size 9000")

# q2

ages=c(58,69,43,39,63,52,47,31,74,36)
cholestrol=c(189,235,193,177,154,191,213,165,198,181)
relation=lm(cholestrol~ages)

plot(ages,cholestrol,xlab="Age",ylab="Cholestrol",main="Scatter Plot of Age vs Cholestrol",col="blue",pch=19)
abline(relation,col="red",lwd=2)

val=data.frame(ages=60)
pred=predict(lm(cholestrol~ages),val)
cat("Predicated value of cholestrol for a 60 year old: ",pred,"\n")
pred

# q3

before=c(145,173,158,141,167,159,154,167,145,153)
after=c(155,167,156,149,168,162,158,169,157,161)

t.test(after,before,alternative="greater",mu=0,paired=TRUE,var.equal=FALSE,conf.level=0.95)
