\name{WilliamsDesign.NIS}
\alias{WilliamsDesign.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Williams Design test for Non-inferiority/Superiority
}
\description{

H0: mu1-mu2 <= margin

Ha: mu1-mu2 >  margin

}
\usage{
WilliamsDesign.NIS(alpha, beta, sigma, sequence, delta, margin)
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
the superiority or non-inferiority margin
}
  \item{margin}{
margin=mu1-mu2
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.5.4<-WilliamsDesign.NIS(0.05,0.2,0.75^2,6,0.2,0.05)
Example.4.5.4

## The function is currently defined as
function(alpha,beta,sigma,sequence,delta,margin){
n<-(qnorm(1-alpha)+qnorm(1-beta))^2*sigma/(sequence*(delta-margin)^2)
n
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
