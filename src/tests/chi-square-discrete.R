##test:

generateChiSqTest<-function(data){
  sink(file="images/chiSq-cp-diag.txt")
    ## Test 1 - raw data:
    chisq.test(data$cp, data$diag, correct = FALSE, simulate.p.value = FALSE)

    ##Test 2 - simulation:
    chisq.test(data$cp, data$diag, correct = FALSE, simulate.p.value = TRUE)
    ## We use simulate.p.value, because of small count of elements
    ## df = NA because we simulate values.
  sink(file=NULL)
}