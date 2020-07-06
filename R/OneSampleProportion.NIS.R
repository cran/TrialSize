OneSampleProportion.NIS <-
function(alpha,beta,p,delta,differ){
    n<-(qnorm(1-alpha)+qnorm(1-beta))^2*p*(1-p)/(differ-delta)^2
    return(n)
}
