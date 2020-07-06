Cox.Equivalence <-function(alpha,beta,loghr,p1,d,delta){
    p2=1-p1
    n=(qnorm(1-alpha)+qnorm(1-beta/2))^2/((delta-abs(loghr))^2*p1*p2*d)
    return(n)
}
