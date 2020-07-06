OneSampleProportion.Equality <-
function(alpha,beta,p,differ){
    n<-(qnorm(1-alpha/2)+qnorm(1-beta))^2*p*(1-p)/differ^2
    return(n)
}
