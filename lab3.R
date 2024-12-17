# q1

## method 1: using pbinom

print(pbinom(9, 12, 1/6) - pbinom(6, 12, 1/6)) # pbinom is cumulative, we do this as we want the probability  
                                              ## of X=7 or 8 or 9, so X cant be >=7, thus we subtract all 
                                              ## cases of X<=6  

## or we can calculate individually for 7, 8 and 9

print(
  pbinom(9, 12, 1/6) - pbinom(8, 12, 1/6) + 
    pbinom(8, 12, 1/6) - pbinom(7, 12, 1/6) + 
    pbinom(7, 12, 1/6) - pbinom(6, 12, 1/6)
)


#q2

print(pnorm(84,72,15.2,lower.tail = FALSE))

#q3

print(ppois(50,50)-ppois(47,50))

#OR
lambda<-10*5
d<-c(48,49,50)
print(sum(dpois(d,lambda = lambda)))

#q4

print(dhyper(3,17,233,5))

#q5

# a) binom distribution

# b)

x = seq(0,31)
pmf = c()

for(i in 1:length(x)){
  pmf[i] = dbinom(x[i], 31, 0.447)
}
print(pmf)
plot(x, pmf)

#c) 
cdf = c()

for(i in 1:length(x)){
  cdf[i] = pbinom(x[i], 31, 0.447)
}
print(cdf)
plot(x, cdf)

#d)

n = 31
p = 0.447
mean = n*p
var = n*p*(1-p)
stdev = sqrt(var)

print(mean)
print(var)
print(stdev)

x = 0:31 # Possible number of successes (0 to 31)
pmf_values = dbinom(x, size = 31, prob = 0.447)
print(pmf_values)
plot(x, pmf_values, type = "l", col = "blue", main = "PMF of Binomial(31, 0.447)", xlab = "Number of students", ylab = "Probability")



