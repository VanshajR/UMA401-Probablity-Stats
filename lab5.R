#q1

#a
cat("1-P[X<=45] = ",(1-punif(45,0,60)),"\n")

#b
p=punif(30,0,60)-punif(20,0,60)
cat("P[20<X<30] = ",p,"\n")

#q2

#a
cat(dexp(3,0.5),"\n")

#b
points=seq(0,5,1)
vals=dexp(points)
plot(vals,type="l")

#c
cat("P[X<=3] = ",pexp(3,0.5),"\n")

#d
points=seq(0,5,1)
vals=pexp(points)
plot(vals,type = "l")

#e
probs=rexp(1000,0.5)
hist(probs)
plot(probs,type="l")

#q3
alpha=2
beta=1/3

#a
#i)
cat("P[X=3] = ",dgamma(3,shape=alpha,rate=beta),"\n")
#or
#dgamma(3,shape=alpha,scale=(1/beta))

#ii)
cat("P[X>=1] = 1-P[X<1] = ",(1-pgamma(1,shape=alpha,rate=beta)),"\n")

#b
cat("C: ",qgamma(0.7,shape=alpha,rate=beta),"\n")
