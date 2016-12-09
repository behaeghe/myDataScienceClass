fileURL <- "https://d18ky98rnyall9.cloudfront.net/_cf0fd3361e05f5be5304b07b771bad48_company_data.csv?Expires=1476748800&Signature=bsAYheu7Hu62e8ZudCQQyasltd04RVBB-ZtlwxjmZ4yv53Q1QRQoA5QQ4SUBSLp0A-RCaTcRzsz2XhoGN0cURczHdajgus308hh8H0NZuD2vCg0F8OHxkAQB6IsrSAGykDWZIfzZpL5wzDTToF0wA2-llALnZqjbW4h6hOR6~L0_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A"
company <- read.csv(fileURL)
summary(company)
cor(company$y,company$x1)
lm(y~x1, data=company)
summary(fit1)$coef
plot(company$y ~ company$x1)
abline(fit1, col="red")
par(mfrow=c(2,2))
plot(fit1)
paste(round(confint(fit1)[2,1],6),round(confint(fit1)[2,2],6),sep=",")
