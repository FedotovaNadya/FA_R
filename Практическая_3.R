#LAB3

#Task1

#a
a<-c(25,6,1)
polyroot(a)
#-3+4i -3-4i

#b
b<-c(25,-8,1)
polyroot(b)
#4+3i 4-3i


#c
c<-c(-81,0,0,0,1)
polyroot(c)
#0+3i -3-0i  0-3i  3+0i

#d
d<-c(3+4i,-(3+4i),-1,1)
polyroot(d)
#1+0i -2-1i  2+1i

#e
e<-c(3,(-3+4i),-(1+4i),1)
polyroot(e)
# 0+1i 1-0i 0+3i

#Task2

#a
a<-(2+1i)^4/(3-4i)
va<-Re(a)
va#-4.68
ma<-Im(a)
ma# 1.76

#b
b<-(3-5i)*(2+5i)/(3+4i)
vb<-Re(b)
vb# 4.52
mb<-Im(b)
mb#-4.36

#Task3

finance<-c("Доходы, трлн руб.", "в % к ВВП", "Нефтегазовые, трлн руб.", "в % ко всем доходам")
y2014<-c(14.04, 19.9, 7.5, 51.9)
y2015<-c(15.08, 19.5, 7.7, 51.2)
y2016<-c(15.8, 19.0, 7.8, 50.8)
y2017<-c(16.5, 18.4, 8.34, 49.6)

budget <- data.frame(Name=finance, y2014, y2015, y2016, y2017)
budget


#Task4

recipient<-"УФК по МО (УГИБДД ГУ МВД России по Московской областни)" #получатель
INN <- "7702300872" #ИНН
KKP <- "770201001"# КПП
Recipients_bank <- "Отделение 1 МГТУ Банка России г.Москва 705" #банк получателя
account <-"40101810600000010102"  #расчетный счет
BIK  <- "044583001" #бик
KBK  <- "18811630020016000140" #кбк
OKATO  <-  "46218000000" #окато
full_name  <- "Иванов Иван Иванович" #ФИО плтаельщика
address  <- "Москва, ул. Красная площадь, д.1" #адресс плательщика
type_of_payment  <-"Административный штраф, 01258789877888"  #тип платежа
date_of_payment  <- "" #дата платежа
amount <-  1550#сумма
signature  <- "" #подпись 

receipt<-list(recipient,INN,KKP,Recipients_bank,account,BIK,KBK,OKATO,full_name,address, type_of_payment,date_of_payment,amount,signature)
receipt
library(dplyr)
glimpse(receipt)







