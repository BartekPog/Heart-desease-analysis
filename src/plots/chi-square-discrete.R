##test:

generateChiSqTest<-function(data){
    chisq.test(data$cp, data$diag, correct = FALSE, simulate.p.value = TRUE)
    ## We use simulate.p.value, because of small count of elements
}