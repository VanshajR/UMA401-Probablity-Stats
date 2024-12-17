# q1
x <- c(0,1,2,3,4)
px <- c(0.41, 0.37, 0.16, 0.05, 0.01)

print(weighted.mean(x, px))

#Also,
mean<-sum(x%*%px)
print(mean)
print(sum(x*px))

#q2
fun=function(t){
  0.1*exp(-0.1*t)*t
}
integrated= integrate(fun,lower=0,upper=Inf)
print(integrated)

#q3
# Number of copies sold
x = c(0, 1, 2, 3)
p_x = c(0.1, 0.2, 0.2, 0.5)

# Revenue for each scenario
#y = c(0, 6, 12, 18)  # Net revenue calculation: Y(X)
y=6*x
# Expected value of Y
expected_value_Y = sum(y * p_x)
print(expected_value_Y)

# q4
#Integrate over given limits as it is continuous distribution
fun2=function(x){
  x*0.5*exp(-abs(x))
}

fun2_sq=function(x){
  x^2*0.5*exp(-abs(x))
}
mean=integrate(fun2,1,10)$val
sec_moment=integrate(fun2_sq,1,10)$val

variance=sec_moment-(mean^2)

print(paste("Mean :",mean))
print(paste("Second Moment: ",sec_moment))
print(paste("Variance: ",variance))


# q5
# Since Y=X^2 and x=1,2,3,... => X=+(Y)^0.5; Use weighted mean (summation) for discrete values
fun3 = function(y){
  (3/4)*((1/4)^(sqrt(y)-1))
}

x = c(1,2,3,4,5)
y = x^2
py = fun3(y)

print(py)
mean = weighted.mean(y, py)
smom = weighted.mean(y^2, py)
variance = smom - (mean^2)


print(paste("Mean: ", mean))
print(paste("Second Moment: ",smom))
print(paste("Variance: ", variance))






