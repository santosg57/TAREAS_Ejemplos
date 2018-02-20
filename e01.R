pob = round(runif(100, min=18, max = 65))
#pob = round(rnorm(100, mean=50, sd=20))

print(shapiro.test(pob))

print(paste(' mean pob. = ', mean(pob)))
print(paste(' var pob.=', round(var(pob), 2)))

nmuestras = 20
mean_muestras = rep(0, 20)

tam = 10

for (i in 1:20){
	muestra = sample(pob, tam)
	mean_muestras[i] = mean(muestra)
}

plot(mean_muestras)
abline(mean(pob), 0, col='red', lwd=2)
abline(mean(mean_muestras), 0, col='blue', lwd=2)
abline(mean(mean_muestras)-sd(mean_muestras)/sqrt(tam), 0, lwd=2)
abline(mean(mean_muestras)+sd(mean_muestras)/sqrt(tam), 0, lwd=2)


