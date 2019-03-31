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

