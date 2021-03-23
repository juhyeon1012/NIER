#4-2 make data frame

english<-c(90,80,60,70) #영어 점수 변수 생성
english

math<-c(50,60,100,20)
math

df_midterm<-data.frame(english,math)

class<-c(1,1,2,2)

df_midterm<-data.frame(english,math,class)
df_midterm

mean(df_midterm$math)

df_midterm<-data.frame(english=c(90,80,60,70),
                       math=c(50,60,100,20),
                       class=c(1,1,2,2))
df_midterm

