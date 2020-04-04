set.seed(32)
m=10000
a=2
b=1/3

theta = rgamma(n=m,shape=a,rate=b)

se = sd(theta)/sqrt(m)

confidence_max=mean(theta) + 2.0*se
confidence_min=mean(theta) - 2.0*se


########################################################

m = 1e5

y = numeric(m)
phi = numeric(m)

for (i in 1:m){
 phi[i] = rbeta(1,shape1=2.0,shape2=2.0)
 y[i] = rbinom(1,size=10,prob=phi[i])
}

phi = rbeta(m,shape1=2.0,shape2=2.0)
y = rbinom(m,size=10,prob=phi)

table(y)