\name{WilliamsDesign.Equality}
\alias{WilliamsDesign.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
William Design test for equality
}
\description{
H0: mu1-mu2=0

Ha: not equal to 0

}
\usage{
WilliamsDesign.Equality(alpha, beta, sigma, sequence, delta)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation in crossover design

}

  \item{sequence}{
total sequence number 
}
  \item{delta}{
delta=mu2-mu1
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.5.4<-WilliamsDesign.Equality(0.05,0.2,0.75^2,6,0.2)
Example.4.5.4

## The function is currently defined as
function(alpha,beta,sigma,sequence,delta){
n<-(qnorm(1-alpha/2)+qnorm(1-beta))^2*sigma/(sequence*delta^2)
n
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line