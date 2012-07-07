\name{QT.PK.crossover}
\alias{QT.PK.crossover}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Crossover Design in QT/QTc Studies with PK response as covariate
}
\description{
H0: mu1 -mu2 = 0

Ha: mu1 -mu2 = d 

The test is finding the treatment difference in QT interval for crossover design. d is not equal to 0, which is the difference of clinically importance. 

}
\usage{
QT.PK.crossover(alpha, beta, pho, K, delta, gamma, v1, v2, tau1, tau2)
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
  \item{gamma}{
sigma^2_p is the extra variance from the random period effect for the crossover design. gamma=sigma^2_p/sigma^2
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
Example.15.1.4.2<-QT.PK.crossover(0.05,0.2,0.8,3,0.5,0.002,1,1,4,5)
Example.15.1.4.2
# 29

## The function is currently defined as
function(alpha, beta,pho,K,delta,gamma,v1,v2,tau1,tau2){
n=(1+(v1-v2)^2/(tau1^2+tau2^2))*(pho+(1-pho)/K)*(qnorm(1-alpha/2)+qnorm(1-beta))^2/(delta^2-gamma*(qnorm(1-alpha/2)+qnorm(1-beta))^2)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line