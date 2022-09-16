setwd("C:/Users/20530/Desktop/")
getwd()

myfun <- function(name){#用于测试数据的函数
  #读取
  data <- read.table(name,sep = '\n',header = TRUE)
  value = ts(data)
  plot(value,xlab = name,ylab = "value")
  #方差,期望
  print(name)
  varvalue = var(value)
  print(paste('varvalue =',as.character(varvalue[1,1])))
  expectvalue = mean(value)#均值
  print(paste('expectvalue =',as.character(expectvalue)))
  #密度函数
  density(value)
  plot(density(value),xlab = name)
  #概率
  court = table(value)
  prob = court/100
  plot(prob,xlab = name)
  #累计概率
  x <- seq(0.1, 50, by=0.1)
  if(name=='exp.txt'){
    plot(x, pexp(x, 1), type="l")
    #browser()
  }
  else if(name=='gamma.txt'){
    plot(x, pexp(x, 1), type="l")
  }else{
    cum <- cumsum(prob)
    plot(cum,xlab = name)
  }
  
  browser()
  return(0)
}
first = c('binom','pois','exp','gamma','hyper')
second = 'txt'
for (f in first) {
  name = paste(f,second,sep = '.')
  a = myfun(name = name)
  if(f==first[2]){
    #browser()
  }
}











