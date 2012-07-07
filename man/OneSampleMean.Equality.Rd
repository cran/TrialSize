\name{OneSampleMean.Equality}
\alias{OneSampleMean.Equality}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
One Sample Mean Test for Equality
}
\description{
H0: margin is equal to 0
Ha: margin is not equal to 0

The test is finding whether there is a difference between the mean response of the test xbar and the reference value mu0

}
\usage{
OneSampleMean.Equality(alpha, beta, sigma, margin)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{alpha}{ significance level

}
  \item{beta}{ power = 1-beta

}
  \item{sigma}{ standard deviation

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
Example.3.1.4<-OneSampleMean.Equality(0.05,0.2,1,0.5)
Example.3.1.4  # 32
}
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
