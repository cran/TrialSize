Cox.Equality <-function(alpha,beta,loghr,p1,d){
    p2=1-p1
    n=(qnorm(1-alpha/2)+qnorm(1-beta))^2/(loghr^2*p1*p2*d)
    return(n)
}
