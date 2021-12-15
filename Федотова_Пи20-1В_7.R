#Task 7
#install.packages("readxl")
#install.packages("WriteXLS")

#library(tidyverse)
#library(readxl)

#library(WriteXLS)


#Task7.1
check_id <- function(work_name){
  #1.	Принимает на вход название рабочей папки или путь к ней, делает указанную папку рабочей. 
  setwd(work_name)
  #4.	Создаёт датафрейм с двумя столбцами:
  df<-data.frame(filename=c(), type=c())
  #2.	Открывает все CSV-файлы в рабочей папке. Считайте, что в папке также могут быть файлы других форматов. 
  files <- list.files()
  for (f in list.files()) {
      if (grepl("\\.csv",f)==1){
        print(f)
        dat<-read.csv(f)
        num<-length(df$filename)+1

        print(data.frame(filename=c(f), type=c(1)))
        res_id<-c(0)
        #3.	Проверяет, есть ли среди столбцов столбец с названием ID.
        for (col in colnames(dat)){
          if ("ID"==col){
            res_id[1]<-1
          }
        }
        df<-rbind(df, data.frame(filename=c(f), type=res_id))
      }
  }  
  
  #5.	Выгружает в файл info.xlsx датафрейм с полученной в пункте выше информацией.
  write_xlsx(df, "info.xlsx")
  print(df)
   
  
}

check_id("C:/Users/Asus/Documents/FA_R")

#Task7.2
## Выгрузите в формат CSV встроенный в R датафрейм InsectSprays, назвав файл Insects.csv.
write.csv(InsectSprays, "Insects.csv")
#1. Загрузите в R данные по пассажирам «Титаника» из файла titanic_small.csv.
tit<-read.csv("titanic_small.csv")
tit
#2. Переименуйте столбцы таким образом, чтобы названия стали следующими: ID, gender, class, price. Подсказка: используйте функцию colnames().
colnames(tit) <- c("X", "ID", "gender", "class", "price")
tit
#3. Выгрузите обновленный файл в формате Excel с расширением .xlsx. 
write_xlsx(tit, "titanic_smal.xlsx")


#Task3
#Задача 3. 
#Загрузите в R данные из файла data.txt. Выведите на экран структуру полученного датафрейма. 
datatxt<-read.table("data.txt")
datatxt

#Загрузите в R данные из файла prices.txt, считая, что в качестве разделителя столбцов используется символ для табуляции, а также учитывая, что названий столбцов в этом файле нет (первая строка – уже сами данные). 
pricestxt<-read.table("prices.txt", header = FALSE, sep = "\t")
pricestxt


#Работа с Датафреймами

#Task1

v1 <- c(1, 2.5, "organic")
v2 <- c(2, 1.5, "organic")
v3 <- c(3, 0.9, "conventional") 
test <-data.frame(v1, v2, v3)
test

#Task2

trans.test <- as.data.frame(t(test))
trans.test
#Task3 ????
typeof(trans.test["V1"])
typeof(trans.test["V2"])
typeof(trans.test["V3"])

#Task4
polit<-read.csv("polit.csv")
polit

#Task5
View(polit)
summary(polit)
#Task6
colnames(polit) <- c("CNT","CPI", "FH")

#Task7
olme<-read.csv("Olympic-medals.csv")
View(olme)
summary(olme)

#Task8
swim_new=1
swim_new<-olme[(olme$Discipline=="Swimming") & (olme$Year>2000), ]
View(swim_new)

#Task9
swim_new$Sport <- NULL
swim_new$Country_Code <- NULL
View(swim_new)

#Task10
swim_new <- cbind(swim_new, Male = +(swim_new$Gender=="Men"))
View(swim_new)
