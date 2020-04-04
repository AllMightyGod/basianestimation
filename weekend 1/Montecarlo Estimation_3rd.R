set.seed(32)
m=10000
a=2
b=1/3
theta = rgamma(n=m,shape=a,rate=b)
hist(theta,freq=FALSE)
curve(dgamma(x,shape=a,rate=b),col="blue",add=TRUE)

sum(theta)/m
mean(theta)
a/b

var(theta)
a/b^2

ind = theta < 5.0

