\name{QT.PK.parallel}
\alias{QT.PK.parallel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Parallel Group Design in QT/QTc Studies with PK response as covariate
}
\description{
H0: mu1 -mu2 = 0

Ha: mu1 -mu2 = d 

The test is finding the treatment difference in QT interval. d is not equal to 0, which is the difference of clinically importance. 

}
\usage{
QT.PK.parallel(alpha, beta, pho, K, delta, v1, v2, tau1, tau2)
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
sigma^2=sigma^2_s+sigma^2_e . d is the difference of clinically importance. delta=d/sigma
}
  \item{v1}{
sample mean for group 1
}
  \item{v2}{
sample mean for group 2
}
  \item{tau1}{
sample variance for group 1
}
  \item{tau2}{
sample variance for group 2

}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{

Example.15.1.4.1<-QT.PK.parallel(0.05,0.2,0.8,3,0.5,1,1,4,5)
Example.15.1.4.1
# 54

## The function is currently defined as
function(alpha, beta,pho,K,delta,v1,v2,tau1,tau2){
n=(2+(v1-v2)^2/(tau1^2+tau2^2))*(pho+(1-pho)/K)*(qnorm(1-alpha/2)+qnorm(1-beta))^2/delta^2
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
