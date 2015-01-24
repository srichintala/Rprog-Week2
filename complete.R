complete<-function(directory,id=1:332){
  directory<-"K:/Data-Science/specdata/"
  setwd(directory)
  tot_files<-dir()
  tot_data<-data.frame()
  for(i in id)
  {
    buf<-read.csv(tot_files[i])
    tot_cases<-complete.cases(buf)
    buf1<-buf[tot_cases,]
    p<-c(i,nrow(buf1))
    tot_data<-rbind(tot_data,p)
  }
  setwd("K:/Data-Science/specdata/")
  names(tot_data)<-c("id","nobs")
  tot_data
}