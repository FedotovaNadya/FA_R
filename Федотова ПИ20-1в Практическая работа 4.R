#LAB4

#Task1

a<-rep(3,50)
a

#Task2
b<-1:100
b

#Task3
a<-matrix(1:16, 4)
a

b<-matrix(1:16, 4, byrow = TRUE)
b

#Task4
#1,2 перед запуском скопировать нужный вектор
Data <- read.table("clipboard", h=FALSE, dec=",", sep = "\t")
W <- as.list(Data) # Объявить в R таблицу чисел Data матрицей W
W # Вывестив поле консоли значение W


#3 (перед запуском скопировать нужную матрицу)
Data <- read.table("clipboard", h=FALSE, dec=",", sep = "\t")
W <- as.matrix.data.frame(Data) # Объявить в R таблицу чисел Data матрицей W
W # Вывестив поле консоли значение W

#Task5
G<-matrix(1:10, 10, 10)+matrix(1:10, 10, 10, byrow = TRUE)
G

#Task5 version2
G<-matrix(0,10,10)
for (i in 1:10){
  for (j in 1:10){
     G[i,j]<- i+j
  }
}
G


#Task6
E<-matrix(0,40,40)

for (i in 1:40){
  for (j in 1:40){
    if (i==j)
      E[i,j]<- 1
  }
}
write.table(E,"clipboard",quote=FALSE, col.names = FALSE, row.names = FALSE, sep = "\t",dec=",")

