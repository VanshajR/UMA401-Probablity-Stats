# q1

f = function(x,y){
  return(2 * (2 * x + 3 * y) / 5)
}

# i
print(integral2(f, 0, 1, 0, 1)$Q)

# ii
g = function(y){
  return (f(1, y))
}

print(integrate(g, 0, 1)$value)

# iii
h = function(x){
  return (f(x, 0))
}

print(integrate(h,0,1)$value)


# iv
g = function(x,y){
  return (x*y)
}

print(integral2(function(x,y) g(x,y) * f(x,y), 0,1,0,1)$Q)


# Q2

f = function(x,y){
  return ((x+y)/30)
}
xv = c(0:3)
yv = c(0:2)

m= matrix(c(
  f(xv[1],yv), f(xv[2],yv), f(xv[3],yv), f(xv[4],yv)
),
nrow = 4, ncol = 3, byrow = TRUE
)

print(m)

sum = sum(m)

if(sum == 1){
  print("PDF")
}

g_x = apply(m, 1, sum)
h_y = apply(m, 2, sum)

## p(x=0 | y=1) = p(x=0 and y=1)/p(y=1)

print(m[1,2]/h_y[2])

ex = sum(xv * g_x)
ey = sum(yv * h_y)

f2 = function(x,y){
  return (x*y*f(x,y))
}
m2= matrix(c(
  f2(xv[1],yv), f2(xv[2],yv), f2(xv[3],yv), f2(xv[4],yv)
),
nrow = 4, ncol = 3, byrow = TRUE
)

exy = sum(m2)
varx = sum(((xv - ex)^2)*g_x)
vary = sum(((yv - ey)^2)*h_y)
covxy = exy - ex*ey
cor = covxy/sqrt(varx * vary)

cat("E(X):", ex, "\n")
cat("E(Y):", ey, "\n")
cat("E(XY):", exy, "\n")
cat("Var(X):", varx, "\n")
cat("Var(Y):", vary, "\n")
cat("Cov(X, Y):", covxy, "\n")
cat("Correlation Coefficient:", cor, "\n")