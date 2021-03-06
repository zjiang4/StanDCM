#' @title Generate Stan code and Run the estimation for LCDM
#'
#' @description
#' The StanLCDM.script Function to automate Stan code geneartion for LCDMs with binary resposnes
#'
#' @param Qmatrix the Q-matrix specified for the LCDM
#' @param savepath save the .stan file to somewhere; the default path is getwd()
#' @param savename name the .stan
#' @return a. stan file saved at the specified path
#'
#' @author {Zhehan Jiang, University of Alabama, \email{zjiang17@@ua.edu}}
#'
#' @export
#loading needed packages
#load("D:\\Dropbox\\Stan\\R\\data.RData") ;Qmatrix<-cbind(Qmatrix,rep(1,9));Qmatrix[1,1]<-0

StanPrior.update<-function(priorUpdate.matrix,script.path,save.path=getwd(),save.name=NA){
  Install.package("plyr")
  Install.package('stringr')
  options(warn=-1)
  if(is.na(save.name)){
    saveUpdate.name=paste(format(Sys.time(), "%a%b%Y"),'_priorUpdate.stan',sep='')}else{
      saveUpdate.name=paste(paste(save.name,sep='/'),'.stan',sep='')
    }
  readStan.script<- readLines(script.path)
for(i in 1:nrow(priorUpdate.matrix)){
  beReplaced<-readStan.script[str_detect(str_remove_all(str_remove_all(readStan.script," "),";"),priorUpdate.matrix[i,1])][grep("~",readStan.script[str_detect(str_remove_all(str_remove_all(readStan.script," "),";"),priorUpdate.matrix[i,1])])
  ]
  beReplaced<-str_remove_all(str_remove_all(beReplaced," "),";")
  
  readStan.script[which(str_remove_all(str_remove_all(readStan.script," "),";")==beReplaced)]<-paste("   ",
                                                                                                    paste(priorUpdate.matrix[i,1],priorUpdate.matrix[i,2],sep="~")  ,
                                                                                                                  ';//UpdatedPrior ')
}
  options(warn=0)
  filename = paste(paste(save.path,saveUpdate.name,sep='/'),sep='')
  writeLines(readStan.script,filename)
}