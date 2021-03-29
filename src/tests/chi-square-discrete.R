##test:

generateChiSqTest<-function(data){
  sink(file="images/chiSq-cp-diag.txt")
    chisq.test(data$cp, data$diag, correct = FALSE, simulate.p.value = TRUE)
    ## We use simulate.p.value, because of small count of elements
    ## df = NA because we simulate values.
  sink(file=NULL)
}