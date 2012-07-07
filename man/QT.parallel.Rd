\name{QT.parallel}
\alias{QT.parallel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Parallel Group Design in QT/QTc Studies without covariates
}
\description{
H0: mu1 -mu2 = 0

Ha: mu1 -mu2 = d 

The test is finding the treatment difference in QT interval. d is not equal to 0, which is the difference of clinically importance. 

}
\usage{
QT.parallel(alpha, beta, pho, K, delta)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
    \item{alpha}{
significance level
}
  \item{beta}{
power = 1-beta
}
  \item{pho}{
pho=between subject variance sigma^2_s/(between subject variance sigma^2_s+within subject variance sigma^2_e)
}
  \item{K}{
There are K recording replicates for each subject.
}
  \item{delta}{
sigma^2=sigma^2_s+sigma^2_e.  d is the difference of clinically importance.
delta=d/sigma
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.15.1.2<-QT.parallel(0.05,0.2,0.8,3,0.5)
Example.15.1.2
# 54

## The function is currently defined as
function(alpha, beta,pho,K,delta){
n=2*(pho+(1-pho)/K)*(qnorm(1-alpha/2)+qnorm(1-beta))^2/delta^2
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
