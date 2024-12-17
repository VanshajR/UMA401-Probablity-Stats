#exp 1
#q1: max & min
c=c(5,10,15,20,25,30)
cmax=max(c)
cmin=min(c)

print(paste("max: ",cmax," min: ",cmin))


#q2 factorial
n=as.integer(readline(prompt = "Enter a number: "))
class(n)
if(n<0){
  print("Not Defined")
}else if(n==0){
  print("FaCtorial is 1")
}else{
  fact=1
  for(i in 1:n)
  {
    fact=i*fact
    
  }
  print(paste("Factorial is: ",fact))
}

#q3 fibonnaci
val=as.integer(readline(prompt = "Enter a number: "))
x=0
y=1
for(i in 1:val){
  cat(x,",  ")
  z=x+y
  x=y
  y=z
}

#q4 calculator
inp1=as.integer(readline(prompt="Enter first number: "))
inp2=as.integer(readline(prompt="Enter second number: "))

print("Enter 1 to add the numbers")
print("Enter 2 to subtract first number from the second number")
print("Enter 3 to subtract second number from the first number")
print("Enter 4 to multiply the numbers")
print("Enter 5 to divide second number by the first number")
print("Enter 6 to divide first number by the second number")

choice=readline(prompt="Enter choice: ")

result<-switch(
  choice,
  "1"=inp1+inp2,
  "2"=inp2-inp1,
  "3"=inp1-inp2,
  "4"=inp1*inp2,
  "5"=inp2/inp1,
  "6"=inp1/inp2,
  stop("Invalid Choice")
)
print(paste("Result is: ",result))

#q5
plot(3,2)
plot(sin,-2*pi,2*pi)
plot(tan,-2*pi,2*pi)

bar=c(2,6,8,7,5)*10
barplot(bar,xlab="X axis",ylab="Y axis")
