\name{OneSampleProportion.Equivalence}
\alias{OneSampleProportion.Equivalence}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One sample proportion test for equivalence
}
\description{
H0: |p-p0| >= margin

Ha: |p-p0| < margin

The proportion of response is equivalent to the reference p0 is the null hypothesis is rejected}
\usage{
OneSampleProportion.Equivalence(alpha, beta, p, delta, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{p}{
the true response rate
}

  \item{delta}{
delta=p-p0

the difference between the true response rate of a test drug and a reference value p0
}
  \item{margin}{
the superiority or non-inferiority margin
}
}

\references{
Chow SC, Shao J, Wang H. Sample Size Calculation in Clinical Research. New York: Marcel Dekker, 2003
}

\examples{
Example.4.1.4<-OneSampleProportion.Equivalence(0.05,0.2,0.6,0.05,.2)
Example.4.1.4

## The function is currently defined as
function(alpha,beta,p,delta,margin){
n<-(qnorm(1-alpha)+qnorm(1-beta/2))^2*p*(1-p)/(margin-abs(delta))^2
n
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
