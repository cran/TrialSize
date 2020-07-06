OneSampleProportion.Equivalence <-
function(alpha,beta,p,delta,differ){
    n<-(qnorm(1-alpha)+qnorm(1-beta/2))^2*p*(1-p)/(delta-abs(differ))^2
    return(n)
}
