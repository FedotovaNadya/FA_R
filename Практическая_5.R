#LAB5

#Task 1 file ПР5_1
#1.1

z <- c(-10, 10, 0.2)
x<-seq(z[1], z[2], z[3])
plot(x, x^2, type = "l", col = "red", xlab = "x", ylab = "f(x)")
lines(x, x^3, col = "blue")

#1.2
legend("bottomleft", legend=c("y=x^2", "y=x^3"), lwd = c(1,1),
       col=c("red", "blue"), cex=0.8)
#1.3
dev.copy(jpeg, "R\\5-1.jpeg")
dev.off()


#Task 2 file ПР5_2
#2.1
mycars = mtcars
#2.2
hist(mycars$hp, main = "Horsepower of cars", col = "lightgreen", 
     xlab = "Horsepower value", ylab = "Counts", breaks = 20, 
     right = FALSE, freq = FALSE, border = "chocolate")
abline(v = mean(mycars$hp), col = "red", 
       lty = 3, lwd = 3)
abline(v = median(mycars$hp), col = "black", 
       lty = 4, lwd = 3)


#Task3
dat <- read.csv("financials.csv")
tab <- table(dat$Sector)

pie(tab)
perc_labs <- paste0(round(tab / sum(tab) * 100, 2), "%")

sect_cols <- c("green4", "plum3", "palevioletred3", "maroon2", 
               "purple3", "paleturquoise",
               "cornflowerblue", "lightcyan3", "royalblue2",
               "seagreen3", "red4")

pie(tab, main = "S&P 500", col = sect_cols, labels = perc_labs)

legend(-2.2, -1.5, names(tab), cex = 0.7, 
       fill = sect_cols, ncol = 3, bty = "n")
dev.copy(pdf, "S&P500.pdf")
dev.off()


#Task4
f<-function(x) {sign(x)}
x <- -2:2
plot(x,f(x),type="l")


#Task5
f_cos<-function(x) {cos(x)}
f_sin<-function(x) {sin(x)}
f_tan<-function(x) {tan(x)}
f_abs<-function(x) {abs(x)}
f_x2<-function(x) {x^2}
x <- -10:10
plot(x,f_cos(x),type = "l", main = "Basic math functions №1", xlim = c(-10,10), ylim =c(-10,10) ,ylab = "f(x)",col = "yellow3")
lines(x,f_sin(x),type = "l", xlim = c(-10,10), ylim =c(-10,10),col = "blue3")
lines(x,f_tan(x),type = "l", xlim = c(-10,10), ylim =c(-10,10),col = "red3")
lines(x,f_abs(x),type = "l", xlim = c(-10,10), ylim =c(-10,10),col = "green3")
lines(x,f_x2(x),type = "l", xlim = c(-10,10), ylim =c(-10,10),col = "orange3")
abline(h = 0, v = 0, col = "gray50")
legend("bottomleft", legend=c("f(x)=cos(x)", "f(x)=sin(x)", "f(x)=tan(x)", "f(x)=|x|", "f(x)=x^2"), lwd = c(1,1),
       col=c("yellow3", "blue3", "red3", "green3", "orange3"), cex=0.8)

f_sqrt<-function(x) {sqrt(x)}
f_1x<-function(x) {1/x}
f_log10x<-function(x) {log10(x)}
f_exp<-function(x) {exp(x)}
f_x3<-function(x) {x^3}
x <- -10:10
plot(x,f_sqrt(x),type = "l", main = "Basic math functions №2", xlim = c(-10,10), ylim =c(-10,10) ,ylab = "f(x)",col = "yellow3")
lines(x,f_1x(x),type = "l", xlim = c(-10,10), ylim =c(-10,10),col = "blue3")
lines(x,f_log10x(x),type = "l", xlim = c(-10,10), ylim =c(-10,10),col = "red3")
lines(x,f_exp(x),type = "l", xlim = c(-10,10), ylim =c(-10,10),col = "green3")
lines(x,f_x3(x),type = "l", xlim = c(-10,10), ylim =c(-10,10),col = "orange3")
abline(h = 0, v = 0, col = "gray50")
legend("bottomleft", legend=c("f(x)=sqrt(x)", "f(x)=1/x", "f(x)=ln(x)", "f(x)=e^x", "f(x)=x^3"), lwd = c(1,1),
       col=c("yellow3", "blue3", "red3", "green3", "orange3"), cex=0.8)


