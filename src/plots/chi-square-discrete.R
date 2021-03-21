##As r function
chisq.test(dataRClean$cp, dataRClean[,14], correct = TRUE,
           p = rep(1/length(dataRClean[,3]), length(dataRClean[,3])), rescale.p = FALSE,
           simulate.p.value = FALSE, B = 2)







## tabela kontygencji ---













## counted by me:

length(dataClean$cp)
length(which(dataClean$cp=="typical-angina"))
length(which(dataClean$cp=="asymptomatic"))
length(which(dataClean$cp=="atypical-angina"))
length(which(dataClean$cp=="non-anginal-pain"))


length(which(dataClean$diag==0))
length(which(dataClean$diag==1))
length(which(dataClean$diag==2))
length(which(dataClean$diag==3))

x<-as.numeric(dataRClean$cp)
y<-as.numeric(dataClean$diag)
t.test(x, y, method="pearson")



length(which(dataClean$cp=="typical-angina" & dataClean$diag==3))

length(which(dataClean$cp=="asymptomatic" & dataClean$diag==4))

length(which(dataClean$cp=="atypical-angina" & dataClean$diag==4))

length(which(dataClean$cp=="non-anginal-pain" & dataClean$diag==4))
