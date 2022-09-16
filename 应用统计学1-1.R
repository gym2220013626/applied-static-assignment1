##########################生成随机数列##############################
#指数分布
a1 = rexp(100,rate=1)#第一个是个数
#二项分布
a2 = rbinom(100,5,0.5)#实验100次 每次实验抽五次 每次中的概率 0，5
#泊松分布
a3 = rpois(100,5)# 100次，lambda = 5
#伽玛分布
alpha = 1#阿尔法参数
beta = 1#贝塔参数
a4 = rgamma(100,shape=alpha,rate=beta) 
a4 = rgamma(100,shape=alpha,scale=1/beta) 
#超几何分布
#nn = 实验的次数
#m = 白球的数量
#n = 黑球的数量
#k = 抽走的球的总数（在0到m+n之间）
a5 =rhyper(nn = 100, m = 50, n = 100, k = 30)#返回每组抽中质量合格样本的个数
a = c(a1,a2,a3,a4,a5)

###########################读写数据###################################
setwd("C:/Users/20530/Desktop/")
getwd()
###########读###############
#读取txt
#data1 <- read.table('test.txt',sep = '\t',header = TRUE)
#常见空白分隔符有：空格，制表符，换行符
#sep=” ”；sep = “\t”；sep = “\n”
#data1 <- read.table('save.txt',sep = '\n',header = TRUE)
#plot(data1)
#读取csv
#data2 <- read.csv('countrylanguage.csv',TRUE)
#读取excel
#data4 <- read.xlsx('countrylanguage.xlsx',sheetIndex = 1)
###########写###############
#写csv(txt,doc,文件也可以)
#write.csv(data,file)
#write.csv(data3,'save.csv',row.names = FALSE)
#write.csv(a,'hyper.txt',row.names = FALSE)

#写excel
#write.xlsx(head(data3),'test.xlsx',row.names = FALSE)
#######################实际代码##########################################
data = data.frame(a2,a3,a1,a4,a5)
first = c('binom','pois','exp','gamma','hyper')
second = 'txt'
myfun = function(numb){
  name = paste(f[numb],second,sep = '.')
  write.csv(data[numb],name,row.names = FALSE)
}
for ( a in 1:5) {
  b = myfun(numb= a)
  if(a==2){
    #browser()
  }
}
