\name{Sensitivity.Index}
\alias{Sensitivity.Index}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the power for Sensitivity Index
}
\description{

H0: mu1 = mu2 

Ha: mu1 is not equal to mu2  

The test is finding the treatment difference in QT interval. 

d is not equal to 0, which is the difference of clinically importance. 




}
\usage{
Sensitivity.Index(alpha, n, deltaT)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{
significance level
}
  \item{n}{
sample size n
}
  \item{deltaT}{
a measure of change in the signal-to-noise ratio for the population difference, which is the sensitivity index of population difference between regions. 
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.15.5.1<-Sensitivity.Index(0.05,30,2.92)
Example.15.5.1
# power=0.805

## The function is currently defined as
function(alpha,n,deltaT){
t=qt(1-alpha/2,n-2)
p=1-pt(t,n-2,deltaT)+pt(-t,n-2,deltaT)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
