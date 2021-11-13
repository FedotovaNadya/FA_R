#task 1
67^3 - 112^2 #288219
log(125) #4.828314
log(81, base=3) #4

#task2
flights_d <- c(140, 150, 100, 90, 230, 240, 165) #vileti
flights_a <- c(65, 145, 80, 87, 220, 268, 216) #prileti
wed <- flights_d[3] #vileti v sredu
cat(wed) #Сколько вылетов из аэропорта А было зафиксировано в среду
print(flights_d[2]-flights_a[2]) #На сколько число вылетов во вторник больше числа прилётов во вторник
sum(flights_d) # Сколько всего вылетов из аэропорта А было зафиксировано за неделю
which(flights_a<=220)# В какие дни недели число прилётов не превышает 220

#task3
pos <- c(4.765, 3.230, 1.256, 1.780, 2.583, 2.781, 3.945, 2.345) #значения весов посылок в килограммах
#3.1
print(length(pos))#Сколько всего посылок было взвешено
print(max(pos))#вес был у самой тяжёлой посылки
print(min(pos))#вес был у самой лёгкой посылки
#3.2
pos.round <- trunc(pos)
print(pos.round)# значения весов посылок в килограммах, округлённых в меньшую сторону.
#3.3
print(pos_g <- pos*1000)#значением весов посылок в граммах

#task4
milk <- c(89.5, 50.5, 31.5, 21.0, 22.1, 27.4)#средние цены за килограмм сырого молока
#4.1
milk.middle <-(sum(milk)/length(milk))
cat("выборочная дисперсия равна:", milk.middle)
#4.2
s2 <- sum((milk-milk.middle)^2)/(length(milk)-1)
print(s2)

#task5
#5.1
help("euro")#Запросите помощь по вектору euro
#5.2
fin_euro <- 100*euro["FIM"]#100 финских марок
print(fin_euro)
fin_belg <- 50*euro["BEF"]#50 бельгийских франков
print(fin_belg)
#5.3
which (euro==sort(euro)[length(euro)])

#task6
#6.1
country<-c(rep(c("France"),5),rep(c("Italy"),5),rep(c("Spain"),5))
year <- c(rep(c("2000","2001","2002","2003","2004"),3))

