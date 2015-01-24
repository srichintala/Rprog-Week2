
pollutantmean<-function(directory,pollutant,id=1:332){
  directory<-"K:/Data-Science/specdata/"
  setwd("K:/Data-Science/specdata/")
  tot_files<-dir()
  tot_data<-data.frame()
  for(i in id)
  {
    tot_data<-rbind(tot_data,read.csv(tot_files[i]))
  }
  mean<-mean(tot_data[,pollutant],na.rm=TRUE)
  setwd("K:/Data-Science/specdata/")
  mean
}