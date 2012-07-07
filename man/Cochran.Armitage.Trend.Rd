\name{Cochran.Armitage.Trend}
\alias{Cochran.Armitage.Trend}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Cochran-Armitage's Test for Trend
}
\description{
H0: p0=p1=p2=...=pK

Ha:  p0 <= p1 <= p2 <=...<= pK with p0 < pK

}
\usage{
Cochran.Armitage.Trend(alpha, beta, pi, di, ni, delta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{pi}{
pi is the response rate in ith group.
}
  \item{di}{
di is the dose level
}
  \item{ni}{
ni is the sample size for group i
}
  \item{delta}{
delta is the clinically meaningful minimal difference
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.11.5<-Cochran.Armitage.Trend(alpha=0.05, beta=0.2,pi=c(0.1,0.3,0.5,0.7),di=c(1,2,3,4),ni=c(10,10,10,10),delta=1)
Example.11.5
# 7.5 for one group. Total 28-32. 

## The function is currently defined as
function(alpha, beta,pi,di,ni,delta){
xi=ni*pi
N=sum(ni)
qi=1-pi
p=sum(ni*pi)/N
q=1-p
ri=ni/ni[1]
dmean=sum(ni*di)/sum(ni)
A=sum(ri*pi*(di-dmean))
n0_star=(qnorm(1-alpha)*sqrt(p*q*sum(ri*(di-dmean)^2))+qnorm(1-beta)*sqrt(sum(pi*qi*ri*(di-dmean)^2)))^2/A^2
n=n0_star*(1+sqrt(1+2*delta/(A*n0_star)))^2/4
return(n)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line