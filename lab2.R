#q1
#a
g=c(rep("Gold",20))
s=c(rep("Silver",30))
b=c(rep("Bronze",50))

data = c(g,s,b)
print(data)

sample(data,10)

#b
sample(c("success","failure"),10,replace=TRUE,prob=c(0.9,0.1))

# q2
#a
simulate_birthday_problem <- function(n, simulations=10000) {
  match_count <- 0
  
  for (i in 1:simulations) {
    birthdays <- sample(1:365, n, replace=TRUE)
    if (length(unique(birthdays)) < n) {
      match_count <- match_count + 1
    }
  }
  
  probability <- match_count / simulations
  return(probability)
}


ns <- 5:50
probabilities <- sapply(ns, simulate_birthday_problem)
print(probabilities)


#b
calculate_birthday_probability <- function(n) {
  prod <- 1
  for (i in 1:(n-1)) {
    prod <- prod * (1 - i / 365)
  }
  probability <- 1 - prod
  return(probability)
}

n <- 20
while (calculate_birthday_probability(n) <= 0.5) {
  n <- n + 1
}

cat("The smallest n where probability exceeds 0.5 is:", n, "\n")



#q3
conditional_prob <- function(prob_a_and_b, prob_b) {
  return(prob_a_and_b / prob_b)
}

prob_cloudy <- 0.4
prob_rain <- 0.2
prob_cloud_given_rain <- 0.85

prob_rain_given_cloudy <-
  conditional_prob(prob_cloud_given_rain * prob_rain, prob_cloudy)

print(prob_rain_given_cloudy)


#q4
idata <- iris
print(idata)
#a
head(idata)

#b
str(idata$Sepal.Length)

#c
range(idata$Sepal.Length)
range(idata$Sepal.Width)
range(idata$Petal.Length)
range(idata$Petal.Width)

#d
mean(idata$Sepal.Length)
mean(idata$Sepal.Width)
mean(idata$Petal.Length)
mean(idata$Petal.Width)

#e
median(idata$Sepal.Length)
median(idata$Sepal.Width)
median(idata$Petal.Length)
median(idata$Petal.Width)

#f

quantile(idata$Sepal.Length,1/4)
quantile(idata$Sepal.Length,3/4)

quantile(idata$Sepal.Width,1/4)
quantile(idata$Sepal.Width,3/4)

a<-quantile(idata$Petal.Length,1/4)
b<-quantile(idata$Petal.Length,3/4)
print(b-a)
quantile(idata$Petal.Width,1/4)
quantile(idata$Petal.Width,3/4)

IQR(idata$Sepal.Length)

IQR(idata$Sepal.Width)
IQR(idata$Petal.Length)
IQR(idata$Petal.Width)

#g

sd(idata$Sepal.Length)
var(idata$Sepal.Length)

sd(idata$Sepal.Width)
var(idata$Sepal.Width)

sd(idata$Petal.Length)
var(idata$Petal.Length)

sd(idata$Petal.Width)
var(idata$Petal.Width)

#h
?iris

#i
summary(idata)

#extra
isl_arr<-0
isw_arr<-0
ipl_arr<-0
ipw_arr<-0
for(i in 1:10){
  isl_sample<-sample(idata$Sepal.Length,10,replace=TRUE)
  print("Sepal Length")
  isl_mean<-mean(isl_sample)
  isl_arr<-c(isl_arr,isl_mean)
  print(paste("Mean for ",i," th sample", isl_mean))
}
labs=seq(1,10)
print(labs)
barplot(isl_arr,xlab=labs)

for(i in 1:10){
  isw_sample<-sample(idata$Sepal.Width,10,replace=TRUE)
  print("Sepal Width")
  isw_mean<-mean(isw_sample)
  isw_arr<-c(isw_arr,isw_mean)
  print(paste("Mean for ",i," th sample", mean(isw_sample)))
}
plot(isw_arr)

for(i in 1:10){
  ipl_sample<-sample(idata$Petal.Length,10,replace=TRUE)
  print("Petal Length")
  ipl_mean<-mean(ipl_sample)
  ipl_arr<-c(ipl_arr,ipl_mean)
  print(paste("Mean for ",i," th sample", mean(ipl_sample)))
}
plot(ipl_arr)

for(i in 1:10){
  ipw_sample<-sample(idata$Petal.Width,10,replace=TRUE)
  print("Petal Width")
  ipw_mean<-mean(ipw_sample)
  ipw_arr<-c(ipw_arr,ipw_mean)
  print(paste("Mean for ",i," th sample", mean(ipw_sample)))
}
plot(ipw_arr)

#q5

calculate_mode <- function(x) {
  freq_table <- table(x)
  max_freq <- max(freq_table)
  
  mode_values <- as.numeric(names(freq_table[freq_table == max_freq]))
  
  # If there's a single mode, return it. Otherwise, return all modes.
  if(length(mode_values) == 1) {
    return(mode_values)
  } else {
    return(mode_values)
  }
}

data2 <- c(1, 2, 2, 3, 4, 4, 4, 5, 6, 6, 6)
mode_value <- calculate_mode(data2)
paste("Mode:", mode_value)
