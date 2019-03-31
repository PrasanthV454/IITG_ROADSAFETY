library(googlesheets)
be<- gs_title("small")
RajeshData<-gs_read(be)
ReqData<-data.frame(sampleNo=integer(),mux=double(),muy=double(),muz=double(),sigx=double(),sigy=double(),sigz=double())

for (i in 1:149) {
  newData<-RajeshData[c(((i-1)*10)+1:i*10),]
  muxb<-mean(newData$ax)
  muyb<-mean(newData$ay)
  muzb<-mean(newData$az)
  sigxb<-sd(newData$ax)
  sigyb<-sd(newData$ay)
  sigzb<-sd(newData$az)
  newRow<-data.frame(sampleNo=i,mux=muxb,muy=muyb,muz=muzb,sigx=sigxb,sigy=sigyb,sigz=sigzb)
  ReqData<-rbind(ReqData,newRow)
}
head(ReqData)
library(rattle)
ReqData.stand<-scale(ReqData[-1])
ReqData.stand<-na.omit(ReqData.stand)
Nowsee<-kmeans(ReqData.stand,2)
attributes(Nowsee)
Nowsee$centers
Nowsee$cluster
library(cluster)
clusplot(ReqData.stand,Nowsee$cluster,main = ' Clusters', color = TRUE, shade = TRUE, labels=2,lines=0)
