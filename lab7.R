#q1

n=100
f=n-1
sample=rt(n,f)
hist(sample,main="Q1")

#q2

rchisq(n,2)
rchisq(n,10)
rchisq(n,25)

#q3
vec=seq(-6,6,length=100)

df1=dt(vec,1)
df4=dt(vec,4)
df10=dt(vec,10)
df30=dt(vec,30)

plot(df30,type="l",col="red",lwd=2,main="Q3 Comparison of DFs")

lines(df1,col="blue",lwd=2)

lines(df4,col="green",lwd=2)

lines(df10,col="midnightblue",lwd=2)

legend("topleft",legend=c("Blue : DF=1","Green : DF=4","Dark Blue : DF=10","Red : DF=30"),col=c("blue","green","midnightblue","red"),lty=1,lwd=4)
#q4

#i)
qf(0.95,10,20)

#ii)
cat("Area under the curve: ",pf(1.5,10,20)," sq units\n")

#iii)
quants=c(0.25,0.5,0.75,0.999)
val=qf(quants,10,20)
cat("Result wrt quantiles 0.25,0.5,0.75,0.999 respectively: ",val,"\n")

#iv)
fdist=rf(1000,10,20)
hist(fdist,main="Q5 Random F-distribution")


