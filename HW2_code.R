> data <- scan("desktop/HW2/Data/AMZN_.csv", what='c',sep=',',skip=1,nlines=1)
Read 84 items
> open <- as.numeric(c(data[2:84]))
> data <- scan("desktop/HW2/Data/AMZN_.csv", what='c',sep=',',skip=2,nlines=1)
Read 84 items
> high <- as.numeric(c(data[2:84]))
> data <- scan("desktop/HW2/Data/AMZN_.csv", what='c',sep=',',skip=3,nlines=1)
Read 84 items
> low <- as.numeric(c(data[2:84]))
> data <- scan("desktop/HW2/Data/AMZN_.csv", what='c',sep=',',skip=4,nlines=1)
Read 84 items
> close <- as.numeric(c(data[2:84]))
> data <- scan("desktop/HW2/Data/AMZN_.csv", what='c',sep=',',skip=5,nlines=1)
Read 84 items
> adj_close <- as.numeric(c(data[2:84]))
> data <- scan("desktop/HW2/Data/AMZN_.csv", what='c',sep=',',skip=6,nlines=1)
Read 84 items
> volume <- as.numeric(c(data[2:84]))
> data <- scan("desktop/HW2/Data/New_cases_and_deaths_globally.csv", what='c',sep=',',skip=3,nlines=1)
Read 86 items
> new_cases <- as.numeric(c(data[4:86]))
> data <- scan("desktop/HW2/Data/New_cases_and_deaths_globally.csv", what='c',sep=',',skip=10,nlines=1)
Read 86 items
> new_deaths <- as.numeric(c(data[4:86]))
> 
> 
> hv<-data.frame(new_cases=c(cor(open,new_cases),cor(high,new_cases),cor(low,new_cases),cor(close,new_cases),cor(adj_close,new_cases),cor(volume,new_cases)),new_deaths=c(cor(open,new_deaths),cor(high,new_deaths),cor(low,new_deaths),cor(close,new_deaths),cor(adj_close,new_deaths),cor(volume,new_deaths)),row.names=c("open","high","low","close","adj_close","volume"))
> x <- as.matrix(hv)
> library("pheatmap")
> color=colorRampPalette(c("navy","white","firebrick3"))(50)
> pdf("desktop/HW2/heatmap_amzn_covid19.pdf")
> plot(new_cases,open,type = "p",xlim=c(0,150000),ylim=c(1500,2500),pch=20)
> title("scatter plot and heatmap of Amazon's prizes and data of covid19")
> plot(new_cases,high,type = "p",xlim=c(0,150000),ylim=c(1500,2500),pch=20)
> plot(new_cases,low,type = "p",xlim=c(0,150000),ylim=c(1500,2500),pch=20)
> plot(new_cases,close,type = "p",xlim=c(0,150000),ylim=c(1500,2500),pch=20)
> plot(new_cases,adj_close,type = "p",xlim=c(0,150000),ylim=c(1500,2500),pch=20)
> plot(new_cases,volume,type = "p",xlim=c(0,150000),ylim=c(0,15000000),pch=20)
> plot(new_deaths,open,type = "p",xlim=c(0,1000),ylim=c(1500,2500),pch=20)
> plot(new_deaths,high,type = "p",xlim=c(0,1000),ylim=c(1500,2500),pch=20)
> plot(new_deaths,low,type = "p",xlim=c(0,1000),ylim=c(1500,2500),pch=20)
> plot(new_deaths,close,type = "p",xlim=c(0,1000),ylim=c(1500,2500),pch=20)
> plot(new_deaths,adj_close,type = "p",xlim=c(0,1000),ylim=c(1500,2500),pch=20)
> plot(new_deaths,volume,type = "p",xlim=c(0,1000),ylim=c(0,15000000),pch=20)
> pheatmap(x, scale ="column" ,color=color, border="gray")
> dev.off()
null device 
          1 
> 