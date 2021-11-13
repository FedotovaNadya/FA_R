#task 1
options(digits=6)
chisl <- factorial(7)+choose(32,11)
znam <- sqrt(1/(1+0.2435))
rezult <- 2^(-3)+chisl/znam

#task2
options(digits=3)
sl1 <- 1/(0.3532^(1/3))
sl2 <- 12*exp(-1/4.8)/sqrt(7^-3)
print(sl1-sl2)

#task3
print(mean(cars$dist)*0.3048)

#task4
library(ggplot2)
library(dplyr)
glimpse(diamonds)
length(diamonds$carat)#сколько алмазов было исследовано
mean(diamonds$carat) #средний вес в каратах
