\name{OneSampleMean.NIS}
\alias{OneSampleMean.NIS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One Sample Mean Test for Non-Inferiority/Superiority
}
\description{
H0: margin<=delta
Ha: margin>delta

if delta >0, the rejection of Null Hypothesis indicates the true mean is superior over the reference value mu0; 

if delta <0, the rejection of the null hypothesis implies the true mean is non-inferior against the reference value mu0. 

}
\usage{
OneSampleMean.NIS(alpha, beta, sigma, margin, delta)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation

}
  \item{delta}{ the superiority or non-inferiority margin

}
  \item{margin}{
margin=xbar-mu0

the difference between the true mean response of a test xbar and a reference value mu0
}
}


\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}


\examples{
Example.3.1.4<-OneSampleMean.NIS(0.05,0.2,1,0.5,-0.5)
Example.3.1.4 # 7

}

\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
