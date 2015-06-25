
estx = rep(0,100)
w = rep(0, 100)
variance = rep(0,100)


x = 6 + runif(100, -11, 11) 
H = 1
w[H] = 2
estx[H] = x[H]
variance[H] = 50
constV = var(x)

for(k in 1:100){

w[k+1] = variance[k]/(variance[k] + constV)

estx[k+1] = estx[k] + w[k+1]*(x[k] - estx[k])

variance[k+1] = ((1-w[k+1])*variance[k])

}

