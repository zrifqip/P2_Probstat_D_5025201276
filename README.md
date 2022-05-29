# P2_Probstat_D_5025201276
## No. 1
masukkan data terlebih dahulu dan di cek untuk kebenenaran datanya
```r
## append data to frames
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)

## check if appended data correct
data.frame(x,y)
```
### 1a. cari standar deviasi
dicari standar deviasi menggunakan `sd()`
```r
dev <- sd(y-x)
```
dan didapat kan hasil standar deviasi `6.359595`
### 1b Mencari nilai p
Digunakan t test untuk mencari nilai p
```r
t.test(x,y,alternative = "greater")
```
didapatkan hasil sebagai berikut
```
data:  x and y
t = -5.0473, df = 10.956, p-value = 0.9998
alternative hypothesis: true difference in means is greater than 0
95 percent confidence interval:
 -21.99644       Inf
sample estimates:
mean of x mean of y 
 74.22222  90.44444 
 ```

### 1c

## No.2
### 2a
setuju
### 2b 
disini digunakan `zsum.test` untuk membuktikan hal tesebut dan ditemukan hasil berikut
```r
zsum.test(mean.x = 23500, n.x = 100, sigma.x = 3900, alternative = "greater",mu = 20000)
```
karena rata reata tersebut lebih dari 20000 km jadi disini menggunakan greater untuk membuktikannya dan ditemukan hasil sebagai berikut
```
Standard Two-Sample t-Test

data:  Summarized x and y
One-sample z-Test

data:  Summarized x
z = 8.9744, p-value < 2.2e-16
alternative hypothesis: true mean is greater than 20000
95 percent confidence interval:
 22858.51       NA
sample estimates:
mean of x 
    23500 
```



